USE codeup_test_db;

DROP TABLE IF EXISTS albums;

CREATE TABLE albums (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT,

  artist VARCHAR(150) NOT NULL,

  name  VARCHAR(150) NOT NULL,

  release_date INT NOT NULL,

  sales FLOAT(3,1) NOT NULL,

  genre VARCHAR(50) NOT NULL,

  PRIMARY KEY (id)
);