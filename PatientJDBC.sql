create table PatientClinic(PatientId Number(8) Primary Key,
        PatientName varchar2(20) NOT NULL,
        PatientEmail varchar2(20), 
        PatientRegDate date default sysdate,
        CONSTRAINT email_unique UNIQUE (PatientEmail));
        
        
create table PatientPrescription(PrescriptionId Number(8) Primary Key,
        PrescribedDate date default sysdate,
        PatientId number(8),
        MedicineName varchar(20) not null,
        CONSTRAINT fk_patientId
        FOREIGN KEY (PatientId)
        REFERENCES PatientClinic(PatientId));
        
        
select * from PatientClinic         

select * from PatientPrescription