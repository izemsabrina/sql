CREATE TABLE IF NOT EXISTS fleurs(
id INTEGER PRIMARY KEY AUTOINCREMENT,
nom VARCHAR (50),
description TEXT,
status BOOLEAN,
dt_creation DATE
);

SELECT * FROM fleurs;
-- ajouter une premiere ligne 
INSERT INTO fleurs(nom, description, status, dt_creation)
VALUES ( "rose", "fleur rouge", TRUE, "2023-03-31");

INSERT INTO fleurs(nom, description, status, dt_creation)
VALUES( "jasmin", "fleur blanche", FALSE, CURRENT_DATE),
("lilas","fleur jaune", TRUE, "2023-01-01");

CREATE TABLE IF NOT EXISTS arbres(
 id INTEGER PRIMARY KEY AUTOINCREMENT,
 nom VARCHAR (60) DEFAULT "non précisé",
 dt_creation DATE DEFAULT CURRENT_DATE
);

-- -- ajouter 3 lignes dans cette table 
-- "exo 5" 20.10 maintenant 
-- "exo 5 suite " 30.40  hier à 22h30 et 2 secondes
-- "exo5 fin" 20.40 cematin à 11h20 et 30 secondes
-- 
CREATE TABLE IF NOT EXISTS exo05(
id INTEGER PRIMARY KEY AUTOINCREMENT,
description TEXT,
prix FLOAT DEFAULT 20.10,
dt_creation DATETIME DEFAULT CURRENT_TIMESTAMP
);

  INSERT INTO exo05
    VALUES(NULL,"exo 5", 20.1, CURRENT_DATE ),
  (NULL, "exo 5 suite ",30.4, "2023-03-30 22:30:2"),
  (NULL,"exo5 fin ", 20.4, "2023-03-30 11:20:30");


SELECT * from exo05

UPDATE exo05 SET description="découverte react", prix=200.30
where id=5

-- cas pratique 
-- modifier des valeurs stockées dans la table fleur 
-- changer le status TRUE => False pour la ligne qui contient rose
-- changer la valeur de Lilas à LILAS et date 2023-01-01 à aujourd'hui
-- changer la description des lignes 2 et 3 ajouter à la suite  "à compléter"
-- ligne 2 fleur blanche à compléter
-- ligne 3 fleur jaune à compléter

SELECT * from fleurs

UPDATE fleurs SET status = FALSE
where id=1

UPDATE fleurs SET nom="LILAS", dt_creation=CURRENT_DATE
where id=3
-- pour supprimer une ligue 
DELETE FROM fleurs WHERE id=3

select prix , prix*1.2, id FROM exo05
