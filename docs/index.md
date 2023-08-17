---
title: Quizrush
nav_order: 0
---
# Quizrush

Testing your knowledge with fast paced and timed questions.

## Team members
Peer Schüßler<br>
Oliver Hartmann

## Value Proposition

Quizrush aims to entertain to people of all ages with engaging quizzes but especially targets people who enjoy the fast paced nature of modern media and its short form content. The timed nature of Quizrush aims to challenge the user and give a unique feeling of satisfaction and accomplishment.

## App Structure

The HTML structure is the basic framework of the quiz page. This is where the various sections, elements and content are defined. The CSS file takes care of the styling and layout of the quiz page. The JavaScript file enables the interactions on the page, such as showing and hiding forms, loading quiz questions and score tracking. The App.py provides the connection to the database and the HTML section.

## App Behavior

The quiz page allows users to interactively take a quiz by choosing from seven different categories. They have the option to log in or register to access the quiz. After selecting a category, they start the quiz by answering a series of questions. The questions are tailored to the selected category, and users select the correct answer from the options provided. After completing the quiz, the score page displays the total score based on the number of correct answers. Users then have the option to start the quiz again with a different category or exit the page. Visual feedback for correct and incorrect answers are displayed during the quiz process

## Data Model

The planned Data Model so far consists of multiple tables of which the one for questions is most important for the Quizrush mode. This table will consist of an unique question_id, the questions themselves and their answers, of which answer1 will always be the correct one. The display of the questions will obviously be randomized because of this.<br> <br>A second "category" table is planned for the optional feature of choosing a specific category of questions.<br>

The commands to create these tables are planned like this:

CREATE TABLE questions( <br>
	question_id INTEGER PRIMARY KEY AUTOINCREMENT, <br>
	question VARCHAR(140), <br>
	answer1 VARCHAR(20), <br>
	answer2 VARCHAR(20), <br>
	answer3 VARCHAR(20), <br>
	answer4 VARCHAR(20)
);

CREATE TABLE category( <br>
	category_id INTEGER PRIMARY KEY AUTOINCREMENT, <br>
	category_name VARCHAR(30), <br>
	question_id INTEGER, <br>
	CONSTRAINT FK_question_id FOREIGN KEY(question_id) <br> REFERENCES questions(question_id)
);

## API Reference


## Design Decisions

The core visual design decisions will most likely be how we display the questions and answers and how we will display the buttons that let the user navigate our application.

An important design decision we made is to achieve displaying the new questions and answers without having the user load a new a page  and instead changing the content of the current page with appropriate methods.

## User Evaluation

## Goals
- planned:<br>
  - Establishing and Integrating the DB<br>
  - Completing the core gameplay functions
  - visually pleasing design
  - enabling users to choose from categories
  - (user login)
  - API 
  - Integrating the the score to the DB
- achieved:<br>
  - Establishing and Integrating the DB<br>
  - Completing the core gameplay functions
  - visually pleasing design not complete
  - enabling users to choose from categories
  - user login
  - API
-  missed:<br>
  - Integrating the the score to the DB
  - visually pleasing design not complete


## Individual contribution

