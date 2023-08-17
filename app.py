import os
from flask import Flask, render_template, redirect, url_for, request
import db
import random
from flask import jsonify

app = Flask(__name__)

app.config.from_mapping(
	SECRET_KEY='secret_key_just_for_dev_environment',
	DATABASE=os.path.join(app.instance_path, 'quizrush.sqlite')
)

app.cli.add_command(db.init_db)
app.teardown_appcontext(db.close_db_con)

@app.route('/')
def index():
    return render_template('home.html')


def random10q(upper_limit):
    random_numbers=[]
    i=0
    while i <10:
        number = random.randint(1, upper_limit)
        if number not in random_numbers:
            random_numbers.append(number)
            i=i+1
        else: continue
    return random_numbers

def random10q_category(category):
    random10q_c=[]
    c_ids=category_ids(category)
    while len(random10q_c)<10:
        random.shuffle(c_ids)
        number=c_ids[len(random10q_c)]
        if number not in random10q_c:
            random10q_c.append(number)
        else: continue
    return random10q_c

def category_ids(category):
        category_ids=[]
        i=1
        while i<(count_category_entries(category)+1):
            db_con = db.get_db_con()
            sql_query_category =    (
                                'SELECT question_id FROM' 
                                '(SELECT ROW_NUMBER()OVER(ORDER BY question_id)AS row_num, question_id' 
                                ' FROM questions JOIN category USING (question_id) '
                                f' WHERE category_name = "{category}")' 
                                f' WHERE row_num = {i}'
            )
            category_ids.append(db_con.execute(sql_query_category).fetchone()[0])
            i=i+1
        return category_ids    

@app.route('/registrierung/')
def registrierung():
    return render_template('registrierung.html')


@app.route('/quiz1/')
def get_quiz():
    db_con = db.get_db_con()
    sql_query = 'SELECT COUNT(question) from questions'
    question_count = db_con.execute(sql_query).fetchone()
    count = question_count[0]
    global random_numbers
    random_numbers=[]
    random_numbers=random10q(count) 
    global q_count 
    q_count = 0
    global score
    score = 0  
    sql_query = f'SELECT question, answer1, answer2, answer3, answer4 FROM questions WHERE question_id = {random_numbers[0]}'
    result = db_con.execute(sql_query).fetchone()
    question = result[0]
    answers = list(result[1:])
    random.shuffle(answers)
    return render_template('quiz1.html', question=question, answers=answers, score = score) 

@app.route('/quiz2/')
def get_quiz2():
    global q_count
    q_count = 0
    global score
    score = 0
    global random_numbers
    random_numbers=random10q_category('proverbs')
    result = search_by_id(random_numbers[q_count])
    question = result[0]
    answers = list(result[1:])
    random.shuffle(answers)
    #correct_answer = result[1]  
    return render_template('quiz2.html', question=question, answers=answers, score=score)

@app.route('/quiz3/')
def get_quiz3():
    global random_numbers
    random_numbers = []
    random_numbers=random10q(count_category_entries('sport')) 
    global q_count
    q_count = 0
    global score
    score = 0
    result = search_by_category('sport',1)#has to start at 1 because of how the subquery works
    question = result[0]
    answers = list(result[1:])
    random.shuffle(answers)  
    return render_template('quiz3.html', question=question, answers=answers, score=score)


@app.route('/score')
def show_score():
    global score
    return render_template('score.html', score=score)

#testing some db interaction
@app.route('/db/')
def get_questions():
    db_con = db.get_db_con()
    sql_query = 'SELECT COUNT(question) from questions'
    question_count = db_con.execute(sql_query).fetchone()
    count=question_count[0]
    i=0
    random_numbers=[]
    r_questions=[]
    while i <11:
        number = random.randint(1, count)
        if number not in random_numbers:
            random_numbers.append(number)
            i=i+1
        else: continue
    j=0
    while j <10:
        sql_query1 = f'SELECT question FROM questions WHERE question_id = {random_numbers[j]}'
        question_query = db_con.execute(sql_query1).fetchone()
        question = question_query[0]
        r_questions.append(question)
        j=j+1
        
    sql_query2 = 'SELECT answer1, answer2, answer3, answer4 FROM questions WHERE question_id = 2'
    result = db_con.execute(sql_query2).fetchone()
    solution=result[0]
    answers = []
    x=0
    while x<4:   
        answers.append(result[x])
        x+=1
    random.shuffle(answers)

    #Searching by category
    category= "'proverbs'"
    sql_query_cat_count = f'SELECT COUNT(category_id) FROM category WHERE category_name = {category}'
    cat_q_count = db_con.execute(sql_query_cat_count).fetchone()[0]
    random_numbers=random10q(cat_q_count)
    #cat_q_count=question_count[0]
    y=1
    cat_qs=[]
    while y < (cat_q_count+1):
        #x="'"+str(y)+"'"
        sql_query_category =    (
                                'SELECT question, answer1, answer2, answer3, answer4 FROM' 
                                '(SELECT ROW_NUMBER()OVER(ORDER BY question_id)AS row_num, question, answer1, answer2, answer3, answer4' 
                                ' FROM questions JOIN category USING (question_id) '
                                f' WHERE category_name = {category})' 
                                f' WHERE row_num = {y}'
        )
        query = db_con.execute(sql_query_category).fetchone()
        cat_q=query[0]
        cat_qs.append(cat_q)
        y=y+1
    xxx=count_category_entries('proverbs')
    return f'S:{solution} A:{answers} Count:{xxx} Question:{cat_qs}'
    #return f'Count:{count} Random Numbers:{random_numbers} Random Questions:{r_questions} Solution: {solution} Answers:{answers}'

@app.route('/db2/')
def db2():#testing db interaction
    y=count_category_entries('geography')
    z=random10q(y)
    result=search_by_category('geography',z[1])
    question=result[0]
    answers=list(result[1:])
    random.shuffle(answers)
    return f'Question:{question};Answers:{answers}; entries:{y}; rn:{z}'

@app.route('/db3')
def db3():
    q_count=0
    category='proverbs'
    ids=category_ids(category)
    #random.shuffle(ids)
    c_ids=random10q_category('proverbs')
    result = search_by_id(c_ids[q_count])
    question = result[0]
    answers = list(result[1:])
    random.shuffle(answers)
    return f'ids:{ids} Question:{question}, Answers:{answers}'


def count_category_entries(category):
    category="'"+str(category)+"'"
    db_con = db.get_db_con()
    sql_query_cat_count = f'SELECT COUNT(category_id) FROM category WHERE category_name = {category}'
    return db_con.execute(sql_query_cat_count).fetchone()[0]
    

def search_by_category(category, number):
    category="'"+str(category)+"'"
    db_con = db.get_db_con()
    sql_query_category =    (
                                'SELECT question, answer1, answer2, answer3, answer4 FROM' 
                                '(SELECT ROW_NUMBER()OVER(ORDER BY question_id)AS row_num, question, answer1, answer2, answer3, answer4' 
                                ' FROM questions JOIN category USING (question_id) '
                                f' WHERE category_name = {category})' 
                                f' WHERE row_num = {number}'
        )
    return db_con.execute(sql_query_category).fetchone()
    
def search_by_id(question_id):
    db_con = db.get_db_con()
    query= f'SELECT question, answer1, answer2, answer3, answer4 FROM questions WHERE question_id = {question_id}'   
    return db_con.execute(query).fetchone()
    

#adding data to database
@app.route('/insert/data')
def run_insert_data():
    db.insert_data()
    return 'Database flushed and populated with some sample data.'
#adding table to database
@app.route('/insert/table')
def run_insert_table():
    db.insert_table()
#add user
@app.route('/add_user', methods=['POST'])
def add_user():
    user = request.form.get('username')
    password = request.form.get('password')

    db_con = db.get_db_con()
    check_query = f'SELECT COUNT(*) FROM users WHERE user = ?'
    result = db_con.execute(check_query, (user,)).fetchone()

    if result[0] > 0:
        return 'Username allready exist'

    insert_user_info = f'INSERT INTO users (user, password) VALUES (?, ?);'
    db_con.execute(insert_user_info, (user, password))
    db_con.commit()
    return 'Registration successful'


@app.route('/check_credentials')
def check_credentials():
    username = request.args.get('username')
    password = request.args.get('password')
    db_con = db.get_db_con()
    query = f'SELECT COUNT(*) FROM users WHERE user = ? AND password = ?'
    result = db_con.execute(query, (username, password)).fetchone()
    valid = result[0] > 0
    return jsonify({'valid': valid})


@app.route('/check_answer', methods=['POST'])
def check_answer():
    global score
    selected_answer = request.form['answer']
    db_con = db.get_db_con()
    sql_query = f'SELECT answer1 FROM questions WHERE question_id = {random_numbers[q_count]}'
    correct_answer = db_con.execute(sql_query).fetchone()[0]
    is_correct = selected_answer == correct_answer
    if is_correct:
        score += 1
    return jsonify({'isCorrect': is_correct, 'score': score})

    
@app.route('/next_question')
def next_question():
    global q_count
    q_count = q_count + 1
    db_con = db.get_db_con()
    sql_query = f'SELECT question, answer1, answer2, answer3, answer4 FROM questions WHERE question_id = {random_numbers[q_count]}'
    result = db_con.execute(sql_query).fetchone()
    question = result[0]
    answers = list(result[1:])
    random.shuffle(answers)
    is_quiz_finished = False
    if q_count >= 8:  # Wenn die letzte Frage erreicht ist
        is_quiz_finished = True
    return jsonify({'question': question, 'answers': answers, 'isQuizFinished': is_quiz_finished})

@app.route('/api/score', methods=['GET'])
def get_score():
    global score
    return jsonify({'score': score})





