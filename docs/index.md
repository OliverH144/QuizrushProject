---
title: Home
nav_order: 0
---
# Quizrush

Testing your knowledge with fast paced and timed questions.

## Team members
Peer Schüßler
Oliver Hartmann

## Value Proposition

Quizrush aims to entertain to people of all ages with engaging quizzes but especially targets people who enjoy the fast paced nature of modern media and its short form content. The timed nature of Quizrush aims to challenge the user and give a unique feeling of satisfaction and accomplishment.

## App Structure

## App Behavior

## Data Model

The planned Data Model so far consists of multiple tables of which the one for questions is most important for the Quizrush mode. This table will consist of an unique question_id, the questions themselves and their answers, of which answer1 will always be the correct one. The display of the questions will obviously be randomized because of this.<br> <br>A second "category" table is planned for the optional feature of choosing a specific category of questions.<br>

The commands to create these tables are planned like this:

CREATE TABLE question( <br>
	question_id INTEGER PRIMARY KEY AUTOINCREMENT <br>
	question VARCHAR(140) <br>
	answer1 VARCHAR(20) <br>
	answer2 VARCHAR(20) <br>
	answer3 VARCHAR(20) <br>
	answer4 VARCHAR(20)
);

CREATE TABLE category( <br>
	category_id INTEGER PRIMARY KEY AUTOINCREMENT <br>
	category_name VARCHAR(30) <br>
	question_id INTEGER <br>
	CONSTRAINT FK_question_id FOREIGN KEY(question_id) <br> REFERENCES question(question_id);

## API Reference

## Design Decisions

## User Evaluation

## Goals
- planned:<br>
  - Establishing and Integrating the DB<br>
  - Completing the core gameplay functions
  - visually pleasing design
  - enabling users to choose from categories
  - (user login)
  - API 
- achieved:<br>
-  missed:<br>

## Individual contribution