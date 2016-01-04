CREATE VIEW StudentMedicalRecord AS 
SELECT s.studentName, s.medicalHistory, i.insuranceID,p.recordID 
FROM [UmdHealthCentre.StudentDB] s, [UmdHealthCentre.PatientRecord] p, [UmdHealthCentre.Insurance] i
WHERE   i.insuranceID = p.insuranceID AND  s.recordID = p.recordID;

CREATE VIEW PatientBill AS SELECT p.recordID , p.patientName, SUM(t.amount) AS BillAmount
FROM [UmdHealthCentre.PatientRecord] p, [UmdHealthCentre.Treats] r, [UmdHealthCentre.Treatment] t
WHERE  p.recordID = r.recordID AND r.treatmentID = t.treatmentID
GROUP BY p.recordID, p.patientName;

SELECT * FROM StudentMedicalRecord;
SELECT * FROM PatientBill;
