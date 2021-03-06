/*
 *  /-********************************************************************-\
 *  | Project       : Art_Gal�re								                           |
 *  | File Name     : createDataGalerie.sql											           |
 *  | Author        : SRIFI Jos� && VALABREGUE L�on										     |
 *  | Creation Date : 06/12/2019										                       |
 *  \-********************************************************************-/ 
 */

---------------------------------------------------Debut TP5---------------------------------------------------------------------

CREATE TABLE ADMINISTRATEUR(
  login VARCHAR2(10) PRIMARY KEY,
  motDePasse VARCHAR2(20) CHECK(motDePasse LIKE '______%')
);

CREATE TABLE SUPER_ADMINISTRATEUR(
  login VARCHAR2(10) REFERENCES ADMINISTRATEUR(LOGIN) PRIMARY KEY
);

CREATE TABLE CLIENT(
  idClient NUMBER(2) PRIMARY KEY,
  nom VARCHAR2(20) NOT NULL,
  prenom VARCHAR2(20) NOT NULL,
  email VARCHAR2(50)
    check(email LIKE '_%@_%._%' )
);

CREATE TABLE FACTURE(
  idFacture NUMBER(2) PRIMARY KEY,
  prix NUMBER(*,2),
  idClient NUMBER(2) REFERENCES CLIENT(idCLient)
);

CREATE TABLE ARTISTE(
  idArtiste NUMBER(2) REFERENCES CLIENT(idCLient) PRIMARY KEY,
  dateNaissance DATE,
  photoArtiste BLOB,
  nbVotesArtiste NUMBER(*) DEFAULT 0,
  idArtiste NUMBER(2) REFERENCES Artiste(idArtiste)
);

CREATE TABLE OEUVRE(
  refOeuvre NUMBER(2) PRIMARY KEY,
  titre VARCHAR2(200),
  description VARCHAR2(255),
  leType VARCHAR2(9)
    CHECK(leType LIKE 'peinture' OR leType LIKE 'sculpture'),
  prix NUMBER(*,2),
  nbVotesOeuvre NUMBER(*),
  estALaVente NUMBER(1)
    CHECK (estALavente = 0 OR estALavente = 1)
);

CREATE TABLE OEUVRE_ACHETEE(
  refOeuvre NUMBER(2) REFERENCES OEUVRE(refOeuvre) PRIMARY KEY,
  facture NUMBER(2) REFERENCES FACTURE(idFacture)
);

CREATE TABLE PHOTO_OEUVRE(
  nomPhoto VARCHAR(20) PRIMARY KEY,
  refOeuvre NUMBER(2) REFERENCES OEUVRE(refOeuvre),
  photo BLOB
);

-- on cr�er les s�quences

CREATE SEQUENCE SEQ_CLIENT INCREMENT BY 1 START WITH 1 MINVALUE 1 NOCACHE NOCYCLE;
CREATE SEQUENCE SEQ_FACTURE INCREMENT BY 1 START WITH 1 MINVALUE 1 NOCACHE NOCYCLE;
CREATE SEQUENCE SEQ_OEUVRE INCREMENT BY 1 START WITH 1 MINVALUE 1 NOCACHE NOCYCLE;


CREATE VIEW lienArtisteOeuvres AS
SELECT idClient AS idArtiste, nom || ' ' || prenom AS Nom, titre AS titreOeuvre
FROM oeuvre O INNER JOIN (Client C INNER JOIN Artiste A ON C.idclient = A.idartiste) ON O.idArtiste = C.IDCLIENT
Order by idClient;

CREATE VIEW lienArtisteNom AS
SELECT idClient AS idArtiste, nom || ' ' || prenom AS Nom
FROM Client C INNER JOIN Artiste A ON C.idclient = A.idartiste
Order by idClient;

---------------------------------------------------FIN TP5---------------------------------------------------------------------

---------------------------------------------------Debut TP6---------------------------------------------------------------------
--On cr�er les triggers

create or replace TRIGGER CLIENT_TRG 
BEFORE INSERT ON CLIENT
FOR EACH ROW 
BEGIN
  SELECT SEQ_CLIENT.NEXTVAL INTO :NEW.IDCLIENT FROM DUAL;
END;
/


create or replace TRIGGER "OEUVRE_TRG" 
BEFORE INSERT ON OEUVRE 
FOR EACH ROW 
BEGIN
  SELECT SEQ_OEUVRE.NEXTVAL INTO :NEW.REFOEUVRE FROM DUAL;
END; 
/


create or replace TRIGGER FACTURE_TRG 
BEFORE INSERT ON FACTURE 
FOR EACH ROW 
BEGIN
  SELECT SEQ_FACTURE.NEXTVAL INTO :NEW.IDFACTURE FROM DUAL;
END;
/


---------------------------------------------------FIN TP6---------------------------------------------------------------------

---------------------------------------------------Debut TP7---------------------------------------------------------------------

CREATE VIEW vueAchat AS select refoeuvre, titre, prix from OEUVRE where ESTALAVENTE = 1;

CREATE VIEW LIENARTISTENOM AS SELECT idClient AS idArtiste, nom || ' ' || prenom AS Nom FROM Client C INNER JOIN Artiste A ON C.idclient = A.idartiste Order by idClient;

CREATE VIEW OEUVRESVENDUES AS SELECT titre, O.refoeuvre FROM OEUVRE O INNER JOIN OEUVRE_ACHETEE OA ON O.refoeuvre = OA.refoeuvre order by O.refoeuvre;








---------------------------------------------------Fin TP7---------------------------------------------------------------------