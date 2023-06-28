BEGIN TRANSACTION;
DELETE from questions;
DELETE from category;
DROP TABLE richtige_antwort;
DELETE from sqlite_sequence;
INSERT INTO questions (question, answer1, answer2, answer3, answer4) VALUES ("The fastest land animal is?", "Cheetah", "Dachshund", "Greyhound", "Rabbit");
INSERT INTO questions (question, answer1, answer2, answer3, answer4) VALUES ("Tomatoes are ...", "Fruits", "Nuts", "Vegetables", "Roots");
INSERT INTO questions (question, answer1, answer2, answer3, answer4) VALUES ("Mount Everest is located in which mountain range?", "Himalaya", "Andes", "Alps", "Rocky Mountains");
INSERT INTO questions (question, answer1, answer2, answer3, answer4) VALUES ("Which of these is a bird?", "Kiwi", "Mango", "Colugo", "Pacay");
INSERT INTO questions (question, answer1, answer2, answer3, answer4) VALUES ("... is the capital of the US State New York", "Albany", "New York", "New Jersey", "Austin");
INSERT INTO questions (question, answer1, answer2, answer3, answer4) VALUES ("Actions speak louder than ...", "words", "pages", "books", "people");
INSERT INTO questions (question, answer1, answer2, answer3, answer4) VALUES ("Chlorophyll is known for its ... colour", "green", "beautiful", "blue", "white");
INSERT INTO questions (question, answer1, answer2, answer3, answer4) VALUES ("Not all that glitters is ...", "Gold", "Glitter", "Silver", "valuable");
INSERT INTO questions (question, answer1, answer2, answer3, answer4) VALUES ("Beggars can't be ...", "Choosers", "greedy", "picky", "Bankers");
INSERT INTO questions (question, answer1, answer2, answer3, answer4) VALUES ("The pen is mightier than the ...", "Sword", "Pencil", "Gun", "Fist");
INSERT INTO questions (question, answer1, answer2, answer3, answer4) VALUES ("Who or What waits for no one?", "Time", "The Train", "The Seasons", "The Businessman");
COMMIT;