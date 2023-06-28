CREATE TABLE questions(
	question_id INTEGER PRIMARY KEY AUTOINCREMENT,
	question VARCHAR(140),
	answer1 VARCHAR(20),
	answer2 VARCHAR(20),
	answer3 VARCHAR(20),
	answer4 VARCHAR(20)
);

CREATE TABLE category(
	category_id INTEGER PRIMARY KEY AUTOINCREMENT,
	category_name VARCHAR(30),
	question_id INTEGER,
	CONSTRAINT FK_question_id FOREIGN KEY(question_id) REFERENCES questions(question_id)
);
