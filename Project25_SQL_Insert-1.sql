INSERT INTO [UmdHealthCentre.Doctor] VALUES
('1', ' Dr. Reddy ',' Cardiologist '),
('12', ' Dr. Sharma ',' Physiotherapist '),
('2', ' Dr. Jones',' Physiotherapist '),
('23', ' Dr. Wright ',' Psychiatrist ');

   INSERT INTO [UmdHealthCentre.PatientRecord] VALUES
('1','Rahul Modi','1'),
('2','Abbhishek Deshpande','1'),
('5','John Wenger','1'),
('12','Stacy James','12'),
('11','Jim Pit','12'),
('6','Alice Stewart','12'),
('3','Ab Dee', '12'),
('7','Jack Chan', '12'),
('4','Kevin Gru', '2'),
('8','Carl Walker', '23'),
('9','Jay School', '23'),
('10','John Watson', '23')
;

   INSERT INTO [UmdHealthCentre.StudentDB] VALUES
('123', ' Rahul Modi', '9314, Cherry Hill Road, College Park, MD, USA', '12309014311', 'rahul.m@gmail.com', 'diabetic', '1'),
('420', ' Jack Chan', '12 MGM, College Park , MD, USA', '2128798127', 'jchan@gmail.com', 'High Blood Pressure', '7'),
('786', ' Kevin Gru', '7, Ferris Maner, College Park, MD, USA', '1059091298', 'kgru@gmail.com', 'Asthma', '4'),
('111','Abhishek Deshpande','8, Ferris Maner, College Park, MD, USA', '5629091298', 'adeshpande@gmail.com', 'High Cholestrol', '2'),
('222','Ab Dee','73, University view, College Park, MD, USA', '1029091223', 'abdee@gmail.com', 'Fracture in right arm', '3'),
('543','John Wenger','74, University view, College Park, MD, USA', '1024591298', 'jwenger@gmail.com', 'Fracture in right leg', '5'),
('121','Alice Stewart','237, University view, College Park, MD, USA', '1035491298', 'astewart@gmail.com', 'Low Rbc in Blood', '6'),
('114','Stacy James','74, Parkside, College Park, MD, USA', '1029091345', 'sjames@gmail.com', 'Low Blood Preasure', '12'),
('645','Carl Walker','74, Parkside, College Park, MD, USA', '1029091234', 'cwalker@gmail.com', 'None', '8'),
('323','Jay School', '73, Graduate Gardens, College Park, MD, USA', '1034509198', 'jschool@gmail.com', 'None', '9'),
('754','John Watson', '27, Graduate Gardens, College Park, MD, USA', '1029091298', 'jwatson@gmail.com', 'None', '10'),
('465','Jim Pit', '73, Graduate Gardens, College Park, MD, USA', '1029091298', 'jpit@gmail.com', 'Back Pain', '11');

   INSERT INTO [UmdHealthCentre.Insurance] VALUES
('121',' Bajaj Allianze ', ' Student Elite'),
('231',' Bajaj Allianze ', ' Student Gold'),
('465',' Care First ', ' Student Silver'),
('75',' Care First ', ' Student Gold'),
('645',' Care First ', ' Student Gold'),
('11',' Care First ', ' Student Gold'),
('129',' Bajaj Allianze ', ' Student Gold'),
('43',' Bajaj Allianze ', ' Student Gold'),
('222',' Bajaj Allianze ', ' Student Gold');

INSERT INTO [UmdHealthCentre.Medicine] VALUES
('22','cyclopalm', 'Sanofi Aventis'),
('233','Tylenol', 'Ranbaxy'),
('23','cylenol', 'Sanofi Aventis'),
('2','Tenol', 'Sanofi Aventis'),
('13','Tyeol', 'Ranbaxy'),
('98','Coasbiflame', 'BioRad'),
('99','Combse', 'BioRad'),
('89','kaflame', 'BioRad');


INSERT INTO [UmdHealthCentre.Treatment] VALUES
('22','$1000.00'),
('1','$123.21'),
('2','$234'),
('3','$567'),
('4','$71.21'),
('11','$331.21'),
('7','$53');
	
INSERT INTO [UmdHealthCentre.ParticipatesIn] VALUES
('121','1'),
('231','12'),
('11','23');

INSERT INTO [UmdHealthCentre.Treats] VALUES
('1','1','22'),
('12','7','11'),
('23','4','7'),
('2','12','7'),
('2','10','3'),
('2','11','11'),
('23','2','2'),
('23','3','4'),
('12','5','4'),
('12','6','3'),
('12','8','4'),
('12','9','2');

INSERT INTO [UmdHealthCentre.Prescribed] VALUES
('12','22','2'),
('10','233','3'),
('11','99','1'),
('2','89','3'),
('3','98','6'),
('5','2','5'),
('6','13','1'),
('8','13','2'),
('9','233','3');
