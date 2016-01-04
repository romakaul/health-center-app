
CREATE TABLE [UmdHealthCentre.Doctor] (
      	docID CHAR (10) NOT NULL,
       docName VARCHAR (20),
  	specialization VARCHAR (30),
CONSTRAINT pk_Doctor_docID PRIMARY KEY (docID));

CREATE TABLE [UmdHealthCentre.PatientRecord] (
	recordID CHAR (50) NOT NULL,
	patientName VARCHAR (20),
       docID CHAR (10),
CONSTRAINT pk_PatientRecord_recordID PRIMARY KEY (recordID),
CONSTRAINT fk_PatientRecord_insuranceID FOREIGN KEY (insuranceID)
REFERENCES [UmdHealthCentre.Insurance] (insuranceID));

CREATE TABLE [UmdHealthCentre.StudentDB] (
       uID CHAR (20) NOT NULL,
       studentName VARCHAR (40),
  	   StudentAddress VARCHAR (80),
    	phoneNo NUMERIC(15),
       emailId VARCHAR (50),
       medicalHistory VARCHAR (50),
       recordId CHAR (50),
CONSTRAINT pk_StudentDB_uID PRIMARY KEY (uID),
CONSTRAINT fk_StudentDB_recordID FOREIGN KEY (recordID)
REFERENCES [UmdHealthCentre.PatientRecord] (recordID)
ON DELETE SET NULL ON UPDATE CASCADE );



CREATE TABLE [UmdHealthCentre.Insurance] (
            insuranceID CHAR (10) NOT NULL,
            companyName VARCHAR (20),
            planType VARCHAR (20),
            CONSTRAINT pk_Insurance_insuranceID PRIMARY KEY (insuranceID) );
 
CREATE TABLE [UmdHealthCentre.Medicine] (
            medID CHAR (10) NOT NULL,
            medName VARCHAR (20),
            manufacturer VARCHAR (20),
            CONSTRAINT pk_Medicine_medID PRIMARY KEY (medID) );

CREATE TABLE [UmdHealthCentre.Treatment] (
treatmentID CHAR (10) NOT NULL,
	amount MONEY, 
CONSTRAINT pk_Treatment_treatmentID PRIMARY KEY (treatmentID));

CREATE TABLE [UmdHealthCentre.ParticipatesIn] (
            insuranceID CHAR (10) NOT NULL,
            docID CHAR (10) NOT NULL,
            CONSTRAINT pk_ParticipatesIn_insuranceID PRIMARY KEY (insuranceID),
            CONSTRAINT fk_ParticipatesIn_insuranceID FOREIGN KEY (insuranceID)
            REFERENCES [UmdHealthCentre.Insurance] (insuranceID)
            ON DELETE CASCADE ON UPDATE CASCADE,
            CONSTRAINT fk_ParticipatesIn_docID FOREIGN KEY (docID)
            REFERENCES [UmdHealthCentre.Doctor] (docID)
            ON DELETE CASCADE ON UPDATE CASCADE) ;
 
CREATE TABLE [UmdHealthCentre.Treats] (
            docID CHAR (10) NOT NULL,
            recordID CHAR (50) NOT NULL,
            treatmentID CHAR (10) NOT NULL,
            CONSTRAINT pk_Treats_docID_recordID_treatmentID PRIMARY KEY (docID,recordID,treatmentID), 
            CONSTRAINT fk_Treats_docID FOREIGN KEY (docID)
            REFERENCES [UmdHealthCentre.Doctor] (docID)
            ON DELETE NO ACTION ON UPDATE CASCADE,
            CONSTRAINT fk_Treats_recordID FOREIGN KEY (recordID)
            REFERENCES [UmdHealthCentre.PatientRecord] (recordID)
            ON DELETE CASCADE ON UPDATE CASCADE,
            CONSTRAINT fk_Treats_treatmentID FOREIGN KEY (treatmentID)
            REFERENCES [UmdHealthCentre.Treatment] (treatmentID)
            ON DELETE NO ACTION ON UPDATE NO ACTION);
 
 
CREATE TABLE [UmdHealthCentre.Prescribed] (
            recordID CHAR (50) NOT NULL,
            medID CHAR (10) NOT NULL,
            NoOfDoses INTEGER,
            CONSTRAINT pk_Prescribed_recordID PRIMARY KEY (recordID,medID),    
            CONSTRAINT fk_Prescribed_recordID FOREIGN KEY (recordID)
            REFERENCES [UmdHealthCentre.PatientRecord] (recordID)
            ON DELETE CASCADE ON UPDATE CASCADE,
            CONSTRAINT fk_Prescribed_medID FOREIGN KEY (medID)
            REFERENCES [UmdHealthCentre.Medicine] (medID)
            ON DELETE NO ACTION ON UPDATE CASCADE) ;
