INSERT INTO Genre VALUES ('G001','Bande dessinnée');
INSERT INTO Genre VALUES ('G002','Science Fiction');
INSERT INTO Genre VALUES ('G003','Policier');
INSERT INTO Genre VALUES ('G004','Roman');

INSERT INTO Editeur VALUES ('E001','édition Gallimard','5, rue Gaston-Gallimard,75328 Paris cedex 07');
INSERT INTO Editeur VALUES ('E002','Flammarion','37, quai Panhard-et-Levassor,75647 Paris cedex 13');
INSERT INTO Editeur VALUES ('E003','Bloomsbury','Londre, Royamme-Uni');

INSERT INTO Mot_clé VALUES ('M001','Harry Potter');
INSERT INTO Mot_clé VALUES ('M002','Rowlings');
INSERT INTO Mot_clé VALUES ('M003','Roman');

INSERT INTO Auteur VALUES ('A01','J.K.Rowlings','From England');
INSERT INTO Auteur VALUES ('A02','Guillaume Musso','Premier ecrivan de roman');

INSERT INTO Date_Act VALUES ('2021-01-10');
INSERT INTO Date_Act VALUES ('2021-01-23');
INSERT INTO Date_Act VALUES ('2021-01-24');
INSERT INTO Date_Act VALUES ('2021-01-25');
INSERT INTO Date_Act VALUES ('2021-01-26');
INSERT INTO Date_Act VALUES ('2021-01-27');
INSERT INTO Date_Act VALUES ('2021-01-28');
INSERT INTO Date_Act VALUES ('2021-01-29');
INSERT INTO Date_Act VALUES ('2021-01-30');
INSERT INTO Date_Act VALUES ('2021-01-31');
INSERT INTO Date_Act VALUES ('2020-04-21');
INSERT INTO Date_Act VALUES ('2020-06-13');
INSERT INTO Date_Act VALUES ('2020-07-15');
INSERT INTO Date_Act VALUES ('2020-08-15');
INSERT INTO Date_Act VALUES ('2021-01-19');
INSERT INTO Date_Act VALUES ('2020-06-10');
INSERT INTO Date_Act VALUES ('2020-06-18');

INSERT INTO Livre VALUES ('C01','Harry Potter 1','A01','G002');
INSERT INTO Livre VALUES ('C02','Harry Potter 2','A01','G002');
INSERT INTO Livre VALUES ('C03','Harry Potter 3','A01','G002');
INSERT INTO Livre VALUES ('C04','Harry Potter 4','A01','G002');
INSERT INTO Livre VALUES ('C05','Harry Potter 5','A01','G002');
INSERT INTO Livre VALUES ('C06','La vie secrète','A02','G004');

INSERT INTO Décrit VALUES ('M001','C01');
INSERT INTO Décrit VALUES ('M001','C02');
INSERT INTO Décrit VALUES ('M001','C03');
INSERT INTO Décrit VALUES ('M001','C04');
INSERT INTO Décrit VALUES ('M001','C05');
INSERT INTO Décrit VALUES ('M002','C01');
INSERT INTO Décrit VALUES ('M002','C02');
INSERT INTO Décrit VALUES ('M002','C03');
INSERT INTO Décrit VALUES ('M002','C04');
INSERT INTO Décrit VALUES ('M002','C05');
INSERT INTO Décrit VALUES ('M003','C06');
INSERT INTO Décrit VALUES ('M003','C01');
INSERT INTO Décrit VALUES ('M003','C02');
INSERT INTO Décrit VALUES ('M003','C03');
INSERT INTO Décrit VALUES ('M003','C04');
INSERT INTO Décrit VALUES ('M003','C05');

INSERT INTO Exemplaire VALUES ('R001','C01','E003','2020-04-21','Trés Bon');
INSERT INTO Exemplaire VALUES ('R002','C01','E002','2020-05-21','Trés Bon');
INSERT INTO Exemplaire VALUES ('R003','C01','E003','2020-04-21','Trés Bon');
INSERT INTO Exemplaire VALUES ('R004','C01','E003','2020-04-21','Bon');
INSERT INTO Exemplaire VALUES ('R005','C06','E001','2020-06-13','Trés Bon');
INSERT INTO Exemplaire VALUES ('R006','C06','E001','2020-06-13','Trés Bon');
INSERT INTO Exemplaire VALUES ('R007','C06','E001','2020-06-13','Déchiré');
INSERT INTO Exemplaire VALUES ('R008','C02','E003','2020-04-21','Trés Bon');

INSERT INTO Abonné VALUES ('A001','Jobs','Steve','14 rue le perreux, Nogent sur Marne',0647832534,'2000-03-21','Etudiante');
INSERT INTO Abonné VALUES ('A002','Caille','Laurent','10 rue Jean Jaures, Villemomble',0687560987,'1943-09-18','Senior');
INSERT INTO Abonné VALUES ('A003','Pascal','Sandra','65 rue charles michel, Paris',0734097459,'1999-03-21','Etudiante');

INSERT INTO Abonné_Prioritaire (Matricule,Date_dadhesion) VALUES ('A002','2021-01-10');

INSERT INTO Demande VALUES ('C06','A003','2021-01-23');
INSERT INTO Demande VALUES ('C02','A001','2021-01-23');
INSERT INTO Demande VALUES ('C04','A002','2021-01-19');

INSERT INTO Prêt (Code_rayon,Matricule,Date_emprunt) VALUES ('R001','A003','2021-01-10');
INSERT INTO Prêt (Code_rayon,Matricule,Date_emprunt) VALUES ('R001','A001','2020-06-10');
INSERT INTO Prêt (Code_rayon,Matricule,Date_emprunt) VALUES ('R002','A002','2020-06-18');
INSERT INTO Prêt (Code_rayon,Matricule,Date_emprunt) VALUES ('R002','A002','2020-07-15');
INSERT INTO Prêt (Code_rayon,Matricule,Date_emprunt) VALUES ('R008','A002','2020-08-15');
