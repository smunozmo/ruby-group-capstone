CREATE SCHEMA IF NOT EXISTS capstone_schema;

CREATE TABLE IF NOT EXISTS genre (
  id int GENERATED ALWAYS AS IDENTITY,
  name VARCHAR(50) NOT NULL,
  PRIMARY KEY (id));-- -----------------------------------------------------
-- Table source
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS source (
  id int GENERATED ALWAYS AS IDENTITY,
  name VARCHAR(50) NOT NULL,
  PRIMARY KEY (id));-- -----------------------------------------------------
-- Table author
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS author (
  id int GENERATED ALWAYS AS IDENTITY,
  first_name VARCHAR(50) NOT NULL,
  last_name VARCHAR(50) NOT NULL,
  PRIMARY KEY (id));-- -----------------------------------------------------
-- Table label
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS label (
  id int GENERATED ALWAYS AS IDENTITY,
  title VARCHAR(50) NOT NULL,
  color VARCHAR(50) NOT NULL,
  PRIMARY KEY (id));-- -----------------------------------------------------
-- Table item
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS item (
  id int GENERATED ALWAYS AS IDENTITY,
  itemcol VARCHAR(45) NOT NULL,
  genre_id INT NOT NULL,
  source_id INT NOT NULL,
  author_id INT NOT NULL,
  label_id INT NOT NULL,
  publish_date DATE NOT NULL,
  archived BOOLEAN NOT NULL,
  PRIMARY KEY (id),
  CONSTRAINT fk_item_genre
    FOREIGN KEY (genre_id)
    REFERENCES genre (id)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT fk_item_source1
    FOREIGN KEY (source_id)
    REFERENCES source (id)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT fk_item_author1
    FOREIGN KEY (author_id)
    REFERENCES author (id)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT fk_item_label1
    FOREIGN KEY (label_id)
    REFERENCES label (id)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);-- -----------------------------------------------------
-- Table book
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS book (
  id int GENERATED ALWAYS AS IDENTITY,
  item_id INT NOT NULL,
  publisher VARCHAR(50) NOT NULL,
  cover_state VARCHAR(50) NOT NULL,
  PRIMARY KEY (id),
  CONSTRAINT fk_book_item1
    FOREIGN KEY (item_id)
    REFERENCES item (id)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);-- -----------------------------------------------------
-- Table music_album
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS music_album (
  id int GENERATED ALWAYS AS IDENTITY,
  item_id INT NOT NULL,
  on_spotify BOOLEAN NOT NULL,
  PRIMARY KEY (id),
  CONSTRAINT fk_table2_item1
    FOREIGN KEY (item_id)
    REFERENCES item (id)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);-- -----------------------------------------------------
-- Table movie
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS movie (
  id int GENERATED ALWAYS AS IDENTITY,
  item_id INT NOT NULL,
  silent BOOLEAN NOT NULL,
  PRIMARY KEY (id),
  CONSTRAINT fk_table3_item1
    FOREIGN KEY (item_id)
    REFERENCES item (id)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);-- -----------------------------------------------------
-- Table game
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS game (
  id int GENERATED ALWAYS AS IDENTITY,
  item_id INT NOT NULL,
  multiplayer BOOLEAN NOT NULL,
  last_played_at DATE NOT NULL,
  PRIMARY KEY (id),
  CONSTRAINT fk_table4_item1
    FOREIGN KEY (item_id)
    REFERENCES item (id)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);