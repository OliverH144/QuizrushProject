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

@app.route('/quiz1/')
def get_quiz():
    db_con = db.get_db_con()
    sql_query = 'SELECT COUNT(question) from questions'
    question_count = db_con.execute(sql_query).fetchone()
    count=question_count[0]
    global random_numbers
    random_numbers=[] 
    global q_count 
    q_count = 0  
    i=0
    while i <10:
        number = random.randint(1, count)
        if number not in random_numbers:
            random_numbers.append(number)
            i=i+1
        else: continue
    sql_query = f'SELECT question, answer1, answer2, answer3, answer4 FROM questions WHERE question_id = {random_numbers[0]}'
    result = db_con.execute(sql_query).fetchone()
    question = result[0]
    answers = list(result[1:])
    random.shuffle(answers)
    correct_answer = result[1]  # Annahme: Die erste Antwort (answer1) ist die richtige Antwort
    return render_template('quiz1.html', question=question, answers=answers, correct_answer=correct_answer) 


@app.route('/quiz2/')
def get_quiz2():
    return render_template('quiz2.html')

@app.route('/quiz3/')
def get_quiz3():
    return render_template('quiz3.html')

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
    while i <10:
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
    return f'S:{solution} A:{answers}'
    #return f'Count:{count} Random Numbers:{random_numbers} Random Questions:{r_questions} Solution: {solution} Answers:{answers}'
    

#adding data to database
@app.route('/insert/data')
def run_insert_data():
    db.insert_data()
    return 'Database flushed and populated with some sample data.'


@app.route('/check_answer', methods=['POST'])
def check_answer():
    selected_answer = request.form['answer']
    db_con = db.get_db_con()
    sql_query = f'SELECT answer1 FROM questions WHERE question_id = {random_numbers[q_count]}'
    correct_answer = db_con.execute(sql_query).fetchone()[0]
    is_correct = selected_answer == correct_answer
    return jsonify({'isCorrect': is_correct})
    
@app.route('/next_question')
def next_question():
    global q_count
    q_count=q_count+1
    if q_count>8:
        return render_template('index')
    db_con = db.get_db_con()
    #sql_query = 'SELECT question, answer1, answer2, answer3, answer4 FROM questions ORDER BY RANDOM() LIMIT 1'
    sql_query = f'SELECT question, answer1, answer2, answer3, answer4 FROM questions WHERE question_id = {random_numbers[q_count]}'
    result = db_con.execute(sql_query).fetchone()
    question = result[0]
    answers = list(result[1:])
    random.shuffle(answers)
    return jsonify({'question': question, 'answers': answers})