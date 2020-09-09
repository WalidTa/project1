-- hier onder mijn statements, als eerst maak ik mijn table account
-- aan met alle kolommen. en daarna doe ik het zelfde bij de table
-- van persoon onder aan link ik de foreign key van table persoon
-- met de table account. voor de rest werkt alles goed



CREATE TABLE account (
  id int NOT NULL AUTO_INCREMENT PRIMARY KEY,
  email varchar(255),
  password varchar(255),
)

CREATE TABLE persoon (
    id int NOT NULL PRIMARY KEY,
    voornaam varchar(255),
    tussenvoegsel varchar(255),
    achternaam varchar(255),
    username varchar(255),
    account_id int NOT NULL,
    FOREIGN KEY (account_id) REFERENCES account(id)
    )
