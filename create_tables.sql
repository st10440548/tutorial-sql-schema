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
	
	-- Insert into Student table
INSERT INTO Student (StudentID, StudentName, StudentSurname, StudentNumber)
VALUES 
(1, 'Debbie', 'Theart', '123456'),
(2, 'Thomas', 'Duncan', '654321');

-- Insert into Lecturer table
INSERT INTO Lecturer (LecturerID, LecturerName, LecturerSurname)
VALUES 
(1, 'Zintle', 'Nukani'),
(2, 'Ravi', 'Maharaj');

-- Insert into Tutorial table
INSERT INTO Tutorial (TutorialID, StudentID, LecturerID, TutorialDate, TutorialTime, TutorialDuration)
VALUES
(1, 1, 2, '2025-01-15', '09:00:00', 180),
(2, 1, 2, '2025-01-18', '15:00:00', 240),
(3, 2, 1, '2025-01-20', '10:00:00', 180),
(4, 2, 1, '2025-01-21', '11:00:00', 180);

-- Q.3.5: Display tutorials between 2025-01-16 and 2025-01-20 (inclusive)
SELECT *
FROM Tutorial
WHERE TutorialDate BETWEEN '2025-01-16' AND '2025-01-20';

-- Q.3.6: Display student names with total number of tutorials, sorted descending
SELECT 
    s.StudentName,
    s.StudentSurname,
    COUNT(t.TutorialID) AS TotalTutorials
FROM 
    Student s
JOIN 
    Tutorial t ON s.StudentID = t.StudentID
GROUP BY 
    s.StudentID, s.StudentName, s.StudentSurname
ORDER BY 
    TotalTutorials DESC;
	
-- Q.3.7: Create a view listing students with tutorials under Lecturer ID 2
CREATE VIEW StudentsWithLecturer2 AS
SELECT 
    s.StudentName,
    s.StudentSurname
FROM 
    Student s
JOIN 
    Tutorial t ON s.StudentID = t.StudentID
WHERE 
    t.LecturerID = 2
GROUP BY 
    s.StudentID, s.StudentName, s.StudentSurname
ORDER BY 
    s.StudentSurname ASC;

);


