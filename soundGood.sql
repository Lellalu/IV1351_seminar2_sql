CREATE TABLE Address (
 city VARCHAR(50),
 zip VARCHAR(5),
 street VARCHAR(100)
);


CREATE TABLE Instrument (
 id INT NOT NULL,
 instrumentID  VARCHAR(10) NOT NULL UNIQUE,
 brand VARCHAR(10) NOT NULL,
 type VARCHAR(10) NOT NULL,
 quantity VARCHAR(10) NOT NULL
);

ALTER TABLE Instrument ADD CONSTRAINT PK_Instrument PRIMARY KEY (id);


CREATE TABLE LessonPrice (
 id INT NOT NULL,
 type VARCHAR(10) NOT NULL,
 level  VARCHAR(10),
 priceAmount  VARCHAR(10) NOT NULL,
 startTime TIMESTAMP NOT NULL,
 endTime TIMESTAMP
);

ALTER TABLE LessonPrice ADD CONSTRAINT PK_LessonPrice PRIMARY KEY (id);


CREATE TABLE Person (
 id INT NOT NULL,
 personNumber VARCHAR(12) NOT NULL UNIQUE,
 name CHAR(100) NOT NULL,
 city VARCHAR(50),
 zip VARCHAR(5),
 street VARCHAR(100)
);

ALTER TABLE Person ADD CONSTRAINT PK_Person PRIMARY KEY (id);


CREATE TABLE Phone (
 id INT NOT NULL,
 phoneNo VARCHAR(12) UNIQUE
);

ALTER TABLE Phone ADD CONSTRAINT PK_Phone PRIMARY KEY (id);


CREATE TABLE SiblingsInfo (
 siblings VARCHAR(500)
);


CREATE TABLE Student (
 id INT NOT NULL,
 discount VARCHAR(10),
 siblingInfo VARCHAR(500),
 person_id INT NOT NULL,
 contactPersonPhone VARCHAR(12)
);

ALTER TABLE Student ADD CONSTRAINT PK_Student PRIMARY KEY (id);


CREATE TABLE Instructor (
 id INT NOT NULL,
 instrumentsTaught CHAR(500) NOT NULL,
 person_id INT NOT NULL
);

ALTER TABLE Instructor ADD CONSTRAINT PK_Instructor PRIMARY KEY (id);


CREATE TABLE LessonSchedule (
 id INT NOT NULL,
 startTime  TIMESTAMP NOT NULL,
 endTime TIMESTAMP NOT NULL,
 level VARCHAR(50),
 type VARCHAR(50) NOT NULL,
 lessonPriceId INT NOT NULL,
 instructor_id INT NOT NULL
);

ALTER TABLE LessonSchedule ADD CONSTRAINT PK_LessonSchedule PRIMARY KEY (id);


CREATE TABLE person_phone (
 person_id INT NOT NULL,
 phone_id INT NOT NULL
);

ALTER TABLE person_phone ADD CONSTRAINT PK_person_phone PRIMARY KEY (person_id,phone_id);


CREATE TABLE Rental (
 id INT NOT NULL,
 rentalID VARCHAR(500) NOT NULL UNIQUE,
 startDate TIMESTAMP NOT NULL,
 endDate TIMESTAMP NOT NULL,
 instrument_id INT NOT NULL,
 student_id INT NOT NULL
);

ALTER TABLE Rental ADD CONSTRAINT PK_Rental PRIMARY KEY (id);


CREATE TABLE student_lessonSchedule (
 lessonId INT NOT NULL,
 student_id INT NOT NULL
);

ALTER TABLE student_lessonSchedule ADD CONSTRAINT PK_student_lessonSchedule PRIMARY KEY (lessonId,student_id);


CREATE TABLE LessonCapacity (
 id INT NOT NULL,
 max VARCHAR(10),
 min VARCHAR(10) NOT NULL,
 lessonId INT NOT NULL
);

ALTER TABLE LessonCapacity ADD CONSTRAINT PK_LessonCapacity PRIMARY KEY (id);


CREATE TABLE LessonGenre (
 id INT NOT NULL,
 genre  VARCHAR(50) NOT NULL,
 lessonId INT NOT NULL
);

ALTER TABLE LessonGenre ADD CONSTRAINT PK_LessonGenre PRIMARY KEY (id);


CREATE TABLE LessonInstrument (
 id INT NOT NULL,
 taughtInstrument CHAR(50) NOT NULL,
 lessonId INT NOT NULL
);

ALTER TABLE LessonInstrument ADD CONSTRAINT PK_LessonInstrument PRIMARY KEY (id);


ALTER TABLE Student ADD CONSTRAINT FK_Student_0 FOREIGN KEY (person_id) REFERENCES Person (id);


ALTER TABLE Instructor ADD CONSTRAINT FK_Instructor_0 FOREIGN KEY (person_id) REFERENCES Person (id);


ALTER TABLE LessonSchedule ADD CONSTRAINT FK_LessonSchedule_0 FOREIGN KEY (lessonPriceId) REFERENCES LessonPrice (id);
ALTER TABLE LessonSchedule ADD CONSTRAINT FK_LessonSchedule_1 FOREIGN KEY (instructor_id) REFERENCES Instructor (id);


ALTER TABLE person_phone ADD CONSTRAINT FK_person_phone_0 FOREIGN KEY (person_id) REFERENCES Person (id);
ALTER TABLE person_phone ADD CONSTRAINT FK_person_phone_1 FOREIGN KEY (phone_id) REFERENCES Phone (id);


ALTER TABLE Rental ADD CONSTRAINT FK_Rental_0 FOREIGN KEY (instrument_id) REFERENCES Instrument (id);
ALTER TABLE Rental ADD CONSTRAINT FK_Rental_1 FOREIGN KEY (student_id) REFERENCES Student (id);


ALTER TABLE student_lessonSchedule ADD CONSTRAINT FK_student_lessonSchedule_0 FOREIGN KEY (lessonId) REFERENCES LessonSchedule (id);
ALTER TABLE student_lessonSchedule ADD CONSTRAINT FK_student_lessonSchedule_1 FOREIGN KEY (student_id) REFERENCES Student (id);


ALTER TABLE LessonCapacity ADD CONSTRAINT FK_LessonCapacity_0 FOREIGN KEY (lessonId) REFERENCES LessonSchedule (id);


ALTER TABLE LessonGenre ADD CONSTRAINT FK_LessonGenre_0 FOREIGN KEY (lessonId) REFERENCES LessonSchedule (id);


ALTER TABLE LessonInstrument ADD CONSTRAINT FK_LessonInstrument_0 FOREIGN KEY (lessonId) REFERENCES LessonSchedule (id);


