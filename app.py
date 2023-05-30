import os
from flask import Flask, render_template, redirect, url_for, request
#import db

app = Flask(__name__)

app.config.from_mapping(
	SECRET_KEY='secret_key_just_for_dev_environment',
	DATABASE=os.path.join(app.instance_path, 'todos.sqlite')
)

#app.cli.add_command(db.init_db)
#app.teardown_appcontext(db.close_db_con)

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

#@app.route('/answer/', methods=['GET'])  # Notice the 'methods' argument
#def answer():
#    if request.method == 'GET':
#        pass  # Code to query database for all to-dos not yet implemented
#        #return render_template('todos.html')  # We assume this template exists