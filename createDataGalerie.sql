/*
 *  /-********************************************************************-\
 *  | Project       : Art_Galère  							                           |
 *  | File Name     : createDataGalerie.sql											           |
 *  | Author        : SRIFI José && VALABREGUE Léon										     |
 *  | Creation Date : 06/12/2019										                       |
 *  \-********************************************************************-/ 
 */

---------------------------------------------------Debut TP5---------------------------------------------------------------------

--creation administrateurs
INSERT INTO administrateur VALUES('leloune', 'mini-projet1');
INSERT INTO administrateur VALUES('josePomme', 'mini-projet2');
INSERT INTO administrateur VALUES('Bob', 'leponge');

--creation super administrateurs
INSERT INTO super_administrateur VALUES('leloune');
INSERT INTO super_administrateur VALUES('josePomme');

--creation clients -- (idClient, nom, prenom, email) -- INSERT INTO client VALUES (SEQ_CLIENT.NEXTVAL,'','','.@artiste.');
INSERT INTO client VALUES (SEQ_CLIENT.NEXTVAL, 'Vautier', 'Benjamin', 'benjamin.vautier@artiste.fr');
INSERT INTO client VALUES (SEQ_CLIENT.NEXTVAL, 'Chagall', 'Marc', 'marc.chagall@artiste.ru');
INSERT INTO client VALUES (SEQ_CLIENT.NEXTVAL, 'Klein', 'Yves', 'yves.klein@artiste.fr');
INSERT INTO client VALUES (SEQ_CLIENT.NEXTVAL, 'De Vinci', 'Léonard', 'leonardo.davinci@artiste.it');
INSERT INTO client VALUES (SEQ_CLIENT.NEXTVAL, 'De Saint Phalle', 'Niki', 'niki.desaintphalle@artiste.fr');
INSERT INTO client VALUES (SEQ_CLIENT.NEXTVAL, 'Picasso', 'Pablo', 'pablo.picasso@artiste.es');
INSERT INTO client VALUES (SEQ_CLIENT.NEXTVAL, 'Van Gogh', 'Vincent', 'vincent.vangogh@artiste.nl');



--INSERT INTO client (nom, prenom, email) VALUES ('Final', 'Aspex', 'finalaspex@deviantart.com');

--creation artistes -- #idArtiste, dateNaissance, photoArtiste, nbVotesArtiste

INSERT INTO artiste (idArtiste, DateNaissance) VALUES (1, (TO_DATE('18/07/1935', 'dd/mm/yyyy') ) );
INSERT INTO artiste (idArtiste, DateNaissance) VALUES (2, (TO_DATE('07/07/1887', 'dd/mm/yyyy') ) );
INSERT INTO artiste (idArtiste, DateNaissance) VALUES (3, (TO_DATE('28/04/1928', 'dd/mm/yyyy') ) );
INSERT INTO artiste (idArtiste, DateNaissance) VALUES (4, (TO_DATE('15/04/1452', 'dd/mm/yyyy') ) );
INSERT INTO artiste (idArtiste, DateNaissance) VALUES (5, (TO_DATE('29/10/1930', 'dd/mm/yyyy') ) );
INSERT INTO artiste (idArtiste, DateNaissance) VALUES (6, (TO_DATE('25/10/1881', 'dd/mm/yyyy') ) );
INSERT INTO artiste (idArtiste, DateNaissance) VALUES (7, (TO_DATE('30/03/1853', 'dd/mm/yyyy') ) );

--creation oeuvres -- refOeuvre, titre, description, type, prix, nbVotesOeuvre, estALaVente, idartiste -- INSERT INTO OEUVRE VALUES (SEQ_OEUVRE.NEXTVAL, '', '', '', , , , );

INSERT INTO OEUVRE VALUES (SEQ_OEUVRE.NEXTVAL, 'ben1', 'il y a trop d''art ', 'peinture', null, 0, 0, 1);
INSERT INTO OEUVRE VALUES (SEQ_OEUVRE.NEXTVAL, 'Le cimetière', 'Huile et crayon sur toile de lin', 'peinture', null , 0, 0, 2); 
INSERT INTO OEUVRE VALUES (SEQ_OEUVRE.NEXTVAL, 'Anthropométrie de l''époque bleue', 'Anthropométrie de l''époque bleue est une des toiles de la série des « Anthropométries », empreintes de corps de femmes nues et enduites de couleur bleue sur toiles. Cette œuvre fait partie de la collection permanente du Centre Pompidou', 'peinture', 350000, 0, 0, 3);
INSERT INTO OEUVRE VALUES (SEQ_OEUVRE.NEXTVAL, 'La cène', 'La cène est une peinture murale à la détrempe réalisée de 1495 à 1498 pour le réfectoire du couvent dominicain de Santa Maria delle Grazie à Milan', 'peinture', 30000000, 0, 0, 4);
INSERT INTO OEUVRE VALUES (SEQ_OEUVRE.NEXTVAL, 'Mona Lisa', 'Mona Lisa, est un tableau réalisé entre 1503 et 1506 qui représente un portrait mi-corps,', 'peinture', null, 0, 0, 4);
INSERT INTO OEUVRE VALUES (SEQ_OEUVRE.NEXTVAL, 'Salvator Mundi', 'Le Salvator Mundi est une peinture à l''huile sur bois de noyer, sur le thème du Christ rédempteur, réalisée vers 1500 pour le roi de France et son épouse', 'peinture', 382000000, 0, 1, 4);
INSERT INTO OEUVRE VALUES (SEQ_OEUVRE.NEXTVAL, 'Les trois graces', 'Dans la mythologie grecque les Grâces étaient les déesses du charme, de la beauté, de la nature et enfin de la création humaine et de la fertilité. Elles étaient souvent au nombre de trois, de la plus jeune à la plus âgée: Aglaea, Euphrosyne et Thalia', 'sculpture', 100000, 0, 1, 5);
INSERT INTO OEUVRE VALUES (SEQ_OEUVRE.NEXTVAL, 'Guernica', 'Cette toile est une dénonciation du bombardement de la ville de Guernica, qui venait de se produire le 26 avril 1937, lors de la guerre d''Espagne, ordonné par les nationalistes espagnols et exécuté par des troupes allemandes nazies et fascistes italiennes', 'peinture', null, 0, 0, 6);
INSERT INTO OEUVRE VALUES (SEQ_OEUVRE.NEXTVAL, 'Le Rève', 'Le Rève est une peinture représentant le portrait de Marie-Thérèse Walter, sa jeune compagne d''alors, assise dans un fauteuil mais décrivant en réalité une représentation érotique intense et colorée', 'peinture', 155000000, 0, 1, 6);
INSERT INTO OEUVRE VALUES (SEQ_OEUVRE.NEXTVAL, 'Nuits étoilés', 'Le tableau représente ce que Van Gogh pouvait voir et extrapoler de la chambre qu''il occupait dans l''asile du monastère Saint-Paul-de-Mausole à Saint-Rémy-de-Provence en mai 1889. ', 'peinture', null, 0, 0, 7);


-- creation photos

INSERT INTO PHOTO_OEUVRE VALUES ('ben1.jpg', '1', null);
INSERT INTO PHOTO_OEUVRE VALUES ('cimetiere.jpg', '2', null);
INSERT INTO PHOTO_OEUVRE VALUES ('klein1.jpg', '3', null);
INSERT INTO PHOTO_OEUVRE VALUES ('cene.jpg', '4', null);
INSERT INTO PHOTO_OEUVRE VALUES ('joconde.jpg', '6', null);
INSERT INTO PHOTO_OEUVRE VALUES ('stJranBap.jpg', '7', null);
INSERT INTO PHOTO_OEUVRE VALUES ('graces.jpg', '8', null);
INSERT INTO PHOTO_OEUVRE VALUES ('gernika.jpg', '9', null);
INSERT INTO PHOTO_OEUVRE VALUES ('reve.jpg', '10', null);
INSERT INTO PHOTO_OEUVRE VALUES ('nuit.jpg', '11', null);


--upload photos
/*
UPDATE "S2G5ET08"."PHOTO_OEUVRE" SET WHERE ROWID = 'AABzHtAAEAAAINAAAA' AND ORA_ROWSCN = '338851799'
UPDATE "S2G5ET08"."PHOTO_OEUVRE" SET PHOTO=? WHERE ROWID=:sqldevrowid AND ORA_ROWSCN=:sqldevrowscn
UPDATE "S2G5ET08"."PHOTO_OEUVRE" SET  WHERE ROWID = 'AABzHtAAEAAAINAAAB' AND ORA_ROWSCN = '338851799'
UPDATE "S2G5ET08"."PHOTO_OEUVRE" SET PHOTO=? WHERE ROWID=:sqldevrowid AND ORA_ROWSCN=:sqldevrowscn
UPDATE "S2G5ET08"."PHOTO_OEUVRE" SET  WHERE ROWID = 'AABzHtAAEAAAINAAAC' AND ORA_ROWSCN = '338851799'
UPDATE "S2G5ET08"."PHOTO_OEUVRE" SET PHOTO=? WHERE ROWID=:sqldevrowid AND ORA_ROWSCN=:sqldevrowscn
UPDATE "S2G5ET08"."PHOTO_OEUVRE" SET  WHERE ROWID = 'AABzHtAAEAAAINAAAJ' AND ORA_ROWSCN = '338852574'
UPDATE "S2G5ET08"."PHOTO_OEUVRE" SET PHOTO=? WHERE ROWID=:sqldevrowid AND ORA_ROWSCN=:sqldevrowscn
UPDATE "S2G5ET08"."PHOTO_OEUVRE" SET  WHERE ROWID = 'AABzHtAAEAAAINAAAD' AND ORA_ROWSCN = '338852574'
UPDATE "S2G5ET08"."PHOTO_OEUVRE" SET PHOTO=? WHERE ROWID=:sqldevrowid AND ORA_ROWSCN=:sqldevrowscn
UPDATE "S2G5ET08"."PHOTO_OEUVRE" SET  WHERE ROWID = 'AABzHtAAEAAAINAAAE' AND ORA_ROWSCN = '338852574'
UPDATE "S2G5ET08"."PHOTO_OEUVRE" SET PHOTO=? WHERE ROWID=:sqldevrowid AND ORA_ROWSCN=:sqldevrowscn
UPDATE "S2G5ET08"."PHOTO_OEUVRE" SET  WHERE ROWID = 'AABzHtAAEAAAINAAAF' AND ORA_ROWSCN = '338852574'
UPDATE "S2G5ET08"."PHOTO_OEUVRE" SET PHOTO=? WHERE ROWID=:sqldevrowid AND ORA_ROWSCN=:sqldevrowscn
UPDATE "S2G5ET08"."PHOTO_OEUVRE" SET  WHERE ROWID = 'AABzHtAAEAAAINAAAG' AND ORA_ROWSCN = '338852574'
UPDATE "S2G5ET08"."PHOTO_OEUVRE" SET PHOTO=? WHERE ROWID=:sqldevrowid AND ORA_ROWSCN=:sqldevrowscn
UPDATE "S2G5ET08"."PHOTO_OEUVRE" SET  WHERE ROWID = 'AABzHtAAEAAAINAAAH' AND ORA_ROWSCN = '338852574'
UPDATE "S2G5ET08"."PHOTO_OEUVRE" SET PHOTO=? WHERE ROWID=:sqldevrowid AND ORA_ROWSCN=:sqldevrowscn
UPDATE "S2G5ET08"."PHOTO_OEUVRE" SET  WHERE ROWID = 'AABzHtAAEAAAINAAAI' AND ORA_ROWSCN = '338852574'
UPDATE "S2G5ET08"."PHOTO_OEUVRE" SET PHOTO=? WHERE ROWID=:sqldevrowid AND ORA_ROWSCN=:sqldevrowscn

Validation (commit) effectuée
*/

---------------------------------------------------FIN TP5---------------------------------------------------------------------

---------------------------------------------------Debut TP6---------------------------------------------------------------------

-- Afin d'implémenter l'application dans Access, nous allons simplifier le schéma de la galerie, en
-- considérant qu'une œuvre n'est liée qu'à une seule photo.
ALTER TABLE PHOTO_OEUVRE DROP PRIMARY KEY;
ALTER TABLE PHOTO_OEUVRE ADD PRIMARY KEY(refOeuvre);

--Test trigger des clients
INSERT INTO client (nom, prenom, email) VALUES ('Picsou', 'Oncle', 'oncle.picsou@donald.duck');
INSERT INTO client (nom, prenom, email) VALUES ('Apple', 'Applejack', 'applejack@equestria.world');

--test triggers facture
INSERT INTO FACTURE (prix, IDCLIENT) VALUES(100000, 8);
INSERT INTO OEUVRE_ACHETEE VALUES(8, 1);

INSERT INTO FACTURE (prix, IDCLIENT) VALUES(382000000 + 155000000, 9);
INSERT INTO OEUVRE_ACHETEE VALUES(9, 2);
INSERT INTO OEUVRE_ACHETEE VALUES(10, 2);

---------------------------------------------------FIN TP6---------------------------------------------------------------------

---------------------------------------------------Debut TP7---------------------------------------------------------------------

INSERT INTO client (nom, prenom, email) VALUES ('Final', 'Aspex', 'finalaspex@deviantart.com');
INSERT INTO artiste (idArtiste, DateNaissance) VALUES (10, (TO_DATE('10/10/2010', 'dd/mm/yyyy') ) );
INSERT INTO OEUVRE VALUES (SEQ_OEUVRE.NEXTVAL, 'Sunrise Oversea', 'Sunrise Oversea se traduit par "le soleil qui s''élève au dessus de la mer". Son corps représente le soleil ambiant du Sud, et sa crinière la chaleur du lieu. Par ses yeux et l''extérieur des ailes, elle ne peut que faire qu''aux couleur du sud. ', 'peinture', 500, 0, 1, (SELECT idartiste FROM LIENARTISTENOM WHERE Nom like 'Final Aspex'));
INSERT INTO PHOTO_OEUVRE VALUES ('sunrise.jpg', (SELECT refOeuvre FROM OEUVRE WHERE titre like 'Sunrise Oversea'), null);

INSERT INTO client (nom, prenom, email) VALUES ('de Syracuse', 'Archimède', 'archimede.desyracuse@antiquite.gr');
INSERT INTO artiste (idArtiste, DateNaissance) VALUES ((SELECT idClient FROM Client WHERE prenom like 'Archimède'), TO_DATE('01/02/0000', 'dd/mm/yyyy'));
INSERT INTO OEUVRE VALUES (SEQ_OEUVRE.NEXTVAL,'Pi', 'Que j''aime à faire apprendre ce nombre utile aux sages ! Immortel Archimède, artiste ingénieur, Qui de ton jugement peut priser la valeur ?', 'peinture', 3141592653, 0, 1, (SELECT idartiste FROM LIENARTISTENOM WHERE Nom like '%Archimède%'));

INSERT INTO client (nom, prenom, email) VALUES (' ', 'Cresus', 'cresus@jaipasdenom.mc');






---------------------------------------------------Fin TP7---------------------------------------------------------------------

---Les affichages de nos vues
SELECT * from LIENARTISTEOEUVRES;
SELECT * FROM VUEACHAT;
SELECT * from LIENARTISTENOM;
SELECT * from OEUVRESVENDUES;






