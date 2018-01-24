CREATE TABLE BOOK (
	BookId INT PRIMARY KEY NOT NULL IDENTITY (1,1),
	Title VARCHAR(50) NOT NULL,
	PublisherName VARCHAR(50) NOT NULL
);

CREATE TABLE BOOK_AUTHORS (
	BookAuthorID INT PRIMARY KEY NOT NULL IDENTITY (1,1),
	BookId VARCHAR(50) NOT NULL,
	AuthorName VARCHAR(50) NOT NULL
);

CREATE TABLE PUBLISHER (
	PublisherID INT PRIMARY KEY NOT NULL IDENTITY (1,1),
	Name VARCHAR(50) NOT NULL,
	Address VARCHAR(50) NOT NULL,
	Phone VARCHAR(25) NOT NULL
);

CREATE TABLE BOOK_LOANS (
	BookLoanID INT PRIMARY KEY NOT NULL IDENTITY (1,1),
	BookId VARCHAR(50) NOT NULL,
	BranchId VARCHAR(50) NOT NULL,
	CardNo VARCHAR(50) NOT NULL,
	DateOut VARCHAR(50) NOT NULL,
	DueDate VARCHAR(50) NOT NULL
);

CREATE TABLE BOOK_COPIES (
	BookCopiesID INT PRIMARY KEY NOT NULL IDENTITY (1,1),
	BookId VARCHAR(50) NOT NULL,
	BranchId VARCHAR(50) NOT NULL,
	No_Of_Copies VARCHAR(50) NOT NULL
);

CREATE TABLE BORROWER (
	BorrowerID INT PRIMARY KEY NOT NULL IDENTITY (1,1),
	CardNo VARCHAR(50) NOT NULL,
	Name VARCHAR(50) NOT NULL,
	Address VARCHAR(50) NOT NULL,
	Phone VARCHAR(25) NOT NULL
);

CREATE TABLE LIBRAY_BRANCH (
	BranchId INT PRIMARY KEY NOT NULL IDENTITY (1,1),
	BranchName VARCHAR(50) NOT NULL,
	Address VARCHAR(50) NOT NULL
);


SET IDENTITY_INSERT BOOK ON
INSERT INTO BOOK
		(BookId, Title, PublisherName)
		VALUES 
		('0001', 'Rage', 'Random House'),
		('0002', 'The Lost Tribe', 'Penguin'),
		('0003', 'Floor Four', 'Wiley'),
		('0004', 'All the Little Children', 'Harper Collins'),
		('0005', 'Exhume', 'Wiley'),
		('0006', 'The Naturalist', 'Random House'),
		('0007', 'Tell Me When I"m Dead', 'Hachette'),
		('0008', 'Double Visions', 'Tyndale'),
		('0009', 'The Knowing', 'Tyndale'),
		('0010', 'Cell', 'Penguin'),
		('0011', 'Interview With A Vampire', 'Random House'),
		('0012', 'Blood Memory', 'Wiley'),
		('0013', 'Pretty Girls Dancing', 'Harper Collins'),
		('0014', 'The Good Samaritan', 'Hachette'),
		('0015', 'Punishment', 'Random House'),
		('0016', 'The Unremembered Girl', 'Penguin'),
		('0017', 'The Stand', 'Penguin'),
		('0018', 'Do Androids Dream of Electric Sheep', 'Harper Collins'),
		('0019', 'You', 'Hachette'),
		('0020', 'Ocean of Storms', 'Tyndale'),
		('0021', 'Fate of Perfection', 'Random House'),
		('0022', 'Golden Age', 'Hachette'),
		('0023', 'The Memory Box', 'Penguin'),
		('0024', 'IT', 'Penguin'),
		('0025', 'Ender"s Game', 'Random House')
;
SET IDENTITY_INSERT BOOK OFF

SET IDENTITY_INSERT BOOK_AUTHORS ON
INSERT INTO BOOK_AUTHORS
		(BookAuthorID, BookId, AuthorName)
		VALUES 
		('1','0001', 'Zygmunt Miloszewski'),
		('2','0002', 'Mark Lee'),
		('3','0003', 'Lopez Jr.'),
		('4','0004', 'Jo Furniss'),
		('5','0005', 'Danielle Girard'),
		('6','0006', 'Andrew Mayne'),
		('7','0007', 'Steven Ramirez'),
		('8','0008', 'Matt Drabble'),
		('9','0009', 'Ninie Hammon'),
		('10','0010', 'Stephen King'),
		('11','0011', 'Anne Rice'),
		('12','0012', 'Perrin Briar'),
		('13','0013', 'Kylie Brant'),
		('14','0014', 'John Marrs'),
		('15','0015', 'Scott J Holliday'),
		('16','0016', 'Eliza Maxwell'),
		('17','0017', 'Stephen King'),
		('18','0018', 'Phillip K Dick'),
		('19','0019', 'Caroline Kepnes'),
		('20','0020', 'Christopher Mari'),
		('21','0021', 'KF Breene'),
		('22','0022', 'James Maxwell'),
		('23','0023', 'Eva Lesko Natiello'),
		('24','0024', 'Stephen King'),
		('25','0025', 'Orson Scott Card')
;
SET IDENTITY_INSERT BOOK_AUTHORS OFF

SET IDENTITY_INSERT PUBLISHER ON
INSERT INTO PUBLISHER
		(PublisherID, Name, Address, Phone)
		VALUES 
		('1','Random House', '1745 Broadway', '800-733-3000'),
		('2','Penguin', '375 Hudson St', '212-366-2000'),
		('3','Wiley', '400-5353 Dundas Street West', '877-762-2974'),
		('4','Harper Collins', '195 Broadway','800-242-7737'),
		('5','Hachette','1290 6th Ave', '800-759-0190'),
		('6','Tyndale','351 Executive Drive', '800-323-9400')
;
SET IDENTITY_INSERT PUBLISHER OFF

SET IDENTITY_INSERT BOOK_LOANS ON
INSERT INTO BOOK_LOANS
		(BookLoanID, BookId, BranchId, CardNo, DateOut, DueDate)
		VALUES 
		('1','0021', '8003', '00008556', '01/01', '01/15'),
		('2','0003', '8001', '00008556', '01/13', '01/27'),
		('3','0016', '8004', '00007149', '01/10', '01/24'),
		('4','0012', '8005', '00007149', '01/16', '01/30'),
		('5','0001', '8002', '00007149', '01/17', '01/31'),
		('6','0022', '8005', '00001357', '01/02', '01/16'),
		('7','0011', '8001', '00001357', '01/09', '01/23'),
		('8','0013', '8001', '00001357', '01/12', '01/26'),
		('9','0002', '8001', '00001357', '01/18', '02/01'),
		('10','0024', '8003', '00001357', '01/18', '02/01'),
		('11','0013', '8005', '00005097', '01/04', '01/18'),
		('12','0010', '8001', '00005097', '01/13', '01/27'),
		('13','0007', '8004', '00005097', '01/12', '01/26'),
		('14','0005', '8004', '00005097', '01/12', '01/26'),
		('15','0015', '8001', '00005097', '01/05', '01/19'),
		('16','0007', '8004', '00004520', '01/01', '01/15'),
		('17','0025', '8004', '00004520', '01/09', '01/23'),
		('18','0018', '8004', '00004520', '01/09', '01/23'),
		('19','0011', '8001', '00004520', '01/17', '01/31'),
		('20','0001', '8005', '00004520', '01/13', '01/27'),
		('21','0015', '8001', '00004520', '01/13', '01/27'),
		('24','0024', '8003', '00002947', '01/05', '01/19'),
		('25','0003', '8004', '00002947', '01/05', '01/19'),
		('26','0020', '8001', '00002947', '01/06', '01/20'),
		('27','0011', '8003', '00002947', '01/18', '02/01'),
		('28','0019', '8005', '00002947', '01/02', '01/16'),
		('29','0001', '8002', '00009682', '01/03', '01/17'),
		('30','0003', '8002', '00009682', '01/03', '01/17'),
		('31','0013', '8005', '00009682', '01/08', '01/22'),
		('32','0017', '8002', '00009682', '01/08', '01/22'),
		('33','0024', '8002', '00009682', '01/01', '01/15'),
		('34','0018', '8004', '00009682', '01/12', '01/26'),
		('35','0018', '8004', '00000681', '01/12', '01/26'),
		('36','0011', '8001', '00000681', '01/16', '01/30'),
		('37','0004', '8002', '00000681', '01/05', '01/19'),
		('38','0007', '8004', '00000681', '01/10', '01/24'),
		('39','0023', '8002', '00000681', '01/10', '01/24'),
		('40','0024', '8002', '00000681', '01/16', '01/30'),
		('41','0013', '8003', '00000681', '01/16', '01/30')
;
SET IDENTITY_INSERT BOOK_LOANS OFF


SET IDENTITY_INSERT BOOK_COPIES ON
INSERT INTO BOOK_COPIES
		(BookCopiesID, BookId, BranchId, No_Of_Copies)
		VALUES 
		('2', '0002', '8001', '3'),
		('3', '0003', '8001', '7'),
		('4', '0006', '8001', '6'),
		('5', '0007', '8001', '2'),
		('6', '0010', '8001', '4'),
		('7', '0011', '8001', '10'),
		('8', '0012', '8001', '6'),
		('9', '0013', '8001', '4'),
		('10', '0014', '8001', '3'),
		('11', '0015', '8001', '8'),
		('12', '0020', '8001', '7'),
		('13', '0001', '8002', '9'),
		('14', '0011', '8002', '5'),
		('15', '0004', '8002', '2'),
		('16', '0002', '8002', '4'),
		('17', '0024', '8002', '3'),
		('18', '0009', '8002', '7'),
		('19', '0017', '8002', '2'),
		('20', '0003', '8002', '6'),
		('21', '0001', '8002', '3'),
		('22', '0014', '8002', '3'),
		('23', '0020', '8002', '7'),
		('24', '0023', '8002', '2'),
		('25', '0002', '8003', '7'),
		('26', '0006', '8003', '2'),
		('27', '0007', '8003', '4'),
		('28', '0009', '8003', '4'),
		('29', '0011', '8003', '5'),
		('30', '0013', '8003', '8'),
		('31', '0014', '8003', '6'),
		('32', '0015', '8003', '7'),
		('33', '0017', '8003', '8'),
		('34', '0020', '8003', '4'),
		('35', '0021', '8003', '2'),
		('36', '0024', '8003', '2'),
		('37', '0001', '8004', '2'),
		('38', '0002', '8004', '3'),
		('39', '0003', '8004', '7'),
		('40', '0005', '8004', '6'),
		('41', '0007', '8004', '8'),
		('42', '0010', '8004', '8'),
		('43', '0013', '8004', '9'),
		('44', '0014', '8004', '7'),
		('45', '0016', '8004', '2'),
		('46', '0018', '8004', '3'),
		('47', '0020', '8004', '4'),
		('48', '0025', '8004', '6'),
		('49', '0001', '8005', '6'),
		('50', '0002', '8005', '6'),
		('51', '0005', '8005', '7'),
		('52', '0007', '8005', '2'),
		('53', '0008', '8005', '9'),
		('54', '0019', '8005', '2'),
		('55', '0011', '8005', '3'),
		('56', '0012', '8005', '3'),
		('57', '0013', '8005', '4'),
		('58', '0021', '8005', '8'),
		('59', '0022', '8005', '6'),
		('60', '0024', '8005', '7')
;
SET IDENTITY_INSERT BOOK_COPIES OFF

SET IDENTITY_INSERT BORROWER ON
INSERT INTO BORROWER
		(BORROWERID, CardNo, Name, Address, Phone)
		VALUES 
		('1', '00000681', 'Samantha', '9754 Silver Harvest Ct', '702-555-1684'),
		('2', '00001357', 'Calvin', '3127 S. Durango Dr', '617-555-6718'),
		('3', '00002947', 'Amy', '550 Washington St', '805-555-1372'),
		('4', '00003691', 'John', '2331 Garnet Star Dr', '617-555-0227'),
		('5', '00004520', 'Amanda', '2986 Tinsbury Dr', '702-555-6945'),
		('6', '00005097', 'Brett', '3767 S Las Vegas Blvd', '70-555-9004'),
		('7', '00006803', 'Melissa', '10123 Tree Bark St', '805-555-6482'),
		('8', '00007149', 'Terry', '4180 S Rainbow Blvd', '805-555-3584'),
		('9', '00008556', 'Jennifer', '10271 S Eastern Ave', '805-555-8254'),
		('10', '00009682', 'Steven', '3764 Alder Ave', '702-555-6667')
;
SET IDENTITY_INSERT BORROWER OFF

SET IDENTITY_INSERT LIBRAY_BRANCH ON
INSERT INTO LIBRAY_BRANCH
		(BranchId, BranchName, Address)
		VALUES 
		('8001', 'Sharpstown', '7660 Clarewood Dr'),
		('8002', 'Central', '700 Boylston St'),
		('8003', 'Brighton', '40 Academy Hill Rd'),
		('8004', 'Scranton', '1725 Slough Avenue'),
		('8005', 'Brookline', '361 Washington St')
;
SET IDENTITY_INSERT LIBRAY_BRANCH OFF




/*1*/
CREATE PROCEDURE dbo.uspGetBookTitle
AS
SELECT * FROM BOOK_COPIES
GO

ALTER PROCEDURE dbo.uspGetBookTitle
AS
BEGIN
	SELECT a1.BookId, a1.BranchId, a1.No_Of_Copies
	FROM BOOK_COPIES a1
	INNER JOIN LIBRAY_BRANCH a2 ON a2.BranchId = a1.BranchId
	WHERE a1.BookId = '0002' AND a2.BranchID = '8001'
END

EXEC dbo.uspGetBookTitle

/*2*/
CREATE PROCEDURE dbo.uspGetBookCopies
AS
SELECT * FROM BOOK_COPIES
GO

ALTER PROCEDURE dbo.uspGetBookCopies
AS
BEGIN
	SELECT a1.BookId, a1.BranchId, a1.No_Of_Copies
	FROM BOOK_COPIES a1
	INNER JOIN LIBRAY_BRANCH a2 ON a2.BranchId = a1.BranchId
	WHERE a1.BookId = '0002'
END

EXEC dbo.uspGetBookCopies

/*3*/
CREATE PROCEDURE dbo.Borrowersnobooks
AS
SELECT * FROM BORROWER
GO

ALTER PROCEDURE dbo.Borrowersnobooks
AS
BEGIN
	SELECT a1.CardNo, a1.Name, a2.BookId
	FROM BORROWER a1
	INNER JOIN BOOK_LOANS a2 ON a2.CardNo = a1.CardNo
END

EXEC dbo.Borrowersnobooks

/*4*/
CREATE PROCEDURE dbo.Sharpstownloan
AS
SELECT * FROM BOOK_LOANS
GO

ALTER PROCEDURE dbo.Sharpstownloan
AS
BEGIN
	SELECT a1.BookId, a1.BranchId, a1.CardNo, a1.DueDate, a2.Name, a2.Address
	FROM BOOK_LOANS a1
	INNER JOIN BORROWER a2 ON a2.CardNo = a1.CardNo
	WHERE a1.BookId = '0002' AND a1.BranchID = '8001' AND a1.DueDate = '02/01'
END

EXEC dbo.Sharpstownloan

/*5*/
CREATE PROCEDURE dbo.Loanedbooks
AS
SELECT * FROM BOOK_LOANS
GO

ALTER PROCEDURE dbo.Loanedbooks
AS
BEGIN
	SELECT a1.BookId, a1.BranchId, a2.BranchId, a2.BranchName
	FROM BOOK_LOANS a1
	INNER JOIN LIBRAY_BRANCH a2 ON a2.BranchId = a1.BranchId
END

EXEC dbo.Loanedbooks


/*6*/
CREATE PROCEDURE dbo.Morethan5
AS
SELECT * FROM BOOK_LOANS
GO

ALTER PROCEDURE dbo.Morethan5
AS
BEGIN
	SELECT a1.Name, a1.Address, a1.CardNo, a2.BookId
	FROM BORROWER a1
	INNER JOIN BOOK_LOANS a2 ON a2.CardNo = a1.CardNo
	WHERE BookID > '5' 
END

EXEC dbo.Morethan5



/*7*/
CREATE PROCEDURE dbo.StephenKing
AS
SELECT * FROM BOOK_AUTHORS
GO


ALTER PROCEDURE dbo.StephenKing
AS
BEGIN
	SELECT a1.BookId, a1.AuthorName, a2.Title, a3.BranchId
	FROM BOOK_AUTHORS a1
	INNER JOIN BOOK a2 ON a2.BookId = a1.BookId
	INNER JOIN BOOK_COPIES a3 ON a3.BookId = a2.BookId
	INNER JOIN LIBRAY_BRANCH a4 ON a4.BranchId = a3.BranchId
	WHERE AuthorName = 'Stephen King' and BranchName = 'Central' 
END

EXEC dbo.StephenKing