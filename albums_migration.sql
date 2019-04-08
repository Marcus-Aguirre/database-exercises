USE codeup_test_db;

DROP TABLE IF EXISTS albums;

/*id — auto incrementing unsigned integer primary key
artist — string for storing the recording artist name
name — string for storing a record name
release_date — integer representing year record was released
sales — floating point value for number of records sold (in millions)
genre — string for storing the record's genre(s)*/

CREATE TABLE albums(
  id INT UNSIGNED NOT NULL AUTO_INCREMENT,
  artist VARCHAR(150) NOT NULL,
  name   VARCHAR(200) NOT NULL,
  release_date INT UNSIGNED NOT NULL,
  sales DECIMAL(10,2) NOT NULL,
  genre VARCHAR(100) DEFAULT "Blues",
  PRIMARY KEY (id)
);