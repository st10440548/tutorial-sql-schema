-- Q.3.1: Create the Student table
CREATE TABLE Student (
    StudentID INT PRIMARY KEY,
    StudentName VARCHAR(50) NOT NULL,
    StudentSurname VARCHAR(50) NOT NULL,
    StudentNumber VARCHAR(20) NOT NULL UNIQUE
);

-- Q.3.2: Create the Lecturer table
CREATE TABLE Lecturer (
    LecturerID INT PRIMARY KEY,
    LecturerName VARCHAR(50) NOT NULL,
    LecturerSurname VARCHAR(50) NOT NULL
);

-- Q.3.3: Create the Tutorial table
CREATE TABLE Tutorial (
    TutorialID INT PRIMARY KEY,
    StudentID INT NOT NULL,
    LecturerID INT NOT NULL,
    TutorialDate DATE NOT NULL,
    TutorialTime TIME NOT NULL,
    TutorialDuration INT NOT NULL,
    FOREIGN KEY (StudentID) REFERENCES Student(StudentID),
    FOREIGN KEY (LecturerID) REFERENCES Lecturer(LecturerID)
);


