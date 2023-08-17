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

The HTML structure is the basic framework of the quiz page. This is where the various sections, elements and content are defined. The CSS file takes care of the styling and layout of the quiz page. The JavaScript file enables the interactions on the page, such as showing and hiding forms, loading quiz questions and score tracking. The app.py provides the connection to the database and the HTML section. The database stores the questions, answers and which category they belong to, which is necessary for the quiz.

## App Behavior

The quiz page allows users to interactively take a quiz by choosing from seven different categories. They have the option to log in or register to access the quiz. After selecting a category, they start the quiz by answering a series of questions. The questions are tailored to the selected category, and users select the correct answer from the options provided. After completing the quiz, the score page displays the total score based on the number of correct answers. Users then have the option to start the quiz again with a different category or exit the page. Visual feedback for correct and incorrect answers are displayed during the quiz process

## Data Model

The Data Model currently consists of the tables "questions", "category" and "users".

The table "questions" hosts the questions and their respective answers which are essential for the quiz. Each question has a unique question_id that serves as primary key and is created via auto increment. Internally the first answer(answer1) has to be the correct one for the functions that use this table to work properly.

In the table "category" the varying questions are assigned to their respective category using their question_id which acts as foreign key to the table "questions".

The table "users" simply hosts the usernames of the users in the element "user" and their passwords in the element "password".

<table>
	<tr>
		<th colspan="3">questions</th>
		</tr>
		<tr>
			<td>question_id</td>
			<td>INTEGER</td>
			<td>PK</td>
		</tr>
		<tr>
			<td>question</td>
			<td>VARCHAR(140)</td>
			<td></td>
		</tr>
		<tr>
			<td>answer1</td>
			<td>VARCHAR(20)</td>
			<td></td>
		</tr>
		<tr>
			<td>answer2</td>
			<td>VARCHAR(20)</td>
			<td></td>
		</tr>
		<tr>
			<td>answer3</td>
			<td>VARCHAR(20)</td>
			<td></td>
		</tr>
		<tr>
			<td>answer4</td>
			<td>VARCHAR(20)</td>
			<td></td>
		</tr>
	</table>

	
<table>
	<tr>
		<th colspan="3">category</th>
		</tr>
		<tr>
			<td>category_id</td>
			<td>INTEGER</td>
			<td>PK</td>
		</tr>
		<tr>
			<td>category_name</td>
			<td>VARCHAR(30)</td>
			<td></td>
		</tr>
		<tr>
			<td>question_id</td>
			<td>integer</td>
			<td>FK</td>
		</tr>
	</table>

<table>
	<tr>
		<th colspan="3">questions</th>
	</tr>
		<tr>
			<td>user</td>
			<td>VARCHAR(16)
			<td>PK</td>
		</tr>
		<tr>
			<td>password</td>
			<td>VARCHAR(20)
			<td></td>
		</tr>
</table>
			

## API Reference


## Design Decisions

#### Key Design Decision 1 :
	Displaying of new questions and answers

Option 1: Loading of a new site

	+ easy (no new knowledge would have been required)
	- not visually appealing and not in line with current standards

Option 2: Changing the content of the visual elements

	+ visually appealing -> better user experience
	- a bit more difficult (knowledge had to be aquired)

Decision: Option 2
	
	The increase in visual appeal and user experience was worth the little extra effort required to accomplish option 2.

#### Key Design Decision 2 :
	More than one category per question or not

Option 1: 1 question can only belong to one category

	+ easy database query as only one table would be needed for the questions
  	- questions can only belong to category -> questions have less potential use

Option 2: 1 question can belong to multiple categories

	+ singular questions have more potential use
  	- more database tables are required, making the query more complex	and challenging

Decision: Option 2
	
	The added potential use questions might have, while not necessarily used, was worth the increase in complexity.

## Inspiration and Tools

#### Guides that were provided during the lessons and on moodle.

Mainly used to get started with the programm and as foundation for the webapp.
Especially the entry "Full-stack web development".

#### ChatGPT and Stackoverflow

Mainly used to learn CSS and how to make the sign up and login interface as well as rarely for problem solving and debugging during the development process.

## Goals
planned:<br>

	-establishing and Integrating the DB<br>
	-completing the core gameplay functions
	-visually pleasing design
	-enabling users to choose from categories
	-(user login)
	-API
	-Integrating the score to the DB

achieved:<br>

	-establishing and Integrating the DB
	-completing the core gameplay functions
	-visually pleasing design not complete
	-enabling users to choose from categories
	-user login
	-API

missed:<br>

	-integrating the score to the DB
	-visually pleasing design not complete

## Individual contribution

Frontend and design work was primarily done by Peer Schüßler.

Database and backend work was primarily done by Oliver Hartmann.

However almost everything was discussed together and sometimes work was done in the others area.


