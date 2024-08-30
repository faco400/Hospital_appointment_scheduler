CREATE TABLE Users (
    password_hash VARCHAR(255) NOT NULL,
    name VARCHAR(50) NOT NULL,
    email VARCHAR(100) NOT NULL UNIQUE,
    role ENUM('patient', 'doctor', 'admin') NOT NULL
);

CREATE TABLE Patients (
    patient_id INT PRIMARY KEY,
    date_of_birth DATE,
    patient_email VARCHAR(100) NOT NULL UNIQUE,
    FOREIGN KEY (patient_email) REFERENCES Users(email)
);

CREATE TABLE Doctors (
    doctor_id INT PRIMARY KEY,
    specialization VARCHAR(100),
    availability BOOLEAN,
    doctor_email VARCHAR(100) NOT NULL UNIQUE,
    FOREIGN KEY (doctor_email) REFERENCES Users(email)
);

CREATE TABLE Appointments (
    appointment_id INT AUTO_INCREMENT PRIMARY KEY,
    patient_id INT,
    doctor_id INT,
    appointment_date DATETIME,
    duration INT,
    status ENUM('scheduled', 'completed', 'cancelled') NOT NULL,
    FOREIGN KEY (patient_id) REFERENCES Patients(patient_id),
    FOREIGN KEY (doctor_id) REFERENCES Doctors(doctor_id)
);


CREATE TABLE Symptoms (
    symptom_id INT AUTO_INCREMENT PRIMARY KEY,
    symptom_name VARCHAR(255) NOT NULL
);

CREATE TABLE Specializations (
    specialization_id INT AUTO_INCREMENT PRIMARY KEY,
    specialization_name VARCHAR(255) NOT NULL
);

CREATE TABLE Appointment_contains_Symptoms (
    appointment_id INT,
    symptom_id INT,
    PRIMARY KEY (appointment_id, symptom_id),
    FOREIGN KEY (appointment_id) REFERENCES Appointments(appointment_id),
    FOREIGN KEY (symptom_id) REFERENCES Symptoms(symptom_id)
);
