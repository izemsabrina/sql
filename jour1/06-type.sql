-- nbr de caractere
VARCHAR 0-255
TEXT 2^16 65000
MEDIUMTEXT 2^24
LONGTEXTn2^32
BLOB => tres tres grand 
-- chiffres 
-- entier
TINYINT
SMALLINT 2^16 
MEDIUMINT 2^24
INT 2^32
BIGINT tres grand 
-- chiffre a virgule
DECIMAL 100000.1
FLOAT
-- chiffre spéciaux
BOOLEAN 0 1
-- DATES

TIME HH:MM:SS
DATE  AAA-MM-JJ
DATATIME AAAA-MM-JJ HH:MM:SS
-- créer latable articles 
-- 5 COLONNES
-- titre texte max255
-- contenu max 65 000 lettres
-- like chiffre entier mx 4000 000 000
-- dt_publication année mois et jour


CREATE TABLE IF NOT EXISTS articles (
titre VARCHAR(255),
contenu TEXT,
auteur VARCHAR(20),
like INT,
dt_publication DATE);

CREATE TABLE IF NOT EXISTS exo2 (
id INT,
dt_publication DATETIME,
dt_mise_a_jour DATE,
etat BOOLEAN,
texte MEDIUMTEXT,
prix DECIMAL);
