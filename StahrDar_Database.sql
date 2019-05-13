/**
    Authors:
    Craig Beuerlein
    Lindsay Sterle
    Jake Strickler

    Discription:
    This file builds the StahrDar Database which includes tables for majors and minors in the College of Engineering and Computing.
**/

USE master
GO

DROP DATABASE IF EXISTS StahrDar
GO

/****** Object:  Database StahrDar    ******/
CREATE DATABASE StahrDar
GO

USE StahrDar
GO

/****** Object:  Table csMajorClasses     ******/
CREATE TABLE csMajorClasses(
    classID           VARCHAR(50)             NOT NULL,
	className       varchar(100)            NOT NULL,
	classType       varchar(50)             NOT NULL,
    altClass        VARCHAR(50)             NULL
)
GO

/****** Object:  Table seMajorClasses     ******/
CREATE TABLE seMajorClasses(
    classID           VARCHAR(50)             NOT NULL,
	className       varchar(100)            NOT NULL,
	classType       varchar(50)             NOT NULL,
    altClass        VARCHAR(50)             NULL
)
GO

CREATE TABLE Foundation (
	foundationID	INT	IDENTITY(1,1)		Not Null,
	discription		varchar(50)				Not Null,
	PRIMARY KEY (foundationID)
)
GO

CREATE TABLE FoundationCourses (
	foundationCourseID	INT	IDENTITY(1,1)	Not Null,
	classID				VARCHAR(50)           NOT NULL,
	className			varchar(100)            NOT NULL,
	foundationID		INT						NOT NULL,
	classCredit			INT						NOT NULL,
	PRIMARY KEY (foundationCourseID)
)
GO

/****** Object:  Table users     ******/
CREATE TABLE users (
    usrID           int IDENTITY(1,1)       NOT NULL,
	usrLast         nvarchar(30)            NULL,
	usrFirst        nvarchar(30)            NULL,
    miamiId         VARCHAR(50)             NOT NULL,
	usrpassword		VARCHAR(50)				NOT NULL	
)
GO

/****** Object:  Table userAccount     ******/
CREATE TABLE usersCourses (
	userCourseId	INT NOT NULL PRIMARY KEY IDENTITY,
    miamiId         VARCHAR(50)             NOT NULL,
    classID         VARCHAR(50)             NOT NULL,
	className		VARCHAR(100)	NOT NULL,
    classStatus     VARCHAR(50)             NOT NULL
)
GO

CREATE TABLE courseCredits (
	classID			varchar(50)			NOT NULL,
	classCredit		INT					NOT NULL
)
GO

INSERT Foundation VALUES 
('1'),
('2A'),
('2B'),
('2C'),
('3B'),
('4A'),
('4B'),
('5')
GO



INSERT courseCredits VALUES
('AAA/AMS/ENG248',	3),
('AAA/BWS/PSY 210',	3),
('AAA/REL203',	3),
('AAA201',	3),
('AAA207',	3),
('AMS/AAA/ENG248',	3),
('AMS205',	3),
('AMS207',	3),
('ARC107',	3),
('ARC188',	3),
('ARC212',	3),
('ARC221',	3),
('ARC222',	3),
('ART/AMS 183',	3),
('ART/AMS183',	3),
('ART/BWS 276',	3),
('ART/BWS276',	3),
('ART162',	3),
('ART181',	3),
('ART187',	3),
('ART188',	3),
('ART189',	3),
('ART195',	3),
('ART233',	3),
('ART256',	3),
('ART283',	3),
('ART286',	3),
('ART335',	3),
('ASO201',	3),
('ATH/ENG/GER219',	3),
('ATH/FST135',	3),
('ATH145',	3),
('ATH155',	3),
('ATH175',	3),
('ATH180F',	3),
('ATH185',	3),
('ATH235',	3),
('ATH307',	3),
('ATH313',	3),
('ATH358',	3),
('ATH361',	3),
('ATH390Z',	3),
('ATH405',	3),
('ATH405/ATH505',	3),
('ATH426',	3),
('ATH505',	3),
('BIO/MBI115',	3),
('BIO/MBI116',	3),
('BIO101',	3),
('BIO115',	3),
('BIO116',	3),
('BIO121',	3),
('BIO126',	3),
('BIO131',	3),
('BIO155',	3),
('BIO161',	3),
('BIO171',	3),
('BIO176',	3),
('BIO181',	3),
('BIO191',	3),
('BIO466',	3),
('BWS151',	3),
('BWS156',	3),
('BWS307',	3),
('CCA111',	3),
('CCA121',	3),
('CEC101',	3),
('CEC266',	3),
('CHI/JPN255',	3),
('CHI251',	3),
('CHI252',	3),
('CHI257',	3),
('CHM111',	3),
('CHM111',	3),
('CHM121',	3),
('CHM131',	3),
('CHM141&CHM144',	3),
('CHM141R&CHM144',	3),
('CHM142&CHM145',	3),
('CHM144',	3),
('CHM144M',	3),
('CIT/CSE262',	3),
('CIT262',	3),
('CIT448',	3),
('CJS101',	3),
('CJS451/CJS551',	3),
('CLS101',	3),
('CLS102',	3),
('CLS121',	3),
('CMR106',	3),
('CMR117',	3),
('CMR244',	3),
('CMR282',	3),
('CMR402',	3),
('CMS201',	3),
('CSE102',	3),
('CSE151',	3),
('CSE163',	3),
('CSE174',	3),
('CSE201',	3),
('CSE211',	3),
('CSE212',	3),
('CSE243',	3),
('CSE262',	3),
('CSE270',	3),
('CSE271',	3),
('CSE273',	3),
('CSE274',	3),
('CSE278',	3),
('CSE287',	3),
('CSE311',	3),
('CSE321',	3),
('CSE322',	3),
('CSE340U',	3),
('CSE372',	3),
('CSE381',	3),
('CSE383',	3),
('CSE385',	3),
('CSE387',	3),
('CSE443',	3),
('CSE448',	3),
('CSE449',	3),
('CSE451',	3),
('CSE464',	3),
('CSE465',	3),
('CSE466',	3),
('CSE467',	3),
('CSE470',	3),
('CSE471',	3),
('CSE473',	3),
('CSE474',	3),
('CSE480',	3),
('CSE485',	3),
('CSE486',	3),
('CSE487',	3),
('CSE491',	3),
('CSEXXX',	3),
('EC0201',	3),
('EC0202',	3),
('ECE287',	3),
('ECE345',	3),
('ECE387',	3),
('ECE461',	3),
('ECO131',	3),
('ECO201',	3),
('ECO202',	3),
('EDL/BWS203',	3),
('EDL204',	3),
('EDL232',	3),
('EDP/DST/SOC272',	3),
('EDP101',	3),
('EDP201',	3),
('EDP256',	3),
('EDP279',	3),
('EDT181',	3),
('EDT182',	3),
('EDT202',	3),
('EDT205',	3),
('EDT221',	3),
('EDT323',	3),
('EDT425',	3),
('ENG/AAA269',	3),
('ENG/FST/WGS356',	3),
('ENG/FST220',	3),
('ENG/FST221',	3),
('ENG/IMS171',	3),
('ENG/IMS238',	3),
('ENG/LAS254',	3),
('ENG/RUS256',	3),
('ENG/STC201',	3),
('ENG108',	3),
('ENG109',	3),
('ENG111',	3),
('ENG122',	3),
('ENG123',	3),
('ENG124',	3),
('ENG125',	3),
('ENG129',	3),
('ENG134',	3),
('ENG163',	3),
('ENG202',	3),
('ENG251',	3),
('ENG269',	3),
('ENG272',	3),
('ENG273',	3),
('ENG274',	3),
('ENG275',	3),
('ENG276',	3),
('ENG313',	3),
('ENG410',	3),
('FRE/FST/GER255',	3),
('FRE131',	3),
('FRE202',	3),
('FST/IDS206',	3),
('FST201',	3),
('FSW142',	3),
('FSW206',	3),
('FSW245',	3),
('FSW261',	3),
('GEO/ITS/SOC208',	3),
('GEO/SJS159',	3),
('GEO101',	3),
('GEO111',	3),
('GEO121',	3),
('GEO122',	3),
('GEO201',	3),
('GER/FST261',	3),
('GER151',	3),
('GER231',	3),
('GER232',	3),
('GER252',	3),
('GER321',	3),
('GER322',	3),
('GHS101',	3),
('GIC101',	3),
('GLG111',	3),
('GLG115L',	3),
('GLG121',	3),
('GLG141',	3),
('GTY154',	3),
('GTY260',	3),
('HST/BWS224',	3),
('HST/BWS225',	3),
('HST/LAS260',	3),
('HST111',	3),
('HST112',	3),
('HST121',	3),
('HST122',	3),
('HST197',	3),
('HST198',	3),
('HST245',	3),
('HST254',	3),
('HST296',	3),
('IDS159',	3),
('ISA401',	3),
('ISA406',	3),
('ISA414',	3),
('ISA491',	3),
('ITL/AMS/FST 222',	3),
('ITL221',	3),
('ITS201',	3),
('JPN 231',	3),
('JRN101',	3),
('KNH/BWS/SOC279',	3),
('KNH125',	3),
('KNH188',	3),
('KNH206',	3),
('KNH213',	3),
('KNH214',	3),
('KNH242',	3),
('KNH276',	3),
('LAS207',	3),
('LAS208/ATH206',	3),
('MAC143',	3),
('MBI111',	3),
('MBI115',	3),
('MBI116',	3),
('MBI121',	3),
('MBI123',	3),
('MBI131',	3),
('MBI143',	3),
('MBI161',	3),
('MGT111',	3),
('MTH115',	3),
('MTH119',	3),
('MTH121',	3),
('MTH151',	3),
('MTH222',	3),
('MTH231',	3),
('MTH245',	3),
('MTH249',	3),
('MTH251',	3),
('MTH252',	3),
('MTH331',	3),
('MTH347',	3),
('MTH411',	3),
('MTH421',	3),
('MTH432',	3),
('MTH436',	3),
('MTH437',	3),
('MTH438',	3),
('MTH439',	3),
('MTH441',	3),
('MTH447',	3),
('MUS/AMS 135',	3),
('MUS/AMS285',	3),
('MUS/IMS 221',	3),
('MUS/IMS221',	3),
('MUS/WGS 287',	3),
('MUS181',	3),
('MUS184',	3),
('MUS185',	3),
('MUS186',	3),
('MUS189',	3),
('MUS206',	3),
('MUS211',	3),
('MUS225',	3),
('MUS285',	3),
('MUS287',	3),
('PHL103',	3),
('PHL104',	3),
('PHL105',	3),
('PHL106',	3),
('PHL131',	3),
('PHL273',	3),
('PHY101',	3),
('PHY103',	3),
('PHY111',	3),
('PHY118',	3),
('PHY121',	3),
('PHY131',	3),
('PHY141',	3),
('PHY161',	3),
('PHY162',	3),
('PHY191',	3),
('PHY192',	3),
('POL142',	3),
('POL221',	3),
('POL241',	3),
('POL271',	3),
('POR/BWS/ENG/WGS/FST383',	3),
('POR/BWS/FST/LAS/MUS 204',	3),
('POR/BWS/FST/LAS/MUS204',	3),
('PSY111',	3),
('REL/BIO 128',	3),
('REL/RUS 133',	3),
('REL/RUS133',	3),
('REL101',	3),
('REL275',	3),
('REL286',	3),
('REL314',	3),
('RUS/ENG255',	3),
('RUS/ENG256',	3),
('RUS137',	3),
('RUS257/ENG267',	3),
('SJS/SOC165',	3),
('SJS/SOC487',	3),
('SJS165',	3),
('SOC151',	3),
('SOC153',	3),
('SOC165',	3),
('SPA/DST312',	3),
('SPA127',	3),
('SPA223',	3),
('SPN315',	3),
('SPN392',	3),
('STA261',	3),
('STA301',	3),
('STA333',	3),
('STA363',	3),
('STA365',	3),
('STA401',	3),
('STA402',	3),
('STA404',	3),
('STA427',	3),
('STA432',	3),
('STA466',	3),
('STA467',	3),
('STC135',	3),
('STC136',	3),
('STC231',	3),
('THE101',	3),
('THE123',	3),
('THE191',	3),
('THE257',	3),
('WGS201',	3),
('WGS202',	3),
('WST201',	3)
GO

/****** Populate csMajorClasses     ******/
INSERT csMajorClasses VALUES
('ECO201','Principles of Microecnonomics','Base Core','ECO202'),
('ECO202','Principles of Macroecnonomics','Base Core','ECO201'),
('ENG313','Technical Writing','Base Core','NULL'),
('STC135','Principles of Public Speaking','Base Core','STC231'),
('STC231','Small Group Communication','Base Core','STC135'),
('MTH151','Calculus I','Mathematics','NULL'),
('MTH231','Elements of Discrete Mathematics','Mathematics','MTH331'),
('MTH331','Proof: Introduction to Higher Mathematics','Mathematics','MTH231'),
('STA301','Applied Statistics','Stats','STA261'),
('STA261','Statistics','Stats','ECE345'),
('ECE345','Applied Probability and Statistics for Engineers','Stats','STA301'),
('STA333','Nonparametric Statistics','Math/Stats Elective','NULL'),
('STA363','Introduction to Statistical Modeling','Math/Stats Elective','NULL'),
('STA365','Statistical Monitoring and Design of Experiments','Math/Stats Elective','NULL'),
('STA401','Probability','Math/Stats Elective','NULL'),
('STA402','Statistical Programming','Math/Stats Elective','NULL'),	
('STA404','Advanced Data Visualization','Math/Stats Elective','NULL'),
('STA427','Introduction to Bayesian Statistics','Math/Stats Elective','NULL'),
('STA432','Survey Sampling in Business','Math/Stats Elective','NULL'),
('STA466','Experimental Design Methods','Math/Stats Elective','NULL'),
('STA467','Statistical Learning','Math/Stats Elective','NULL'),
('MTH222','Introduction to Linear Algebra','Math/Stats Elective','NULL'),
('MTH245','Differential Equations for Engineers','Math/Stats Elective','NULL'),
('MTH251','Calculus II','Math/Stats Elective','MTH249'),
('MTH249','Calculus II','Math/Stats Elective','MTH251'),
('MTH252','Calculus III','Math/Stats Elective','NULL'),
('MTH347','Differential Equations','Math/Stats Elective','NULL'),
('MTH411','Foundations of Geometry','Math/Stats Elective','NULL'),
('MTH421','Introduction to Abstract Algebra','Math/Stats Elective','NULL'),
('MTH432','Optimization','Math/Stats Elective','NULL'),
('MTH436','Combinatorial Designs and Coding Theory','Math/Stats Elective','NULL'),
('MTH437','Game Theory and Related Topics','Math/Stats Elective','NULL'),
('MTH438','Theory and Applications of Graphs','Math/Stats Elective','NULL'),
('MTH439','Combinatorics','Math/Stats Elective','NULL'),
('MTH441','Real Analysis','Math/Stats Elective','NULL'),
('MTH447','Topics in Mathematical Finance','Math/Stats Elective','NULL'),
('BIO115','Biological Concepts: Ecology, Evolution, Genetics, and Diversity','Natural Science Electives','MBI115'),
('MBI115','Biological Concepts: Ecology, Evolution, Genetics, and Diversity','Natural Science Electives','BIO115'),
('BIO116','Biological Concepts: Structure, Function, Cellular, and Molecular Biology','Natural Science Electives','MBI116'),
('MBI116','Biological Concepts: Structure, Function, Cellular, and Molecular Biology','Natural Science Electives','BIO116'),
('CHM141&CHM144','College Chemistry and College Chemistry Laboratory: MULTICOURSE','Natural Science Electives','NULL'),
('CHM142&CHM145','College Chemistry and College Chemistry Laboratory: MULTICOURSE','Natural Science Electives','NULL'),	
('PHY191','General Physics with Laboratory I','Natural Science Electives','NULL'),
('PHY192','General Physics with Laboratory II','Natural Science Electives','NULL'),
('STA333','Nonparametric Statistics','Mathematics/Statistics/Science Elective','NULL'),
('STA363','Introduction to Statistical Modeling','Mathematics/Statistics/Science Elective','NULL'),
('STA365','Statistical Monitoring and Design of Experiments','Mathematics/Statistics/Science Elective','NULL'),
('STA401','Probability','Mathematics/Statistics/Science Elective','NULL'),
('STA402','Statistical Programming','Mathematics/Statistics/Science Elective','NULL'),
('STA404','Advanced Data Visualization','Mathematics/Statistics/Science Elective','NULL'),
('STA427','Introduction to Bayesian Statistics','Mathematics/Statistics/Science Elective','NULL'),
('STA432','Survey Sampling in Business','Mathematics/Statistics/Science Elective','NULL'),
('STA466','Experimental Design Methods','Mathematics/Statistics/Science Elective','NULL'),
('STA467','Statistical Learning','Math/Stats Elective','NULL'),
('MTH222','Introduction to Linear Algebra','Mathematics/Statistics/Science Elective','NULL'),
('MTH245','Differential Equations for Engineers','Mathematics/Statistics/Science Elective','NULL'),
('MTH251','Calculus II','Mathematics/Statistics/Science Elective','MTH249'),
('MTH249','Calculus II','Mathematics/Statistics/Science Elective','MTH251'),
('MTH252','Calculus III','Mathematics/Statistics/Science Elective','NULL'),
('MTH347','Differential Equations','Mathematics/Statistics/Science Elective','NULL'),
('MTH411','Foundations of Geometry','Mathematics/Statistics/Science Elective','NULL'),
('MTH421','Introduction to Abstract Algebra','Mathematics/Statistics/Science Elective','NULL'),
('MTH432','Optimization','Mathematics/Statistics/Science Elective','NULL'),
('MTH436','Combinatorial Designs and Coding Theory','Mathematics/Statistics/Science Elective','NULL'),
('MTH437','Game Theory and Related Topics','Mathematics/Statistics/Science Elective','NULL'),
('MTH438','Theory and Applications of Graphs','Mathematics/Statistics/Science Elective','NULL'),
('MTH439','Combinatorics','Mathematics/Statistics/Science Elective','NULL'),
('MTH441','Real Analysis','Mathematics/Statistics/Science Elective','NULL'),
('MTH447','Topics in Mathematical Finance','Mathematics/Statistics/Science Elective','NULL'),
('BIO115','Biological Concepts: Ecology, Evolution, Genetics, and Diversity','Mathematics/Statistics/Science Elective','MBI115'),
('MBI115','Biological Concepts: Ecology, Evolution, Genetics, and Diversity','Mathematics/Statistics/Science Elective','BIO115'),
('BIO116','Biological Concepts: Structure, Function, Cellular, and Molecular Biology','Mathematics/Statistics/Science Elective','MBI116'),
('MBI116','Biological Concepts: Structure, Function, Cellular, and Molecular Biology','Mathematics/Statistics/Science Elective','BIO116'),
('CHM141&CHM144','College Chemistry and College Chemistry Laboratory: MULTICOURSE','Mathematics/Statistics/Science Elective','NULL'),
('CHM142&CHM145','College Chemistry and College Chemistry Laboratory: MULTICOURSE','Mathematics/Statistics/Science Elective','NULL'),
('PHY191','General Physics with Laboratory I','Mathematics/Statistics/Science Elective','NULL'),
('PHY192','General Physics with Laboratory II','Mathematics/Statistics/Science Elective','NULL'),
('CEC101','Computing, Engineering & Society','Computer Science Core','NULL'),
('CSE102','Introduction to Computer Science and Software Engineering','Computer Science Core','NULL'),
('CSE174','Fundamentals of Programming and Problem Solving','Computer Science Core','NULL'),
('CSE201','Introduction to Software Engineering','Computer Science Core','NULL'),
('CSE262','Technology, Ethics, and Global Society','Computer Science Core','CIT262'),
('CIT262','Technology, Ethics, and Global Society','Computer Science Core','CSE262'),
('CSE271','Object-Oriented Programming','Computer Science Core','NULL'),
('CSE274','Data Abstraction and Data Structures','Computer Science Core','NULL'),
('CSE278','Systems I: Introduction to Systems Programming','Computer Science Core','NULL'),
('CSE381','Systems 2: OS, Currency, Virtualization, and Security','Computer Science Core','NULL'),
('CSE383','Web Application Programming','Computer Science Core','NULL'),
('CSE448','Senior Design Project','Computer Science Core','NULL'),
('CSE449','Senior Design Project','Computer Science Core','NULL'),
('CSE464','Algorithms','Computer Science Core','NULL'),
('CSE465','Comparative Programming Languages','Computer Science Core','NULL'),
('CSE287','Foundations of Computer Graphics and Games','Elective Type 1','NULL'),
('CSE385','Database Systems','Elective Type 1','NULL'),
('CSE387','Advanced Graphics and Game Engine Design','Elective Type 1','NULL'),
('CSE443','High Performance Computing & Parallel Programming','Elective Type 1','NULL'),
('CSE451','Web Services and Service Oriented Architectures','Elective Type 1','NULL'),
('CSE466','Bioinformatics Computing Skills','Elective Type 1','BIO466'),
('BIO466','Bioinformatics Computing Skills','Elective Type 1','CSE466'),
('CSE467','Computer and Network Security','Elective Type 1','NULL'),
('CSE470','Special Topics In CSE','Elective Type 1','NULL'),
('CSE471','Simulation','Elective Type 1','NULL'),
('CSE473','Automata, Formal Languages, and Computability','Elective Type 1','NULL'),
('CSE474','Compiler Design','Elective Type 1','NULL'),
('CSE485','Advanced Database Systems','Elective Type 1','NULL'),
('CSE486','Introduction to Artificial Intelligence','Elective Type 1','NULL'),
('CSE487','Game Design and Implementation','Elective Type 1','NULL'),
('CSE211','Software Construction','Elective Type 2','NULL'),
('CSE212','Software Engineering for User Interface and User Experience Design','Elective Type 2','NULL'),
('CSE270','Special Topics','Elective Type 2','NULL'),
('CSE273','Optimization Modeling','Elective Type 2','NULL'),
('CSE311','Software Architecture and Design','Elective Type 2','NULL'),
('CSE321','Software Quality Assurance and Testing','Elective Type 2','NULL'),
('CSE322','Software Requirements','Elective Type 2','NULL'),
('CSE372','Stochastic Modeling','Elective Type 2','NULL'),
('ECE287','Digital Systems Design','Elective Type 2','NULL'),
('ECE387','Embedded Systems Design','Elective Type 2','NULL'),
('ECE461','Network Performance Analysis','Elective Type 2','NULL'),
('ISA401','Business Intelligence and Data Visualization','Elective Type 2','NULL'),
('ISA414','Managing Big Data','Elective Type 2','NULL'),
('ISA491','Introduction to Data Mining in Business','Elective Type 2','NULL'),
('CSE340U','Undergraduate Summer Scholars Program (requires petition)','Elective Type 3','NULL'),
('CSE480','Special Problems (honors Program)','Elective Type 3','NULL'),
('CSE491','Undergraduate Research','Elective Type 3','NULL')
GO


/****** Populate seMajorClasses     ******/
INSERT seMajorClasses VALUES
('EC0201','Principles of Microecnonomics','Base Core','ECO202'),
('EC0202','Principles of Macroecnonomics','Base Core','ECO201'),
('ENG313','Technical Writing','Base Core','NULL'),
('STC135','Principles of Public Speaking','Base Core','STC231'),
('STC231','Small Group Communication','Base Core','STC135'),
('MTH151','Calculus I','Mathematics','NULL'),
('MTH231','Elements of Discrete Mathematics','Mathematics','MTH331'),
('MTH331','Proof: Introduction to Higher Mathematics','Mathematics','MTH231'),
('STA301','Applied Statistics','Stats','STA261'),
('STA261','Statistics','Stats','ECE345'),
('ECE345','Applied Probability and Statistics for Engineers','Stats','STA301'),
('STA333','Nonparametric Statistics','Math/Stats Elective','NULL'),	
('STA363','Introduction to Statistical Modeling','Math/Stats Elective','NULL'),
('STA365','Statistical Monitoring and Design of Experiments','Math/Stats Elective','NULL'),
('STA401','Probability','Math/Stats Elective','NULL'),
('STA402','Statistical Programming','Math/Stats Elective','NULL'),
('STA404','Advanced Data Visualization','Math/Stats Elective','NULL'),
('STA427','Introduction to Bayesian Statistics','Math/Stats Elective','NULL'),
('STA432','Survey Sampling in Business','Math/Stats Elective','NULL'),
('STA466','Experimental Design Methods','Math/Stats Elective','NULL'),
('STA467','Statistical Learning','Math/Stats Elective','NULL'),
('MTH222','Introduction to Linear Algebra','Math/Stats Elective','NULL'),
('MTH245','Differential Equations for Engineers','Math/Stats Elective','NULL'),
('MTH251','Calculus II','Math/Stats Elective','MTH249'),
('MTH249','Calculus II','Math/Stats Elective','MTH251'),
('MTH252','Calculus III','Math/Stats Elective','NULL'),
('MTH347','Differential Equations','Math/Stats Elective','NULL'),
('MTH411','Foundations of Geometry','Math/Stats Elective','NULL'),
('MTH421','Introduction to Abstract Algebra','Math/Stats Elective','NULL'),
('MTH432','Optimization','Math/Stats Elective','NULL'),
('MTH436','Combinatorial Designs and Coding Theory','Math/Stats Elective','NULL'),
('MTH437','Game Theory and Related Topics','Math/Stats Elective','NULL'),
('MTH438','Theory and Applications of Graphs','Math/Stats Elective','NULL'),
('MTH439','Combinatorics','Math/Stats Elective','NULL'),
('MTH441','Real Analysis','Math/Stats Elective','NULL'),
('MTH447','Topics in Mathematical Finance','Math/Stats Elective','NULL'),
('BIO115','Biological Concepts: Ecology, Evolution, Genetics, and Diversity','Natural Science Electives','MBI115'),
('MBI115','Biological Concepts: Ecology, Evolution, Genetics, and Diversity','Natural Science Electives','BIO115'),
('BIO116','Biological Concepts: Structure, Function, Cellular, and Molecular Biology','Natural Science Electives','MBI116'),
('MBI116','Biological Concepts: Structure, Function, Cellular, and Molecular Biology','Natural Science Electives','BIO116'),	
('CHM141&CHM144','College Chemistry and College Chemistry Laboratory: MULTICOURSE','Natural Science Electives','NULL'),
('CHM142&CHM145','College Chemistry and College Chemistry Laboratory: MULTICOURSE','Natural Science Electives','NULL'),
('PHY191','General Physics with Laboratory I','Natural Science Electives','NULL'),
('PHY192','General Physics with Laboratory II','Natural Science Electives','NULL'),
('STA333','Nonparametric Statistics','Mathematics/Statistics/Science Elective','NULL'),
('STA363','Introduction to Statistical Modeling','Mathematics/Statistics/Science Elective','NULL'),
('STA365','Statistical Monitoring and Design of Experiments','Mathematics/Statistics/Science Elective','NULL'),
('STA401','Probability','Mathematics/Statistics/Science Elective','NULL'),
('STA402','Statistical Programming','Mathematics/Statistics/Science Elective','NULL'),
('STA404','Advanced Data Visualization','Mathematics/Statistics/Science Elective','NULL'),
('STA427','Introduction to Bayesian Statistics','Mathematics/Statistics/Science Elective','NULL'),
('STA432','Survey Sampling in Business','Mathematics/Statistics/Science Elective','NULL'),
('STA466','Experimental Design Methods','Mathematics/Statistics/Science Elective','NULL'),
('STA467','Statistical Learning','Math/Stats Elective','NULL'),
('MTH222','Introduction to Linear Algebra','Mathematics/Statistics/Science Elective','NULL'),
('MTH245','Differential Equations for Engineers','Mathematics/Statistics/Science Elective','NULL'),
('MTH251','Calculus II','Mathematics/Statistics/Science Elective','MTH249'),
('MTH249','Calculus II','Mathematics/Statistics/Science Elective','MTH251'),
('MTH252','Calculus III','Mathematics/Statistics/Science Elective','NULL'),
('MTH347','Differential Equations','Mathematics/Statistics/Science Elective','NULL'),
('MTH411','Foundations of Geometry','Mathematics/Statistics/Science Elective','NULL'),
('MTH421','Introduction to Abstract Algebra','Mathematics/Statistics/Science Elective','NULL'),
('MTH432','Optimization','Mathematics/Statistics/Science Elective','NULL'),
('MTH436','Combinatorial Designs and Coding Theory','Mathematics/Statistics/Science Elective','NULL'),
('MTH437','Game Theory and Related Topics','Mathematics/Statistics/Science Elective','NULL'),
('MTH438','Theory and Applications of Graphs','Mathematics/Statistics/Science Elective','NULL'),
('MTH439','Combinatorics','Mathematics/Statistics/Science Elective','NULL'),
('MTH441','Real Analysis','Mathematics/Statistics/Science Elective','NULL'),
('MTH447','Topics in Mathematical Finance','Mathematics/Statistics/Science Elective','NULL'),
('BIO115','Biological Concepts: Ecology, Evolution, Genetics, and Diversity','Mathematics/Statistics/Science Elective','MBI115'),
('MBI115','Biological Concepts: Ecology, Evolution, Genetics, and Diversity','Mathematics/Statistics/Science Elective','BIO115'),
('BIO116','Biological Concepts: Structure, Function, Cellular, and Molecular Biology','Mathematics/Statistics/Science Elective','MBI116'),
('MBI116','Biological Concepts: Structure, Function, Cellular, and Molecular Biology','Mathematics/Statistics/Science Elective','BIO116'),
('CHM141&CHM144','College Chemistry and College Chemistry Laboratory: MULTICOURSE','Mathematics/Statistics/Science Elective','NULL'),
('CHM142&CHM145','College Chemistry and College Chemistry Laboratory: MULTICOURSE','Mathematics/Statistics/Science Elective','NULL'),
('PHY191','General Physics with Laboratory I','Mathematics/Statistics/Science Elective','NULL'),
('PHY192','General Physics with Laboratory II','Mathematics/Statistics/Science Elective','NULL'),
('CEC101','Computing, Engineering & Society','Software Engineering Core','NULL'),
('CSE102','Introduction to Computer Science and Software Engineering (or equivalent)','Software Engineering Core','NULL'),
('CSE174','Fundamentals of Programming and Problem Solving','Software Engineering Core','NULL'),
('CSE201','Introduction to Software Engineering','Software Engineering Core','NULL'),
('CSE211','Software Construction','Software Engineering Core','NULL'),
('CSE212','Software Engineering for User Interface and User Experience Design','Software Engineering Core','NULL'),
('CIT262','Technology, Ethics, and Global Society','Software Engineering Core','CSE262'),
('CSE262','Technology, Ethics, and Global Society','Software Engineering Core','CIT262'),
('CSE271','Object-Oriented Programming','Software Engineering Core','NULL'),
('CSE274','Data Abstraction and Data Structures','Software Engineering Core','NULL'),
('CSE278','Systems I: Introduction to Systems Programming','Software Engineering Core','NULL'),
('CSE311','Software Architecture and Design','Software Engineering Core','NULL'),
('CSE321','Software Quality Assurance and Testing','Software Engineering Core','NULL'),
('CSE322','Software Requirements','Software Engineering Core','NULL'),
('CSE383','Web Application Programming','Software Engineering Core','NULL'),
('ISA406','IT Project Management','Software Engineering Core','NULL'),
('CSE448','Senior Design Project 2','Software Engineering Core','NULL'),
('CSE449','Senior Design Project 2','Software Engineering Core','NULL'),
('CSEXXX','Specialization Area: Talk To Advisor','Specialization Area','NULL')
GO

/****** Populate foundation1     ******/
INSERT FoundationCourses VALUES
('ENG109', 'Composition and Rhetoric for Second-Language Writers', 1, 3),
('ENG111', 'Composition and Rhetoric',1 , 3)
GO

/****** Populate foundation2A     ******/
INSERT FoundationCourses VALUES
('ARC107','Global Design', 2, 3),
('ARC188','Ideas in Architecture', 2, 3),
('ARC221','History of Architecture I', 2, 3),
('ARC222','History of Architecture II', 2, 3),
('ART162','Arts of Africa, Oceania and Native America', 2, 3),
('ART181','Concepts in Art', 2, 3),
('ART/AMS 183','Images of America', 2, 3),
('ART187','History of Western Art: Prehistoric-Gothic', 2, 3),
('ART188','History of Western Art: Renaissance - Modern', 2, 3),
('ART189','History of Western Dress', 2, 3),
('ART195','Introduction to Art Education', 2, 3),
('ART233','Global Perspectives on Dress', 2, 3),
('ART256','Design, Perception & Audience', 2, 3),
('ART/BWS 276','Introduction to the Art of the Black Diaspora', 2, 3),
('ART283','Modern America', 2, 3),
('ART286','History of Asian Art, China, Korea, and Japan', 2, 3),
('CCA111','Innovation, Creativity and Design Thinking', 2, 3),
('CCA121','Introduction to the Integrated Arts and Culture', 2, 3),
('MUS/AMS 135','Understanding Jazz, Its History and Context', 2, 3),
('MUS181','Music in our Lives', 2, 3),
('MUS184','Opera: Passport to the Liberal Arts', 2, 3),
('MUS185','The Diverse Worlds of Music', 2, 3),
('MUS186','Global Music for the I-Pod', 2, 3),
('MUS189','Great Ideas in Western Music', 2, 3),
('MUS206','Tracking Sounds: A History of Film Music', 2, 3),
('MUS211','History of Western Music', 2, 3),
('MUS/IMS 221','Music Technologies', 2, 3),
('MUS225','And the Beat Goes On. . . The History of Rock and Roll', 2, 3),
('MUS285','Introduction to African American Music', 2, 3),
('MUS287','Enter the Diva: Women in Music', 2, 3),
('POR/BWS/FST/LAS/MUS 204','Brazilian Culture Through Music and Film', 2, 3),
('THE101','Introduction to Theatre: Drama and Analysis 1', 2, 3),
('THE123','Acting for the Non-Major: Text and Performance', 2, 3),
('THE191','Experiencing Theatre', 2, 3),
('THE257','Stagecraft and Theatre Technologies', 2, 3)
GO

/****** Populate foundation2B     ******/
INSERT FoundationCourses VALUES
('AAA201','Introduction to Asian/ Asian American Studies', 3, 3),
('AAA/REL203','Global Religions of India', 3, 3),
('AMS205','Introduction to American Cultures', 3, 3),
('AMS207','America: Global and Intercultural Perspectives', 3, 3),
('AMS/AAA/ENG248','Asian American Literature', 3, 3),
('ARC188','Ideas in Architecture', 3, 3),
('ARC221','History of Architecture I', 3, 3),
('ARC222','History of Architecture II', 3, 3),
('ART/AMS183','Images of America', 3, 3),
('ART187','History of Western Art: Prehistoric-Gothic', 3, 3),
('ART188','History of Western Art: Renaissance - Modern', 3, 3),
('ART189','History of Western Dress', 3, 3),
('ART283','Modern America', 3, 3),
('ART286','History of Asian Art, China, Korea, and Japan', 3, 3),
('ATH235','Imagining and Encountering the Anthropological Other', 3, 3),
('CHI251','Traditional Chinese Literature in English Translation', 3, 3),
('CHI252','Modern Chinese Literature in English Translation', 3, 3),
('CHI/JPN255','Drama in China and Japan in Translation', 3, 3),
('CHI257','Chinese Satire', 3, 3),
('CIT/CSE262','Technology, Ethics, and Global Society', 3, 3),
('CLS101','Greek Civilization in its Mediterranean Context', 3, 3),
('CLS102','Roman Civilization', 3, 3),
('CLS121','Introduction to Classical Mythology', 3, 3),
('CMS201','Introduction to Comparative Media', 3, 3),
('EDL204','Sociocultural Studies in Education', 3, 3),
('ENG122','Popular Literature', 3, 3),
('ENG123','Introduction to Poetry', 3, 3),
('ENG124','Introduction to Fiction', 3, 3),
('ENG125','Introduction to Drama', 3, 3),
('ENG129','Books You Need To Read', 3, 3),
('ENG134','Introduction to Shakespeare', 3, 3),
('ENG163','Literature and Travel', 3, 3),
('ENG/IMS171','Humanities and Technology', 3, 3),
('ENG202','Varieties of English: Dialect Diversity and Language Change', 3, 3),
('ENG/FST220','Literature and Film', 3, 3),
('ENG/FST221','Shakespeare and Film', 3, 3),
('ENG/IMS238','Narrative and Digital Technology', 3, 3),
('ENG251','Introduction to European Literature', 3, 3),
('ENG/LAS254','Latino/a Literature and the Americas', 3, 3),
('ENG/RUS256','Russian Literature in English Translation: From Tolstoy to Nabokov', 3, 3),
('ENG269','Colonial & Postcolonial Literature', 3, 3),
('ENG272','English Literature to 1660', 3, 3),
('ENG273','English Literature 1660-1900', 3, 3),
('ENG274','English Literature 1901 to Present', 3, 3),
('ENG275','American Literature to 1900', 3, 3),
('ENG276','American Literature 1900 to the Present', 3, 3),
('ENG/FST/WGS356','Women and Gender in Film', 3, 3),
('FRE131','Masterpieces of French Culture in Translation', 3, 3),
('FRE202','Critical Analysis of French Culture', 3, 3),
('FRE/FST/GER255','Visual Representations of the Holocaust', 3, 3),
('FST201','Film History and Analysis', 3, 3),
('FST/IDS206','Diversity and Culture in American Film', 3, 3),
('GER151','The German-American Experience', 3, 3),
('GER231','Folk and Literary Fairy Tales', 3, 3),
('GER232','The Holocaust in German Literature, History, and Film', 3, 3),
('GER252','The German-Jewish Experience', 3, 3),
('GER/FST261','German Film in Global Context', 3, 3),
('GER321','Cultural Topics in German-Speaking Europe Since 1870', 3, 3),
('GER322','Comparative Study of Everyday Culture: German-Speaking Europe and the U.S.A.', 3, 3),
('GIC101','Global and Intercultural Studies', 3, 3),
('HST111','Survey of American History', 3, 3),
('HST112','Survey of American History', 3, 3),
('HST121','Western Civilization', 3, 3),
('HST122','Western Civilization', 3, 3),
('HST197','World History to 1500', 3, 3),
('HST198','World History Since 1500', 3, 3),
('HST/BWS224','Africa to 1884', 3, 3),
('HST/BWS225','The Making of Modern Africa', 3, 3),
('HST245','Making of Modern Europe, 1450-1750', 3, 3),
('HST254','Introduction to Russian and Eurasian Studies', 3, 3),
('HST/LAS260','Latin America in the United States', 3, 3),
('HST296','World History Since 1945', 3, 3),
('ITL221','Italy, Matrix of Civilization', 3, 3),
('ITL/AMS/FST 222','Italian American Culture', 3, 3),
('JPN 231','Japanese Tales of the Supernatural in English Translation', 3, 3),
('JRN101','Introduction to Journalism', 3, 3),
('MAC143','Introduction to Media', 3, 3),
('MUS/AMS 135','Understanding Jazz, Its History and Context', 3, 3),
('MUS184','Opera: Passport to the Liberal Arts', 3, 3),
('MUS185','The Diverse Worlds of Music', 3, 3),
('MUS186','Global Music for the I-Pod', 3, 3),
('MUS206','Tracking Sounds: A History of Film Music', 3, 3),
('MUS225','And the Beat Goes On. . . The History of Rock and Roll', 3, 3),
('MUS285','Introduction to African American Music', 3, 3),
('MUS/WGS 287','Enter the Diva: Women in Music', 3, 3),
('PHL103','Society and the Individual', 3, 3),
('PHL104','Purpose or Chance in the Universe', 3, 3),
('PHL105','Theories of Human Nature', 3, 3),
('PHL106','Thought and Culture of India', 3, 3),
('PHL131','Introduction to Ethics', 3, 3),
('POR/BWS/FST/LAS/MUS204','Brazilian Culture Through Music and Film', 3, 3),
('POR/BWS/ENG/WGS/FST383','Brazilian Women through Literature and Film', 3, 3),
('REL101','Introduction to the Study of Religion', 3, 3),
('REL/BIO 128','Religion, Science, and Origins', 3, 3),
('REL/RUS 133','Imagining Russia', 3, 3),
('REL275','Introduction to the Critical Study of Biblical Literature', 3, 3),
('REL286','Global Jewish Civilization', 3, 3),
('REL314','Social and Religious History of the Jewish People', 3, 3),
('RUS137','Russian Folklore', 3, 3),
('RUS/ENG255','Russian Literature in English Translation From Pushkin to Dostoevsky', 3, 3),
('RUS/ENG256','Russian Literature in English Translation: From Tolstoy to Nabokov', 3, 3),
('RUS257/ENG267','Russian Literature in English Translation: From Pasternak to the Present', 3, 3),
('SPN315','Intro to Hispanic Literatures', 3, 3),
('WGS202','Introduction to GLBT Studies', 3, 3),
('WST201','Self and Place', 3, 3)
GO

/****** Populate foundation2C     ******/
INSERT FoundationCourses VALUES
('AAA201','Introduction to Asian/ Asian American Studies', 4, 3),
('AAA207','Asia and Globalization', 4, 3),
('AAA/BWS/PSY 210','Psychology Across Cultures', 4, 3),
('ATH145','Lost Cities & Ancient Civilizations', 4, 3),
('ATH155','Introduction to Anthropology', 4, 3),
('ATH175','Peoples of the World', 4, 3),
('ATH180F','Great Ape Biology and Behavior', 4, 3),
('ATH185','Cultural Diversity in the U.S.', 4, 3),
('ATH235','Imagining and Encountering the Anthropological Other', 4, 3),
('ATH313','Latin American Archaeology', 4, 3),
('ATH405','Food, Taste, and Desire', 4, 3),
('ATH505','Food, Taste, and Desire', 4, 3),
('BWS151','Introduction to Black World Studies', 4, 3),
('CIT/CSE262','Technology, Ethics, and Global Society', 4, 3),
('CJS101','Introduction to the Criminal Justice Studies', 4, 3),
('CJS451/CJS551','Comparative Justice Systems', 4, 3),
('CMR106','Introduction to Business and the Economy', 4, 3),
('CMR117','Personal Finance, An Introduction', 4, 3),
('ECO131','Economic Perspectives on Inequality in America', 4, 3),
('ECO201','Principles of Microeconomics', 4, 3),
('ECO202','Principles of Macroeconomics', 4, 3),
('EDL/BWS203','Introduction to Critical Youth Studies', 4, 3),
('EDL232','Introduction to Community-Based Leadership', 4, 3),
('EDP101','Psychology Of The Learner', 4, 3),
('EDP201','Human Development and Learning in Social and Educational Contexts', 4, 3),
('EDP256','Psychology of the Exceptional Learner', 4, 3),
('EDP/DST/SOC272','Introduction to Disability Studies', 4, 3),
('EDP279','Technology + Media Literacy and Learning', 4, 3),
('ENG/STC201','Special Topics in Language Awareness', 4, 3),
('FSW142','Exploring Helping Professions', 4, 3),
('FSW206','Social Welfare: Impact on Diverse Groups', 4, 3),
('FSW245','Children and Families: Ages Conception - 12', 4, 3),
('FSW261','Diverse Family Systems Across the Life Cycle', 4, 3),
('GEO101','Global Forces, Local Diversity', 4, 3),
('GEO111','World Regional Geography: Patterns and Issues', 4, 3),
('GEO/SJS159','Creating Global Peace', 4, 3),
('GEO201','Geography of Urban Diversity', 4, 3),
('GEO/ITS/SOC208','The Rise of Industrialism in East Asia', 4, 3),
('GER322','Comparative Study of Everyday Culture: German-Speaking Europe and the U.S.A.', 4, 3),
('GIC101','Global and Intercultural Studies', 4, 3),
('GTY154','Big Ideas in Aging', 4, 3),
('IDS159','Strength Through Cultural Diversity', 4, 3),
('ITS201','Introduction to International Studies', 4, 3),
('KNH125','Introduction to Public Health', 4, 3),
('KNH188','Physical Activity and Health	', 4, 3),
('KNH206','AIDS: Etiology, Prevalence, and Prevention', 4, 3),
('KNH214','Global Well-Being', 4, 3),
('KNH242','Personal Health', 4, 3),
('KNH276','Current Issues in Leisure and Sport', 4, 3),
('KNH/BWS/SOC279','African Americans in Sport', 4, 3),
('LAS207','Latin America before 1910', 4, 3),
('LAS208/ATH206','Introduction to Latin America', 4, 3),
('MGT111','Introduction to Business', 4, 3),
('POL142','American Politics and Diversity', 4, 3),
('POL221','Modern World Governments', 4, 3),
('POL241','American Political System', 4, 3),
('POL271','World Politics', 4, 3),
('PSY111','Introduction to Psychology', 4, 3),
('SJS/SOC165','Introduction to Social Justice Studies', 4, 3),
('SOC151','Social Relations', 4, 3),
('SOC153','Sociology in a Global Context', 4, 3),
('SPA127','Introduction to Communication Disorders', 4, 3),
('SPA223','Theories of Language Development', 4, 3),
('SPA/DST312','Deaf Culture: Global, National and Local Issues', 4, 3),
('STC136','Introduction to Interpersonal Communication', 4, 3),
('WGS201','Introduction to Women''s Studies', 4, 3)
GO

/****** Populate foundation3B     ******/
INSERT FoundationCourses VALUES
('AAA201','Introduction to Asian/ Asian American Studies', 5, 3),
('AAA/REL203','Global Religions of India', 5, 3),
('AAA207','Asia and Globalization', 5, 3),
('AAA/BWS/PSY 210','Psychology Across Cultures', 5, 3),
('AAA/AMS/ENG248','Asian American Literature', 5, 3),
('AMS207','America: Global and Intercultural Perspectives', 5, 3),
('ARC107','Global Design', 5, 3),
('ART162','Arts of Africa, Oceania and Native America', 5, 3),
('ART/BWS276','Introduction to the Art of the Black Diaspora', 5, 3),
('ART335','Arts of West Africa', 5, 3),
('ASO201','Introduction to Applied Social Research', 5, 3),
('ATH/FST135','Film as Ethnography', 5, 3),
('ATH145','Lost Cities & Ancient Civilizations', 5, 3),
('ATH155','Introduction to Anthropology', 5, 3),
('ATH175','Peoples of the World', 5, 3),
('ATH185','Cultural Diversity in the U.S.', 5, 3),
('ATH307','The Middle East: Anthropological Perspectives', 5, 3),
('BWS307','The Middle East: Anthropological Perspectives', 5, 3),
('ATH358','Travelers, Migrants, and Refugees: Transnational Migration and Diasporic Communities', 5, 3),
('ATH361','Language and Power', 5, 3),
('ATH390Z','Pokman: Local and Global Cultures', 5, 3),
('ATH405/ATH505','Food, Taste, and Desire', 5, 3),
('ATH426','Field Research', 5, 3),
('BWS156','Introduction to Africa', 5, 3),
('CEC266','Metal on Metal: Engineering and Globalization in Heavy Metal Music', 5, 3),
('CHI257','Chinese Satire', 5, 3),
('CIT448','Global and Strategic Issues in Information Technology', 5, 3),
('CJS451/CJS551','Comparative Justice Systems', 5, 3),
('CMR244','Introduction to Global Business', 5, 3),
('CMR402','Cross Cultural Leadership Skills', 5, 3),
('EDT202','Global Childhood Education: Diversity, Education & Society', 5, 3),
('EDT205','Race, Cultural Diversity, and Equity in Education', 5, 3),
('EDT221','Teaching English Language Learners in PK-12: Culture & Second Language Acquisition', 5, 3),
('EDT323','Teaching English Language Learners in PK-12: Instructional Theories & Practices', 5, 3),
('EDT425','Teaching English Language Learners in PK-12: Active Learning & Literacy', 5, 3),
('ENG108','U.S. Cultures & Composition for Second-Language Writers', 5, 3),
('ENG/LAS254','Latino/a Literature and the Americas', 5, 3),
('ENG/AAA269','Colonial & Postcolonial Literature', 5, 3),
('ENG410','Selected Topics in Linguistics', 5, 3),
('FRE131','Masterpieces of French Culture in Translation', 5, 3),
('FRE202','Critical Analysis of French Culture', 5, 3),
('GEO101','Global Forces, Local Diversity', 5, 3),
('GEO111','World Regional Geography: Patterns and Issues', 5, 3),
('GEO/SJS159','Creating Global Peace', 5, 3),
('GEO/ITS/SOC208','The Rise of Industrialism in East Asia', 5, 3),
('GER232','The Holocaust in German Literature, History, and Film', 5, 3),
('GER/FST261','German Film in Global Context', 5, 3),
('GER322','Comparative Study of Everyday Culture: German-Speaking Europe and the U.S.A.', 5, 3),
('GHS101','Introduction to Global Health', 5, 3),
('GIC101','Global and Intercultural Studies', 5, 3),
('GTY260','Global Aging', 5, 3),
('HST197','World History to 1500', 5, 3),
('HST198','World History Since 1500', 5, 3),
('HST245','Making of Modern Europe, 1450-1750', 5, 3),
('HST/LAS260','Latin America in the United States', 5, 3),
('HST296','World History Since 1945', 5, 3),
('IDS159','Strength Through Cultural Diversity', 5, 3),
('ITS201','Introduction to International Studies', 5, 3),
('KNH213','Global and Community Nutrition', 5, 3),
('KNH214','Global Well-Being', 5, 3),
('LAS208/ATH206','Introduction to Latin America', 5, 3),
('MUS185','The Diverse Worlds of Music', 5, 3),
('MUS186','Global Music for the I-Pod', 5, 3),
('MUS/AMS285','Introduction to African American Music', 5, 3),
('POL221','Modern World Governments', 5, 3),
('POL271','World Politics', 5, 3),
('POR/BWS/FST/LAS/MUS204','Brazilian Culture Through Music and Film', 5, 3),
('POR/BWS/ENG/WGS/FST383','Brazilian Women through Literature and Film', 5, 3),
('REL/RUS133','Imagining Russia', 5, 3),
('REL286','Global Jewish Civilization', 5, 3),
('RUS/ENG256','Russian Literature in English Translation: From Tolstoy to Nabokov', 5, 3),
('RUS257/ENG267','Russian Literature in English Translation: From Pasternak to the Present', 5, 3),
('SJS/SOC487','Globalization, Social Justice and Human Rights', 5, 3),
('SOC153','Sociology in a Global Context', 5, 3),
('SOC165','Introduction to Social Justice Studies', 5, 3),
('SJS165','Introduction to Social Justice Studies', 5, 3),
('SPA/DST312','Deaf Culture: Global, National and Local Issues', 5, 3),
('SPN392','Language and the Latin American Diaspora', 5, 3),
('WGS201','Introduction to Women''s Studies', 5, 3)
GO

/****** Populate foundation4A     ******/
INSERT FoundationCourses VALUES
('BIO101','Biotechnology: Coming of Age in the 21st Century', 6, 3),
('BIO/MBI115','Biological Concepts: Ecology, Evolution, Genetics, and Diversity', 6, 3),
('BIO/MBI116','Biological Concepts: Structure, Function, Cellular, and Molecular Biology', 6, 3),
('BIO121','Environmental Biology', 6, 3),
('BIO126','Evolution: Just a theory?', 6, 3),
('BIO131','Plants, Humanity, and Environment', 6, 3),
('BIO155','Field Botany', 6, 3),
('BIO161','Principles of Human Physiology', 6, 3),
('BIO171','Human Anatomy and Physiology', 6, 3),
('BIO176','Ecology of North America', 6, 3),
('BIO181','Medicinal and Therapeutic Plants', 6, 3),
('BIO191','Plant Biology', 6, 3),
('MBI111','Microorganisms and Human Disease', 6, 3),
('MBI121','The Microbial World', 6, 3),
('MBI123','Experimenting with Microbes', 6, 3),
('MBI131','Community Health Perspectives', 6, 3),
('MBI143','Parasitology and Mycology Labs', 6, 3),
('MBI161','Elementary Medical Microbiology', 6, 3)
GO

/****** Populate foundation4B     ******/
INSERT FoundationCourses VALUES
('CHM111','Chemistry in Modern Society', 7, 3),
('CHM111L','Chemistry in Modern Society Laboratory', 7, 3),
('CHM121','Introduction to Forensic Chemistry', 7, 3),
('CHM131','Chemistry of Life Processes', 7, 3),
('CHM141&CHM144','College Chemistry and College Chemistry Laboratory', 7, 3),
('CHM141R&CHM144','College Chemistry and College Chemistry Laboratory', 7, 3),
('CHM144','College Chemistry Laboratory', 7, 3),
('CHM144M','College Chemistry Laboratory for Majors', 7, 3),
('EDT181','Physical Science', 7, 3),
('EDT182','Physical Science', 7, 3),
('GEO121','Earth''s Physical Environment', 7, 3),
('GEO122','Geographic Perspectives on the Environment', 7, 3),
('GLG111','The Dynamic Earth', 7, 3),
('GLG115L','Understanding the Earth', 7, 3),
('GLG121','Environmental Geology', 7, 3),
('GLG141','Geology of U.S. National Parks', 7, 3),
('PHY101','Physics and Society', 7, 3),
('PHY103','Concepts in Physics Laboratory', 7, 3),
('PHY111','Astronomy and Space Physics', 7, 3),
('PHY118','Introduction to Atmospheric Science', 7, 3),
('PHY121','Energy and Environment', 7, 3),
('PHY131','Physics for Music', 7, 3),
('PHY141','Physics in Sports', 7, 3),
('PHY161','Physics for the Life Sciences with Laboratory I', 7, 3),
('PHY162','Physics for the Life Sciences with Laboratory II', 7, 3),
('PHY191','General Physics with Laboratory I', 7, 3),
('PHY192','General Physics with Laboratory II', 7, 3)
GO

/****** Populate foundation5     ******/
INSERT FoundationCourses VALUES
('ARC212','Principles of Environmental Systems', 8, 3),
('ATH/ENG/GER219','Introduction to Linguistics', 8, 3),
('CCA111','Innovation, Creativity and Design Thinking', 8, 3),
('CEC266','Metal on Metal: Engineering and Globalization in Heavy Metal Music', 8, 3),
('CMR282','Computer-Based Business Analysis', 8, 3),
('CSE151','Computers, Computer Science, and Society', 8, 3),
('CSE163','Introduction to Computer Concepts and Programming', 8, 3),
('CSE243','Problem Analysis Using Computer Tools', 8, 3),
('MTH115','Mathematics for Teachers of Grades P-6', 8, 3),
('MTH119','Quantitative Reasoning', 8, 3),
('MTH121','Finite Mathematical Models', 8, 3),
('MTH151','Calculus I', 8, 3),
('MTH249','Calculus II', 8, 3),
('MUS/IMS221','Music Technologies', 8, 3),
('PHL273','Formal Logic', 8, 3),
('STA261','Statistics', 8, 3),
('THE257','Stagecraft and Theatre Technologies', 8, 3)
GO

/****** Populate userAccount     ******/
INSERT usersCourses VALUES
('beuerlcd','ARC188','Ideas in Architecture','C'),
('beuerlcd','CEC101','Computing, Engineering, and Society','C'),
('beuerlcd','CEC266','Metal on Metal: Engineering and Globalization in Heavy Metal Music','C'),
('beuerlcd','CSE174','Fundamentals of Programming and Problem Solving','C'),
('beuerlcd','EDL290','The Nature of Group Leadership','C'),
('beuerlcd','MTH151','Calculus I','C'),
('beuerlcd','CSE102','Introduction to Computing and Engineering','C'),
('beuerlcd','CSE271','Object-Oriented Programming','C'),
('beuerlcd','MTH231','Elements of Discrete Mathematics','C'),
('beuerlcd','POL241','American Political System','C'),
('beuerlcd','CSE262','Technology, Ethics, and Global Society','C'),
('beuerlcd','ENG313','Technical Writing','C'),
('beuerlcd','MTH251','Calculus II','IP'),
('beuerlcd','CSE201','Intro to Software Engineerin','IP'),
('beuerlcd','CSE385','Database Systems','IP'),
('beuerlcd','ECO202','Principles of Macroeconomics','IP'),
('beuerlcd','CSE278','Systems I: Introduction to Systems Programming','IP'),
('beuerlcd','POL426','Inside Washington','IP')
GO

INSERT users VALUES
('Beuerlein','Craig','beuerlcd', 'password')
GO



/*
	STORED PROCEDURES WRITTEN BELOW
	use triggers when user enters their courses taken, if the course isn't in our database, report invalid course
*/




--Adds a new course to the userCourses table
CREATE PROCEDURE AddNewCourse
	@miamiId         VARCHAR(50),
	@classID         VARCHAR(50),
	@className		VARCHAR(100),
	@classStatus     VARCHAR(50)  

AS
SET NOCOUNT ON
	INSERT INTO usersCourses(
		miamiId,    
		classID,    
		className,	
		classStatus

	)
	VALUES(
		@miamiId,    
		@classID,    
		@className,	
		@classStatus
	)
GO

--Delete a course from the usersCourses table
CREATE PROCEDURE DeleteCourseFromUsersList
	@miamiID		VARCHAR(50),
	@userCourseId        VARCHAR(50)

AS
BEGIN
	DELETE 
	FROM usersCourses
	WHERE @miamiID = miamiId AND
			@userCourseId = userCourseId
END
GO

--Adds a new user to the user table based on user sign up/input
CREATE PROCEDURE AddNewUser
	@usrLast         nvarchar(30),      
	@usrFirst        nvarchar(30),      
	@miamiId         VARCHAR(50),
	@usrPassword	 VARCHAR(50)
AS
SET NOCOUNT ON
	INSERT INTO users(
		usrLast,
		usrFirst,
		miamiId
	)
	VALUES(
		@usrLast,  
		@usrFirst ,
		@miamiId  
	)
GO



--Displays all miamiIds, fir names and last names of all users in db
CREATE PROCEDURE GetAllUserAccounts
AS
	SELECT  u.miamiId, u.usrFirst, u.usrLast
	FROM	users	u
GO

--Displays the miamiId, fir name an last name of a specific user based on user input of miamiId
CREATE PROCEDURE GetSpecificUserAccount
	@miamiId	VARCHAR(50)
AS
	SELECT	u.miamiId, u.usrFirst, u.usrLast
	FROM users	u
	WHERE	@miamiId = u.miamiId
GO

--Displays all of the courses taken by a specific user
CREATE PROCEDURE GetAllCoursesTakenByUser
	@miamiId	VARCHAR(50)
AS
	SELECT uc.userCourseId, uc.classID, uc.className, uc.classStatus
	FROM usersCourses	uc
	WHERE @miamiId = uc.miamiId
GO

--Potential CS classes that can be taken (not including classes already taken by the user)!
CREATE PROCEDURE PotentialCSClasses
AS
	SELECT cs.classID,	cs.className
	FROM csMajorClasses	cs
GO

--Potential SE classes that can be taken (not including classes already taken by the user)
CREATE PROCEDURE PotentialSEClasses
AS
	SELECT se.classId,	se.className
	FROM seMajorClasses	se
GO

--Potential Foundation Courses based on foundationID sent
CREATE PROCEDURE PotentialFoundationClasses
	@foundationID	int
AS
	select fc.classID, fc.className
	from FoundationCourses as fc
	where fc.foundationID = @foundationID
GO


--Shows remaining credit hours needed for CS Major
CREATE PROCEDURE creditsLeftCS
	@miamiID	varchar(50)
AS
	select [classCredit] = CASE
		WHEN SUM(cc.classCredit) >= 99 then 0
		WHEN SUM(cc.classCredit) is null then 99
		ELSE (99 - SUM(cc.classCredit))END
	from usersCourses as u
	join courseCredits as cc on u.classID = cc.classID
	join csMajorClasses as f1 on u.classID = f1.classID
	where u.miamiId = @miamiID
GO

--Shows remaining credit hours needed for CS Major
CREATE PROCEDURE creditsLeftSE
	@miamiID	varchar(50)
AS
	select [classCredit] =CASE
		WHEN SUM(cc.classCredit) >= 99 then 0
		WHEN SUM(cc.classCredit) is null then 99
		ELSE (99 - SUM(cc.classCredit))END
	from usersCourses as u
	join courseCredits as cc on u.classID = cc.classID
	join seMajorClasses as f1 on u.classID = f1.classID
	where u.miamiId = @miamiID
GO

--Calculates remaing credit hours needed for each foundationID
CREATE PROCEDURE creditsLeftFoundation
	@miamiID		varchar(50),
	@foundationID	int
AS
	IF @foundationID = 5 
		select  [classCredit] = CASE
			WHEN SUM(f1.classCredit) >= 6 then 0
			WHEN SUM(f1.classCredit) is null then 6
			ELSE (6 - SUM(f1.classCredit))END
		from usersCourses as u
		join FoundationCourses as f1 on u.classID = f1.classID
		where u.miamiId = @miamiID AND f1.foundationID = @foundationID
	ELSE
		select CASE
			WHEN SUM(f1.classCredit) >= 3 then 0
			WHEN SUM(f1.classCredit) is null then 3
			ELSE (3 - SUM(f1.classCredit))END
		from usersCourses as u
		join FoundationCourses as f1 on u.classID = f1.classID
		where u.miamiId = @miamiID AND f1.foundationID = @foundationID
GO

--Shows foundation classes the user has not taken baesd on foundationID
CREATE PROCEDURE remainingFoundationClasses
	@miamiID		varchar(50),
	@foundationID	INT
AS
	select c2.classID, c2.className
		from (select classID, className from usersCourses where miamiID = @miamiID) c1 
		right outer join
		(select classID, className from FoundationCourses where foundationID = @foundationID) c2
	on c2.classID = c1.classID
	where c1.classID is null
GO

--Shows CS classes the user has not taken
CREATE PROCEDURE remainingCSClasses
	@miamiID	varchar(50)
AS
	select c2.classID, c2.className
		from (select classID, className from usersCourses where miamiID = @miamiID) c1 
		right outer join
		(select classID, className from csMajorClasses) c2
	on c2.classID = c1.classID
	where c1.classID is null
GO

--Shows SE classes the user has not taken
CREATE PROCEDURE remainingSEClasses
	@miamiID	varchar(50)
AS
	select c2.classID, c2.className
		from (select classID, className from usersCourses where miamiID = @miamiID) c1 
		right outer join
		(select classID, className from seMajorClasses) c2
	on c2.classID = c1.classID
	where c1.classID is null
GO


--filter se courses
CREATE PROCEDURE filterSE
AS
	SELECT classID, className FROM dbo.seMajorClasses --124 rows
GO

--filter cs courses
CREATE PROCEDURE filterCS
AS
	SELECT classID, className FROM dbo.csMajorClasses --124 rows
GO

--filter foundations
CREATE PROCEDURE [dbo].[filterFoundations]
	@foundationID VARCHAR(50)
AS
	WITH tbl AS (
	
	SELECT * FROM dbo.FoundationCourses where foundationID = 1 -- 2 rows
	UNION ALL 
	SELECT * FROM dbo.FoundationCourses where foundationID = 2 -- 35 rows
	UNION ALL
	SELECT * FROM dbo.FoundationCourses where foundationID = 3 -- 105 rows
	UNION ALL
	SELECT * FROM dbo.FoundationCourses where foundationID = 4 -- 66 rows
	UNION ALL
	SELECT * FROM dbo.FoundationCourses where foundationID = 5 -- 79 rows
	UNION ALL
	SELECT * FROM dbo.FoundationCourses where foundationID = 6 -- 18 rows
	UNION ALL
	SELECT * FROM dbo.FoundationCourses where foundationID = 7 --27 rows
	UNION ALL
	SELECT * FROM dbo.FoundationCourses where foundationID = 8 -- 17 rows

) SELECT DISTINCT * FROM tbl WHERE foundationID = @foundationID
