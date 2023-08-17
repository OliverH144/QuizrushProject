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

## App Behavior

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

## Goals
- planned:<br>
  - Establishing and Integrating the DB<br>
  - Completing the core gameplay functions
  - visually pleasing design
  - enabling users to choose from categories
  - (user login)
  - API 
  - Score mit Namen in die Datenbank eintragen
- achieved:<br>
-  missed:<br>

## Individual contribution
