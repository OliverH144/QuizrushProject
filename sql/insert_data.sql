BEGIN TRANSACTION;
DELETE from category;
DELETE from questions;
DELETE from sqlite_sequence;
INSERT INTO questions (question, answer1, answer2, answer3, answer4) VALUES ("What is the capital of germany?","Berlin","Rome","Munich","Cologne");
INSERT INTO category (question_id, category_name) VALUES ("1","geography");
INSERT INTO questions (question, answer1, answer2, answer3, answer4) VALUES ("Mount Everest is located in which mountain range?","Himalaya","Andes","Alps","Rocky Mountains");
INSERT INTO category (question_id, category_name) VALUES ("2","geography");
INSERT INTO questions (question, answer1, answer2, answer3, answer4) VALUES ("The famous Parthenon is located in ...?","Greece","Italy","Egypt","Persia");
INSERT INTO category (question_id, category_name) VALUES ("3","geography");
INSERT INTO questions (question, answer1, answer2, answer3, answer4) VALUES ("The leaning Tower of Pisa is located in ...?","Italy","Greece","Egypt","Venice");
INSERT INTO category (question_id, category_name) VALUES ("4","geography");
INSERT INTO questions (question, answer1, answer2, answer3, answer4) VALUES ("The strait that connects the Mediterranean Sea and the Atlantic is the ...?","Strait of Gibraltar","Bass Strait","Cook Strait","Yucatan Strait");
INSERT INTO category (question_id, category_name) VALUES ("5","geography");
INSERT INTO questions (question, answer1, answer2, answer3, answer4) VALUES ("Which of the following borders germany?","Austria","Australia","Sweden","Norway");
INSERT INTO category (question_id, category_name) VALUES ("6","geography");
INSERT INTO questions (question, answer1, answer2, answer3, answer4) VALUES ("The appalachians are located in?","North America","South America","Europe","South East Asia");
INSERT INTO category (question_id, category_name) VALUES ("7","geography");
INSERT INTO questions (question, answer1, answer2, answer3, answer4) VALUES ("Tasmania is located on which of these continents?","Australia","Africa","Eurasia","South America");
INSERT INTO category (question_id, category_name) VALUES ("8","geography");
INSERT INTO questions (question, answer1, answer2, answer3, answer4) VALUES ("... is the capital of the US State New York","Albany","New York","New Jersey","Austin");
INSERT INTO category (question_id, category_name) VALUES ("9","geography");
INSERT INTO questions (question, answer1, answer2, answer3, answer4) VALUES ("The ancient supercontinent was known as?","Pangea","Laurasia","Gondwana","Antartica");
INSERT INTO category (question_id, category_name) VALUES ("10","geography");
INSERT INTO questions (question, answer1, answer2, answer3, answer4) VALUES ("The Space Needle is in which of these cities?","Seattle","Chigago","Las Vegas","Los Angeles");
INSERT INTO category (question_id, category_name) VALUES ("11","geography");
INSERT INTO questions (question, answer1, answer2, answer3, answer4) VALUES ("The Empire State Building is located in ...","New York","Abu Dhabi","Las Vegas","Washington");
INSERT INTO category (question_id, category_name) VALUES ("12","geography");
INSERT INTO questions (question, answer1, answer2, answer3, answer4) VALUES ("The Brandenburg Gate is located in ...","Berlin","Brandenburg","Paris","Rome");
INSERT INTO category (question_id, category_name) VALUES ("13","geography");
INSERT INTO questions (question, answer1, answer2, answer3, answer4) VALUES ("Which of these is known for its famous canals?","Venice","New York","Sydney","Munich");
INSERT INTO category (question_id, category_name) VALUES ("14","geography");
INSERT INTO questions (question, answer1, answer2, answer3, answer4) VALUES ("Which of these is known for its famous canals?","Amsterdam","Las Vegas","Austin","Zurich");
INSERT INTO category (question_id, category_name) VALUES ("15","geography");
INSERT INTO questions (question, answer1, answer2, answer3, answer4) VALUES ("The Taj Mahal is is located in ...?","India","Egypt","Saudi Arabia","Greece");
INSERT INTO category (question_id, category_name) VALUES ("16","geography");
INSERT INTO questions (question, answer1, answer2, answer3, answer4) VALUES ("Dont judge a book by its ...","Cover","Title","Author","Content");
INSERT INTO category (question_id, category_name) VALUES ("17","proverbs");
INSERT INTO questions (question, answer1, answer2, answer3, answer4) VALUES ("Better safe than ...","sorry","sound","sober","sad");
INSERT INTO category (question_id, category_name) VALUES ("18","proverbs");
INSERT INTO questions (question, answer1, answer2, answer3, answer4) VALUES ("Where there is smoke, there is ...","fire","someone smoking","a barbecue","smoked meat");
INSERT INTO category (question_id, category_name) VALUES ("19","proverbs");
INSERT INTO questions (question, answer1, answer2, answer3, answer4) VALUES ("Actions speak louder than ...","words","pages","books","people");
INSERT INTO category (question_id, category_name) VALUES ("20","proverbs");
INSERT INTO questions (question, answer1, answer2, answer3, answer4) VALUES ("The grass is always ... on the other side.","greener","taller","fresher","worse");
INSERT INTO category (question_id, category_name) VALUES ("21","proverbs");
INSERT INTO questions (question, answer1, answer2, answer3, answer4) VALUES ("Still waters ...","run deep","contain fish","are toxic","evaporate");
INSERT INTO category (question_id, category_name) VALUES ("22","proverbs");
INSERT INTO questions (question, answer1, answer2, answer3, answer4) VALUES ("When in Rome, ...","do as the Romans","visit the colosseum","be romantic","you are home");
INSERT INTO category (question_id, category_name) VALUES ("23","proverbs");
INSERT INTO questions (question, answer1, answer2, answer3, answer4) VALUES ("Birds of a feather ... together","flock","fly","f***","feed");
INSERT INTO category (question_id, category_name) VALUES ("24","proverbs");
INSERT INTO questions (question, answer1, answer2, answer3, answer4) VALUES ("The early bird chatches the ...","worm","seed","train","flu");
INSERT INTO category (question_id, category_name) VALUES ("25","proverbs");
INSERT INTO questions (question, answer1, answer2, answer3, answer4) VALUES ("Learn to ... before you run.","walk","tie your shoes","run","stand");
INSERT INTO category (question_id, category_name) VALUES ("26","proverbs");
INSERT INTO questions (question, answer1, answer2, answer3, answer4) VALUES ("Not all that glitters is ...","gold","glitter","silver","valuable");
INSERT INTO category (question_id, category_name) VALUES ("27","proverbs");
INSERT INTO questions (question, answer1, answer2, answer3, answer4) VALUES ("Beggars can't be ...","choosers","greedy","picky","bankers");
INSERT INTO category (question_id, category_name) VALUES ("28","proverbs");
INSERT INTO questions (question, answer1, answer2, answer3, answer4) VALUES ("The pen is mightier than the ...","sword","pencil","gun","fist");
INSERT INTO category (question_id, category_name) VALUES ("29","proverbs");
INSERT INTO questions (question, answer1, answer2, answer3, answer4) VALUES ("Who or what waits for no one?","time","the train","the seasons","the businessman");
INSERT INTO category (question_id, category_name) VALUES ("30","proverbs");
INSERT INTO questions (question, answer1, answer2, answer3, answer4) VALUES ("An apple a day keeps the doctor ...","away","healthy","at bay","fed");
INSERT INTO category (question_id, category_name) VALUES ("31","proverbs");
INSERT INTO questions (question, answer1, answer2, answer3, answer4) VALUES ("The snow goose need not bathe to make itself white, neither need you do anything but ...","be yourself","bathe","pray","reflect");
INSERT INTO category (question_id, category_name) VALUES ("32","proverbs");
INSERT INTO questions (question, answer1, answer2, answer3, answer4) VALUES ("A fool and his money are ...","soon parted","soon rich","headed to Vegas","best friends");
INSERT INTO category (question_id, category_name) VALUES ("33","proverbs");
INSERT INTO questions (question, answer1, answer2, answer3, answer4) VALUES ("A jack of all trades is a master of ...","none","trade","business","jack");
INSERT INTO category (question_id, category_name) VALUES ("34","proverbs");
INSERT INTO questions (question, answer1, answer2, answer3, answer4) VALUES ("Doctors are the worst ...","patients","mechanics","artists","friends");
INSERT INTO category (question_id, category_name) VALUES ("35","proverbs");
INSERT INTO questions (question, answer1, answer2, answer3, answer4) VALUES ("Which of these is grown in water?","Rice","Watermelon","Tomato","Cucumber");
INSERT INTO category (question_id, category_name) VALUES ("36","biology");
INSERT INTO questions (question, answer1, answer2, answer3, answer4) VALUES ("The mitochondria is known as the ... of the cell.","powerhouse","post office","lawyer","brain");
INSERT INTO category (question_id, category_name) VALUES ("37","biology");
INSERT INTO questions (question, answer1, answer2, answer3, answer4) VALUES ("The cloudberry can be recognized by its ... colour.","orange","white","grey","purple");
INSERT INTO category (question_id, category_name) VALUES ("38","biology");
INSERT INTO questions (question, answer1, answer2, answer3, answer4) VALUES ("The fastest land animal is?","Cheetah","Dachshund","Greyhound","Rabbit");
INSERT INTO category (question_id, category_name) VALUES ("39","biology");
INSERT INTO questions (question, answer1, answer2, answer3, answer4) VALUES ("Tomatoes are ...","Fruits","Nuts","Vegetables","Roots");
INSERT INTO category (question_id, category_name) VALUES ("40","biology");
INSERT INTO questions (question, answer1, answer2, answer3, answer4) VALUES ("Which of these is a bird?","Kiwi","Mango","Colugo","Pacay");
INSERT INTO category (question_id, category_name) VALUES ("41","biology");
INSERT INTO questions (question, answer1, answer2, answer3, answer4) VALUES ("Chlorophyll is known for its ... colour","green","beautiful","blue","white");
INSERT INTO category (question_id, category_name) VALUES ("42","biology");

INSERT INTO questions (question, answer1, answer2, answer3, answer4) VALUES ("The world trade center attack happened on ...","11.Sept.2001","9.Nov.2001","11.Sept.2011","9.Sept.2001");
INSERT INTO category (question_id, category_name) VALUES ("43","history");
INSERT INTO questions (question, answer1, answer2, answer3, answer4) VALUES ("The fall of the Berlin Wall was on ...","9.Nov.1989","11.Nov.1998","9.Nov.1979","11.Nov.1988");
INSERT INTO category (question_id, category_name) VALUES ("44","history");
INSERT INTO questions (question, answer1, answer2, answer3, answer4) VALUES ("Which one of these was not assasinated","Theodore Roosevelt","John F. Kennedy","James A. Garfield","Abraham Lincoln");
INSERT INTO category (question_id, category_name) VALUES ("45","history");
INSERT INTO questions (question, answer1, answer2, answer3, answer4) VALUES ("The assassination of whom is said to have led towards WW1?","Franz Ferdinand","Ghandi","John Lennon","Abhraham Lincoln");
INSERT INTO category (question_id, category_name) VALUES ("46","history");
INSERT INTO questions (question, answer1, answer2, answer3, answer4) VALUES ("How did roman emperor Julius Caesar die?","Assassination","Starvation","Cancer","Food Poisoning");
INSERT INTO category (question_id, category_name) VALUES ("47","history");
INSERT INTO questions (question, answer1, answer2, answer3, answer4) VALUES ("Roman Mythologie: Which of these are said to have founded Rome?","Romulus and Remus","Rah and Rembrandt","Rofus and Rufus","Roman and Remo");
INSERT INTO category (question_id, category_name) VALUES ("48","history");
INSERT INTO questions (question, answer1, answer2, answer3, answer4) VALUES ("If I were not Alexander the Great, I would like to be ...","Diogenes","Sokrates","Julius Caesar","Plato");
INSERT INTO category (question_id, category_name) VALUES ("49","history");
INSERT INTO questions (question, answer1, answer2, answer3, answer4) VALUES ("The famous quote -I have a dream- is attributed to?","Martin L. King Jr.","Abraham Lincoln","Albert Einstein","Stephen Hawking");
INSERT INTO category (question_id, category_name) VALUES ("50","history");
INSERT INTO questions (question, answer1, answer2, answer3, answer4) VALUES ("The end of World War 2 was in the year ...","1945","1954","1942","1939");
INSERT INTO category (question_id, category_name) VALUES ("51","history");
INSERT INTO questions (question, answer1, answer2, answer3, answer4) VALUES ("The Tian'anmen Square Massacre happened in the year ...","1989","1998","1988","1999");
INSERT INTO category (question_id, category_name) VALUES ("52","history");
INSERT INTO questions (question, answer1, answer2, answer3, answer4) VALUES ("Japanese politician Shinzo Abe was assassinated in ...","Juli 2022","April 2021","January 2023","March 2000");
INSERT INTO category (question_id, category_name) VALUES ("53","history");
INSERT INTO questions (question, answer1, answer2, answer3, answer4) VALUES ("The 44th president of the USA was ...","Barack Obama","Hillary Clinton","Donald Trump","Abraham Lincoln ");
INSERT INTO category (question_id, category_name) VALUES ("54","history");
INSERT INTO questions (question, answer1, answer2, answer3, answer4) VALUES ("The name of the famous plumber with a red hat is ...","Mario","Knuckles","Cloud","Patrick");
INSERT INTO category (question_id, category_name) VALUES ("55","pop-culture");
INSERT INTO questions (question, answer1, answer2, answer3, answer4) VALUES ("The game about -pocket monsters- is normally known as ...","Pokemon","Digimon","Monster Mania","League of Legends");
INSERT INTO category (question_id, category_name) VALUES ("56","pop-culture");
INSERT INTO questions (question, answer1, answer2, answer3, answer4) VALUES ("CS 2 will be a big update to the famous game ...","Counter Strike GO","Combat Sorcery","Creative Science","Clash of Soldiers");
INSERT INTO category (question_id, category_name) VALUES ("57","pop-culture");
INSERT INTO questions (question, answer1, answer2, answer3, answer4) VALUES ("Famous deceased author Kentaro Miura was most known for his work ...","Berserk","Vagabond","Vinland Saga","HunterXHunter");
INSERT INTO category (question_id, category_name) VALUES ("58","pop-culture");
INSERT INTO questions (question, answer1, answer2, answer3, answer4) VALUES ("Which of these is not a first person shooter game/franchise?","Dota","Apex Legends","Counter Strike","Battlefield");
INSERT INTO category (question_id, category_name) VALUES ("59","pop-culture");
INSERT INTO questions (question, answer1, answer2, answer3, answer4) VALUES ("The famous games Dota 2 and League of Legends were inspired by a mod for the game ...","Warcraft III","World of Warcraft","Runescape","Guild Wars");
INSERT INTO category (question_id, category_name) VALUES ("60","pop-culture");
INSERT INTO questions (question, answer1, answer2, answer3, answer4) VALUES ("Plot: Chemistry teacher diagnosed with cancer becomes drug dealer","Breaking Bad","Narcos","Stranger Things","The Walkind Dead");
INSERT INTO category (question_id, category_name) VALUES ("61","pop-culture");
INSERT INTO questions (question, answer1, answer2, answer3, answer4) VALUES ("What's the name of the famous Sponge who is friends with a starfish?","Spongebob","Samuel","Mr.Sponge","Sandy");
INSERT INTO category (question_id, category_name) VALUES ("62","pop-culture");
INSERT INTO questions (question, answer1, answer2, answer3, answer4) VALUES ("Which cartoon show is known for predicting historic events?","The Simpsons","American Dad","Futurama","South Park");
INSERT INTO category (question_id, category_name) VALUES ("63","pop-culture");
INSERT INTO questions (question, answer1, answer2, answer3, answer4) VALUES ("Which famous mouse has a dog named Goofy?","Mickey Mouse","Rat Remy","Stuart Little","Jerry Mouse");
INSERT INTO category (question_id, category_name) VALUES ("64","pop-culture");
INSERT INTO questions (question, answer1, answer2, answer3, answer4) VALUES ("Tom and ...","Jerry","Thomas","Tomato","Sam");
INSERT INTO category (question_id, category_name) VALUES ("65","pop-culture");
INSERT INTO questions (question, answer1, answer2, answer3, answer4) VALUES ("What is the weakness of Superman?","Kryptonite","Superwoman","Cobalt","Bullets");
INSERT INTO category (question_id, category_name) VALUES ("66","pop-culture");
INSERT INTO questions (question, answer1, answer2, answer3, answer4) VALUES ("One of the first Spiderman villains was ...","Green Goblin","Megatron","Dr.Strange","Magneto");
INSERT INTO category (question_id, category_name) VALUES ("67","pop-culture");
INSERT INTO questions (question, answer1, answer2, answer3, answer4) VALUES ("Achieving one stroke under par in golf is called a ...","Birdie","Doggy","Albatross","Rat");
INSERT INTO category (question_id, category_name) VALUES ("68","sport");
INSERT INTO questions (question, answer1, answer2, answer3, answer4) VALUES ("Whats the term for a football player achieving 3 goals in one game?","Hattrick","Triple-dribble","Three stack","Triple down");
INSERT INTO category (question_id, category_name) VALUES ("69","sport");
INSERT INTO questions (question, answer1, answer2, answer3, answer4) VALUES ("Basketball: A field goal from beyond the three point line is called a ...","Three pointer","Long throw","Three throw","Triple down");
INSERT INTO category (question_id, category_name) VALUES ("70","sport");
INSERT INTO questions (question, answer1, answer2, answer3, answer4) VALUES ("Baseball: When you hit the ball out the playing field you have achieved a ...","Homerun","out of bounds","Error ball","Space ball");
INSERT INTO category (question_id, category_name) VALUES ("71","sport");
INSERT INTO questions (question, answer1, answer2, answer3, answer4) VALUES ("The inside front row starting position in a race is commonly called ...","pole position","prime position","lead position","strong position");
INSERT INTO category (question_id, category_name) VALUES ("72","sport");
INSERT INTO questions (question, answer1, answer2, answer3, answer4) VALUES ("The scotch opening is usually associated with the game ...","chess","sport drinking","rugby","football");
INSERT INTO category (question_id, category_name) VALUES ("73","sport");
INSERT INTO questions (question, answer1, answer2, answer3, answer4) VALUES ("The term for professional video game competitions is called ...","electronic sports","game sports","virtual sports","digital sports");
INSERT INTO category (question_id, category_name) VALUES ("74","sport");
INSERT INTO questions (question, answer1, answer2, answer3, answer4) VALUES ("The term -hole in one- is most commonly associated with which sport?","Golf","Darts","Football","Basketball");
INSERT INTO category (question_id, category_name) VALUES ("75","sport");
INSERT INTO questions (question, answer1, answer2, answer3, answer4) VALUES ("what is the most inner circle of a dart board called?","Bull's eye","Center point","Win point","Goat's eye");
INSERT INTO category (question_id, category_name) VALUES ("76","sport");
INSERT INTO questions (question, answer1, answer2, answer3, answer4) VALUES ("A handless jump with a skateboard is known as what?","Ollie","Jumpie","Kickflip","Handy");
INSERT INTO category (question_id, category_name) VALUES ("77","sport");
INSERT INTO questions (question, answer1, answer2, answer3, answer4) VALUES ("What is the length of a marathon?","42,195 km","45 km","40,525 km","45,565 km");
INSERT INTO category (question_id, category_name) VALUES ("78","sport");



COMMIT;