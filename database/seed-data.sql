/* Initialize DB with some seed data */
USE `book_library_api_db`;

-- DONT MODIFY THIS MIGRATION
-- it is used by Xest local development pipeline
INSERT INTO `migrations` (
  name,
  run_on
) VALUES (
  "/20211107064324-seed-data",
  "20211107064324"
);

-- YOU CAN MODIFY BELOW THIS LINE
INSERT INTO user_types (user_type_id, user_type)
VALUES (1, "admin");
INSERT INTO user_types (user_type_id, user_type)
VALUES (2, "user");

INSERT INTO users (user_id, first_name, last_name, email, password, user_type_id, created_at)
VALUES (1, "Ahmet", "Akinsql", "ahmet@akinsql.com", SHA2(CONCAT("password","SUPER_DUPER_SECRET"), 224), 1, "2020-11-20 12:00:00");
INSERT INTO users (user_id, first_name, last_name, email, password, user_type_id, created_at)
VALUES (2, "Joe", "Bloggs","joebloggs@gmail.com", SHA2(CONCAT("password","SUPER_DUPER_SECRET"), 224), 2, "2020-11-20 12:00:00");
INSERT INTO users (user_id, first_name, last_name, email, password, user_type_id, created_at)
VALUES (3, "Jim", "Bloggs" , "jimbloggs@yahoo.com", SHA2(CONCAT("password","SUPER_DUPER_SECRET"), 224), 2, "2020-11-20 12:00:00");

INSERT INTO readers(reader_name, reader_email,reader_password)
VALUES("Hazan Serifli","hazansherifli@gmail.com","123456789");

INSERT INTO readers(reader_name, reader_email,reader_password)
VALUES("Rufet Serifli","rufet1993@gmail.com","Rufet123");

INSERT INTO books(title,author,genre,ISBN,reader_id)
VALUES("ABC","Jack Smith","Romance","QWE124qad",2);

INSERT INTO books(title,author,genre,ISBN,reader_id)
VALUES("Doctor Who","Stefen Moffat","SCI-FI","DDWH123",1);