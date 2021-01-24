CREATE DATABASE IF NOT EXISTS Bibliothéque;
USE Bibliothéque;

CREATE TABLE Auteur(
	Auteur_id VARCHAR(10) PRIMARY KEY,
    Nom VARCHAR(20),
    Details VARCHAR(50)
    );
    
CREATE TABLE Editeur(
	Editeur_id VARCHAR(10) PRIMARY KEY,
    Nom VARCHAR(20),
    Adresse VARCHAR(50)
    );

CREATE TABLE Genre(
	Genre_id VARCHAR(10) PRIMARY KEY,
    Type_nom VARCHAR(20)
    );

CREATE TABLE Mot_clé(
	MotClé_id VARCHAR(10) PRIMARY KEY,
    MotClé VARCHAR(50)
    );

CREATE TABLE Livre(
	Code_catalogue VARCHAR(10) PRIMARY KEY,
    Titre VARCHAR(20),
    Auteur_id VARCHAR(10),
    Genre_id VARCHAR(10),
    FOREIGN KEY (Auteur_id) REFERENCES Auteur(Auteur_id),
    FOREIGN KEY (Genre_id) REFERENCES Genre(Genre_id)
    );

CREATE TABLE Décrit(
	MotClé_id VARCHAR(10),
    Code_catalogue VARCHAR(10),
    FOREIGN KEY (MotClé_id) REFERENCES Mot_clé(MotClé_id),
    FOREIGN KEY (Code_catalogue) REFERENCES Livre(Code_catalogue),
    PRIMARY KEY (MotClé_id,Code_catalogue)
);

CREATE TABLE Exemplaire(
	Code_rayon VARCHAR(10) PRIMARY KEY,
    Code_catalogue VARCHAR(10),
    Editeur_id VARCHAR(10),
    Date_acquisition DATE,
    Etat_dusure VARCHAR(20),
    FOREIGN KEY (Code_catalogue) REFERENCES Livre(Code_catalogue),
    FOREIGN KEY (Editeur_id) REFERENCES Editeur(Editeur_id)
);

CREATE TABLE Date_act(
	Date_act DATE PRIMARY KEY
);

CREATE TABLE Abonné(
	Matricule VARCHAR(10) PRIMARY KEY,
    Nom VARCHAR(20),
    Prénom VARCHAR(30),
    Addresse VARCHAR (50),
    Téléphone INT,
    Date_de_naissance DATE,
    Statut VARCHAR(15)
);

CREATE TABLE Abonné_prioritaire(
	Matricule VARCHAR(10),
    Date_dadhesion DATE,
    Date_de_fin DATE GENERATED ALWAYS AS (Date_dadhesion+INTERVAL 1 WEEK),
    FOREIGN KEY (Matricule) REFERENCES Abonné(Matricule),
    FOREIGN KEY (Date_dadhesion) REFERENCES Date_act(Date_act),
    PRIMARY KEY (Matricule,Date_dadhesion)
);

CREATE TABLE Demande(
	Code_catalogue VARCHAR(10),
    Matricule VARCHAR(10),
    Date_de_res DATE,
    FOREIGN KEY (Code_catalogue) REFERENCES Livre(Code_catalogue),
    FOREIGN KEY (Matricule) REFERENCES Abonné(Matricule),
    FOREIGN KEY (Date_de_res) REFERENCES Date_act(Date_act),
    PRIMARY KEY (Code_catalogue,Matricule,Date_de_res)
);

CREATE TABLE Prêt(
	Code_rayon VARCHAR(10),
    Matricule VARCHAR(10),
    Date_emprunt DATE,
    Date_retour DATE GENERATED ALWAYS AS (Date_emprunt+INTERVAL 15 DAY),
    FOREIGN KEY (Code_rayon) REFERENCES Exemplaire(Code_rayon),
    FOREIGN KEY (Matricule) REFERENCES Abonné(Matricule),
    FOREIGN KEY (Date_emprunt) REFERENCES Date_act(Date_act),
    PRIMARY KEY (Code_rayon,Date_emprunt)
);