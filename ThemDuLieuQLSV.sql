USE QuanLySinhVien;
USE QuanLySinhVien;
GO

SELECT DB_NAME();
USE QuanLySinhVien;
GO

SELECT TABLE_NAME
FROM INFORMATION_SCHEMA.TABLES
WHERE TABLE_TYPE = 'BASE TABLE';
USE QuanLySinhVien;
GO

SELECT DB_NAME();
USE QuanLySinhVien;
GO

SELECT TABLE_NAME
FROM INFORMATION_SCHEMA.TABLES
WHERE TABLE_TYPE = 'BASE TABLE';
USE QuanLySinhVien;
GO

SET IDENTITY_INSERT Class ON;
GO

INSERT INTO Class (ClassID, ClassName, StartDate, Status)
VALUES (1, 'A1', '2008-12-20', 1);

INSERT INTO Class (ClassID, ClassName, StartDate, Status)
VALUES (2, 'A2', '2008-12-22', 1);

INSERT INTO Class (ClassID, ClassName, StartDate, Status)
VALUES (3, 'B3', GETDATE(), 0);

SET IDENTITY_INSERT Class OFF;
GO
SELECT * FROM Class;
SET IDENTITY_INSERT Student ON;
GO

INSERT INTO Student (StudentID, StudentName, Address, Phone, Status, ClassId)
VALUES (1, 'Hung', 'Ha Noi', '0912113113', 1, 1);

INSERT INTO Student (StudentID, StudentName, Address, Status, ClassId)
VALUES (2, 'Hoa', 'Hai phong', 1, 1);

INSERT INTO Student (StudentID, StudentName, Address, Phone, Status, ClassId)
VALUES (3, 'Manh', 'HCM', '0123123123', 0, 2);
GO

SET IDENTITY_INSERT Student OFF;
GO

SELECT * FROM Student;

USE QuanLySinhVien;
GO

SET IDENTITY_INSERT Subject ON;
GO

INSERT INTO Subject (SubID, SubName, Credit, Status)
VALUES
(1, 'CF', 5, 1),
(2, 'C', 6, 1),
(3, 'HDJ', 5, 1),
(4, 'RDBMS', 10, 1);
GO

SET IDENTITY_INSERT Subject OFF;
GO

SELECT * FROM Subject;




USE QuanLySinhVien;
GO

SET IDENTITY_INSERT Mark ON;
GO

INSERT INTO Mark (MarkID, SubID, StudentID, Mark, ExamTimes)
VALUES
(1, 1, 1, 8, 1),
(2, 1, 2, 10, 2),
(3, 2, 1, 12, 1);
GO

SET IDENTITY_INSERT Mark OFF;
GO

SELECT * FROM Mark;