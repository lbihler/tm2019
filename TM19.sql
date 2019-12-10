DROP TABLE WINEREGIONS;
CREATE TABLE WINEREGIONS (	
"REGID" NUMBER(15,0) GENERATED ALWAYS AS IDENTITY MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER NOCYCLE NOKEEP NOSCALE NOT NULL ENABLE,
"REGNAME" VARCHAR2(50 CHAR) NOT NULL ENABLE, 
"REGDESC" VARCHAR2(255 CHAR) COLLATE "USING_NLS_COMP" NOT NULL ENABLE, 
CONSTRAINT "WINEREGIONS_PK" PRIMARY KEY ("REGID")
);

DROP TABLE WINES;
CREATE TABLE WINES (	
"REGID" NUMBER(15,0),
"WINEID" NUMBER(15,0) GENERATED ALWAYS AS IDENTITY MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER NOCYCLE NOKEEP NOSCALE NOT NULL ENABLE,
"WINENAME" VARCHAR2(50 CHAR) NOT NULL ENABLE, 
"WINEDESC" VARCHAR2(255 CHAR) COLLATE "USING_NLS_COMP" NOT NULL ENABLE, 
"WINERATING" NUMBER(1), 
CONSTRAINT "WINES_PK" PRIMARY KEY ("WINEID"),
CONSTRAINT "WINES_FK1" FOREIGN KEY ("REGID")
REFERENCES "WINEREGIONS" ("REGID") ENABLE
);

