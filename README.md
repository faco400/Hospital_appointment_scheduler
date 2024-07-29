# Hospital_appointment_scheduler


# Documentation

## Content

- [Description](#description)
- [Functional Requirements](#functional-requirements)
- [Technical requirements](#technical-requirements)
- [API Documentation](#api-documentation)
- [Install](#technical-requirements)
- [Run](#run-in-docker-container)

---

## Description

This project consists on a 
**hospital appointment scheduling** system. 
With it patients should be able to enter their symptoms or required specialization (e.g., cardiology, surgery), and the system  will find the nearest available appointment date with a doctor of the specified specialization. 

The system should consider doctor availability, patient load, and appointment duration.

---

## Functional requirements

<!-- Consider put api routes as they are implemented... -->
| **Functional Requirement** | **Description** | 
|----------------------------| --------------- |
| **User Management**        |                 |
| User registration        | Register a new patient. |
| User Authentication        | Authenticate a patient. |
| User Profile Management    | Retrieve/update patient profile information. |
| **Appointment Scheduling** |                 |
| Symptoms/Specialization input | Input symptoms or select required specialization  |
| Appointment Search         | Search for available appointments |
| Appointment Booking        | Book an appointment |
| Appointment Comfirmation   | Confirm an appointment |
| Appointment Cancelation    | Cancel an appointment |
| Appointment Rescheduling   | Reschedule an appointment |
| **Doctor Management**      |                 |
| Doctor registration        | Register a new Doctor. |
| Doctor profile Management  | Retrieve/update patient profile information. |
| Doctor availability        | Set/Update availability for doctor |
<!-- | **Availability  and Scheduling** |           | -->
| Availability Check |  Check doctor's availability |



## Technical requirements

- Programming language: **Javascript**
- Database: **MySQL**
<!-- 
- Docker -->

---

## Base URL

`http://localhost:3000`

---

## API Documentation

1. Endpoint `api/login`:
- POST `api/login` - login in application

Request:
```
curl -X 'POST' \\
‘/login’ \\
{
  "username": "username",
  "password": "password"
}
```

Response body:
```
{
  "token": "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MSwicm9sZXMiOlsiQURNSU4iXSwiZXhwIjoiMTY3OTMzMTQ1MDI0aCJ9.4d2cdf71-78e57a475bed0bd4414526df-196a8ed6"
}
```


### Install



### Run in docker container

<!-- For running application in Docker container you should have docker installed on your system

Run app

```
docker compose up

```

Stop app

```
docker compose down

``` -->