import os
from flask import Flask, render_template, redirect, url_for, request
import db
import random

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
    return render_template('quiz1.html')

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
    #vlt random.shuffle(list) nutzen
    return f'Count:{count} Random Numbers:{random_numbers} Random Questions:{r_questions}'


#@app.route('/answer/', methods=['GET'])  # Notice the 'methods' argument
#def answer():
#    if request.method == 'GET':
#        pass  # Code to query database for all to-dos not yet implemented
#        #return render_template('todos.html')  # We assume this template exists

#adding data to database
@app.route('/insert/data')
def run_insert_data():
    db.insert_data()
    return 'Database flushed and populated with some sample data.'


# [...]
