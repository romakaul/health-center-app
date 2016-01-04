/*Display for each Medicine its name, the corresponding count of number of patients using it and the manufacturers by the descending order of Medicine Name- Prescribed Medicine Record*/
Select  m.medName, Count( r.recordID) as 'Number of Patients' , m.manufacturer
From [UmdHealthCentre.Medicine] m, [UmdHealthCentre.Prescribed] r
Where m.medID = r.medID
group by m.medName, m.manufacturer;

/*For each patient, display the record number, the treatment taken and the total estimated cost of all treatments.- Estimated Treatment Cost*/
select f.recordID, p.PatientName, t.amount, t.treatmentID 
from [UmdHealthCentre.Treatment] t, [UmdHealthCentre.Treats] f, [UmdHealthCentre.PatientRecord] p
where t.treatmentID = f.treatmentID
and f.recordID = p.recordID;


/*Display all details about the patient undergoing costliest treatment (using correlated subquery.)- Rich Client*/
Select p.recordID, p.patientName
From  [UmdHealthCentre.PatientRecord] p, [UmdHealthCentre.Treats] t
Where t.treatmentID = (select treatmentID
From [UmdHealthCentre.Treatment]
Where amount= (select MAX(amount)From [UmdHealthCentre.Treatment])) AND p.recordID = t.recordID;


/*Display all details about the doctor and the patients undergoing treatment with estimated cost higher than 500.- Costly Treatment*/ 

Select distinct d.docID, d.docName, p.patientName, p.recordID, t.treatmentID
From [UmdHealthCentre.PatientRecord] p, [UmdHealthCentre.Treats] t, [UmdHealthCentre.Treatment] r, [UmdHealthCentre.Doctor] d
Where t.treatmentID IN
( select treatmentID
From [UmdHealthCentre.Treatment]
Where amount>500)
and p.recordID = t.recordID
and t.docID= d.docId;


/*Display all details of doctors who are treating more than 5 patients- High Contributing Doctor*/
Select d.docID, d.docName
From [UmdHealthCentre.Treats] t, [UmdHealthCentre.Doctor] d
Where t.docID= d.DocID 
Group by d.docID, d.docName
Having Count(*) >= 3;
