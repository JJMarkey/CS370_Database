--
-- ER/Studio Data Architect SQL Code Generation
-- Project :      RecordsModel.dm1
--
-- Date Created : Wednesday, May 09, 2018 02:30:23
-- Target DBMS : MySQL 5.x
--

-- 
-- TABLE: Artists 
--

CREATE TABLE Artists(
    artistID      INT         AUTO_INCREMENT,
    artistName    CHAR(24)    NOT NULL,
    PRIMARY KEY (artistID)
)ENGINE=MYISAM
;



-- 
-- TABLE: AuthorOfLineNumber 
--

CREATE TABLE AuthorOfLineNumber(
    linNAuthorID    INT         AUTO_INCREMENT,
    authorName        CHAR(40),
    PRIMARY KEY (linNAuthorID)
)ENGINE=MYISAM
;



-- 
-- TABLE: MusicCategory 
--

CREATE TABLE MusicCategory(
    categoryID          INT         AUTO_INCREMENT,
    mainCategoryName    CHAR(16)    NOT NULL,
    subCategoryName     CHAR(20),
    PRIMARY KEY (categoryID)
)ENGINE=MYISAM
;



-- 
-- TABLE: Photos 
--

CREATE TABLE Photos(
    pictureID      INT          AUTO_INCREMENT,
    pictureType    CHAR(3),
    photoName      CHAR(128)    NOT NULL,
    recordID       INT          NOT NULL,
    PRIMARY KEY (pictureID)
)ENGINE=MYISAM
;



-- 
-- TABLE: RecordCompany 
--

CREATE TABLE RecordCompany(
    companyID      INT         AUTO_INCREMENT,
    companyName    CHAR(40)    NOT NULL,
    PRIMARY KEY (companyID)
)ENGINE=MYISAM
;



-- 
-- TABLE: Records 
--

CREATE TABLE Records(
    recordID           INT              AUTO_INCREMENT,
    recordSize         INT              NOT NULL,
    recordTitle        CHAR(40)         NOT NULL,
    producer           CHAR(40)         NOT NULL,
    releaseYear        CHAR(10)         NOT NULL,
    recordCondition    CHAR(2)          NOT NULL,
    estimValue         DOUBLE(18, 0)    NOT NULL,
    price              DOUBLE(18, 0)    NOT NULL,
    categoryID         INT              NOT NULL,
    sellerID           INT              NOT NULL,
    companyID          INT              NOT NULL,
    linNAuthorID       INT              NOT NULL,
    artistID           INT              NOT NULL,
    PRIMARY KEY (recordID)
)ENGINE=MYISAM
;



-- 
-- TABLE: Seller 
--

CREATE TABLE Seller(
    sellerID         INT          AUTO_INCREMENT,
    sellerName       CHAR(50)     NOT NULL,
    sellerAddress    CHAR(100)    NOT NULL,
    PRIMARY KEY (sellerID)
)ENGINE=MYISAM
;



-- 
-- TABLE: Songs 
--

CREATE TABLE Songs(
    songID      INT         AUTO_INCREMENT,
    recordID    INT         NOT NULL,
    songName    CHAR(50)    NOT NULL,
    PRIMARY KEY (songID)
)ENGINE=MYISAM
;



-- 
-- TABLE: Photos 
--

ALTER TABLE Photos ADD CONSTRAINT RefRecords11 
    FOREIGN KEY (recordID)
    REFERENCES Records(recordID)
;


-- 
-- TABLE: Records 
--

ALTER TABLE Records ADD CONSTRAINT RefMusicCategory9 
    FOREIGN KEY (categoryID)
    REFERENCES MusicCategory(categoryID)
;

ALTER TABLE Records ADD CONSTRAINT RefSeller14 
    FOREIGN KEY (sellerID)
    REFERENCES Seller(sellerID)
;

ALTER TABLE Records ADD CONSTRAINT RefRecordCompany19 
    FOREIGN KEY (companyID)
    REFERENCES RecordCompany(companyID)
;

ALTER TABLE Records ADD CONSTRAINT RefAuthorOfLineNumber22 
    FOREIGN KEY (linNAuthorID)
    REFERENCES AuthorOfLineNumber(linNAuthorID)
;

ALTER TABLE Records ADD CONSTRAINT RefArtists24 
    FOREIGN KEY (artistID)
    REFERENCES Artists(artistID)
;


-- 
-- TABLE: Songs 
--

ALTER TABLE Songs ADD CONSTRAINT RefRecords10 
    FOREIGN KEY (recordID)
    REFERENCES Records(recordID)
;


