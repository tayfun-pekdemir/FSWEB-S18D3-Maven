-- 1) DOCTOR TABLOSU
CREATE TABLE doctor (
    id BIGINT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    name VARCHAR,
    surname VARCHAR,
    proficiency VARCHAR
);

-- 2) NURSE TABLOSU
CREATE TABLE nurse (
    id BIGINT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    name VARCHAR,
    surname VARCHAR,
    proficiency VARCHAR
);

-- 3) PATIENT TABLOSU
CREATE TABLE patient (
    id BIGINT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    name VARCHAR,
    surname VARCHAR,
    email VARCHAR,
    complaint TEXT
);

-- 4) SURGERY TABLOSU
CREATE TABLE surgery (
    id BIGINT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    nurse_id BIGINT,
    patient_id BIGINT,
    doctor_id BIGINT,
    CONSTRAINT fk_surgery_nurse FOREIGN KEY (nurse_id) REFERENCES nurse(id),
    CONSTRAINT fk_surgery_patient FOREIGN KEY (patient_id) REFERENCES patient(id),
    CONSTRAINT fk_surgery_doctor FOREIGN KEY (doctor_id) REFERENCES doctor(id)
);

-- 5) OPERATION TABLOSU
CREATE TABLE operation (
    id BIGINT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    patient_id BIGINT,
    doctor_id BIGINT,
    CONSTRAINT fk_operation_patient FOREIGN KEY (patient_id) REFERENCES patient(id),
    CONSTRAINT fk_operation_doctor FOREIGN KEY (doctor_id) REFERENCES doctor(id)
);
