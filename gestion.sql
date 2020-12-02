#------------------------------------------------------------
#        Script MySQL.
#------------------------------------------------------------


#------------------------------------------------------------
# Table: categorie
#------------------------------------------------------------

CREATE TABLE categorie(
        id      Int  Auto_increment  NOT NULL ,
        libelle Varchar (50) NOT NULL
	,CONSTRAINT PK_categorie PRIMARY KEY (id)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: article
#------------------------------------------------------------

CREATE TABLE article(
        id           Int  Auto_increment  NOT NULL ,
        libelle      Varchar (50) NOT NULL ,
        id_categorie Int NOT NULL
	,CONSTRAINT PK_article PRIMARY KEY (id)

	,CONSTRAINT FK_article_categorie FOREIGN KEY (id_categorie) REFERENCES categorie(id)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: agence
#------------------------------------------------------------

CREATE TABLE agence(
        id      Int  Auto_increment  NOT NULL ,
        libelle Varchar (50) NOT NULL
	,CONSTRAINT PK_agence PRIMARY KEY (id)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: commande
#------------------------------------------------------------

CREATE TABLE commande(
        id        Int  Auto_increment  NOT NULL ,
        date      Date NOT NULL ,
        id_agence Int NOT NULL
	,CONSTRAINT PK_commande PRIMARY KEY (id)

	,CONSTRAINT FK_commande_agence FOREIGN KEY (id_agence) REFERENCES agence(id)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: composition
#------------------------------------------------------------

CREATE TABLE composition(
        id           Int  Auto_increment  NOT NULL ,
        libelle      Varchar (50) NOT NULL ,
        quantite     Int NOT NULL ,
        id_article   Int NOT NULL ,
        id_article_composant Int NOT NULL
	,CONSTRAINT PK_composition PRIMARY KEY (id)

	,CONSTRAINT FK_composition_article FOREIGN KEY (id_article) REFERENCES article(id)
	,CONSTRAINT FK_composition_article0 FOREIGN KEY (id_article_composant) REFERENCES article(id)
	,CONSTRAINT AK_composition_article UNIQUE (id_article_composant)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: ligneCommande
#------------------------------------------------------------

CREATE TABLE ligneCommande(
        id_article          Int NOT NULL ,
        id_commande Int NOT NULL ,
        quantite    Int NOT NULL
	,CONSTRAINT PK_ligneCommande PRIMARY KEY (id_article,id_commande)

	,CONSTRAINT FK_ligneCommande_article FOREIGN KEY (id_article) REFERENCES article(id)
	,CONSTRAINT FK_ligneCommande_commande0 FOREIGN KEY (id_commande) REFERENCES commande(id)
)ENGINE=InnoDB;

