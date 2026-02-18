
CREATE TABLE public.region (
                Code_dep_code_commune VARCHAR(5) NOT NULL,
                reg_code INTEGER NOT NULL,
                reg_nom VARCHAR(50) NOT NULL,
                aca_nom VARCHAR(50) NOT NULL,
                dep_nom VARCHAR(50) NOT NULL,
                com_nom_maj_court VARCHAR(50) NOT NULL,
                dep_code VARCHAR(3) NOT NULL,
                dep_nom_num VARCHAR(50) NOT NULL,
                CONSTRAINT code_dep_code_commune PRIMARY KEY (Code_dep_code_commune)
);


CREATE TABLE public.contrat (
                Contrat_ID INTEGER NOT NULL,
                No_voie INTEGER,
                B_T_Q CHAR(1),
                Type_de_voie VARCHAR(4),
                Voie VARCHAR(150) NOT NULL,
                code_dep_code_commune VARCHAR(5) NOT NULL,
                Code_postal VARCHAR(5) NOT NULL,
                Surface INTEGER NOT NULL,
                Type_local VARCHAR(30) NOT NULL,
                Occupation VARCHAR(30) NOT NULL,
                Type_contrat VARCHAR(30) NOT NULL,
                Formule VARCHAR(30) NOT NULL,
                Valeur_declaree_biens VARCHAR(30) NOT NULL,
                Prix_cotisation_mensuel INTEGER NOT NULL,
                CONSTRAINT contrat_id PRIMARY KEY (Contrat_ID)
);


ALTER TABLE public.contrat ADD CONSTRAINT region_contrat_fk
FOREIGN KEY (code_dep_code_commune)
REFERENCES public.region (Code_dep_code_commune)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;
