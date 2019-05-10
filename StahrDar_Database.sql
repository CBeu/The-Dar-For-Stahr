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

IF DB_ID('StahrDar') IS NOT NULL
    DROP DATABASE StahrDar
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

/****** Object:  Table foundation1     ******/
CREATE TABLE foundation1(
    classID           VARCHAR(50)             NOT NULL,
	className       varchar(100)            NOT NULL
)
GO

/****** Object:  Table foundation2A     ******/
CREATE TABLE foundation2A(
    classID           VARCHAR(50)             NOT NULL,
	className       varchar(100)            NOT NULL
)
GO

/****** Object:  Table foundation2B     ******/
CREATE TABLE foundation2B(
    classID           VARCHAR(50)             NOT NULL,
	className       varchar(100)            NOT NULL
    )
GO

/****** Object:  Table foundation2C     ******/
CREATE TABLE foundation2C(
    classID           VARCHAR(50)             NOT NULL,
	className       varchar(100)            NOT NULL
)
GO

/****** Object:  Table foundation3B     ******/
CREATE TABLE foundation3B(
    classID           VARCHAR(50)             NOT NULL,
	className       varchar(100)            NOT NULL
)
GO

/****** Object:  Table foundation4A     ******/
CREATE TABLE foundation4A(
    classID           VARCHAR(50)             NOT NULL,
	className       varchar(100)            NOT NULL
)
GO

/****** Object:  Table foundation4B     ******/
CREATE TABLE foundation4B(
    classID           VARCHAR(50)             NOT NULL,
	className       varchar(100)            NOT NULL
)
GO

/****** Object:  Table foundation5     ******/
CREATE TABLE foundation5(
    classID           VARCHAR(50)             NOT NULL,
	className       varchar(100)            NOT NULL
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
INSERT foundation1 VALUES
('ENG109', 'Composition and Rhetoric for Second-Language Writers'),
('ENG111', 'Composition and Rhetoric')
GO

/****** Populate foundation2A     ******/
INSERT foundation2A VALUES
('ARC107','Global Design'),
('ARC188','Ideas in Architecture'),
('ARC221','History of Architecture I'),
('ARC222','History of Architecture II'),
('ART162','Arts of Africa, Oceania and Native America'),
('ART181','Concepts in Art'),
('ART/AMS 183','Images of America'),
('ART187','History of Western Art: Prehistoric-Gothic'),
('ART188','History of Western Art: Renaissance - Modern'),
('ART189','History of Western Dress'),
('ART195','Introduction to Art Education'),
('ART233','Global Perspectives on Dress'),
('ART256','Design, Perception & Audience'),
('ART/BWS 276','Introduction to the Art of the Black Diaspora'),
('ART283','Modern America'),
('ART286','History of Asian Art, China, Korea, and Japan'),
('CCA111','Innovation, Creativity and Design Thinking'),
('CCA121','Introduction to the Integrated Arts and Culture'),
('MUS/AMS 135','Understanding Jazz, Its History and Context'),
('MUS181','Music in our Lives'),
('MUS184','Opera: Passport to the Liberal Arts'),
('MUS185','The Diverse Worlds of Music'),
('MUS186','Global Music for the I-Pod'),
('MUS189','Great Ideas in Western Music'),
('MUS206','Tracking Sounds: A History of Film Music'),
('MUS211','History of Western Music'),
('MUS/IMS 221','Music Technologies'),
('MUS225','And the Beat Goes On. . . The History of Rock and Roll'),
('MUS285','Introduction to African American Music'),
('MUS287','Enter the Diva: Women in Music'),
('POR/BWS/FST/LAS/MUS 204','Brazilian Culture Through Music and Film'),
('THE101','Introduction to Theatre: Drama and Analysis 1'),
('THE123','Acting for the Non-Major: Text and Performance'),
('THE191','Experiencing Theatre'),
('THE257','Stagecraft and Theatre Technologies')
GO

/****** Populate foundation2B     ******/
INSERT foundation2B VALUES
('AAA201','Introduction to Asian/ Asian American Studies'),
('AAA/REL203','Global Religions of India'),
('AMS205','Introduction to American Cultures'),
('AMS207','America: Global and Intercultural Perspectives'),
('AMS/AAA/ENG248','Asian American Literature'),
('ARC188','Ideas in Architecture'),
('ARC221','History of Architecture I'),
('ARC222','History of Architecture II'),
('ART/AMS183','Images of America'),
('ART187','History of Western Art: Prehistoric-Gothic'),
('ART188','History of Western Art: Renaissance - Modern'),
('ART189','History of Western Dress'),
('ART283','Modern America'),
('ART286','History of Asian Art, China, Korea, and Japan'),
('ATH235','Imagining and Encountering the Anthropological Other'),
('CHI251','Traditional Chinese Literature in English Translation'),
('CHI252','Modern Chinese Literature in English Translation'),
('CHI/JPN255','Drama in China and Japan in Translation'),
('CHI257','Chinese Satire'),
('CIT/CSE262','Technology, Ethics, and Global Society'),
('CLS101','Greek Civilization in its Mediterranean Context'),
('CLS102','Roman Civilization'),
('CLS121','Introduction to Classical Mythology'),
('CMS201','Introduction to Comparative Media'),
('EDL204','Sociocultural Studies in Education'),
('ENG122','Popular Literature'),
('ENG123','Introduction to Poetry'),
('ENG124','Introduction to Fiction'),
('ENG125','Introduction to Drama'),
('ENG129','Books You Need To Read'),
('ENG134','Introduction to Shakespeare'),
('ENG163','Literature and Travel'),
('ENG/IMS171','Humanities and Technology'),
('ENG202','Varieties of English: Dialect Diversity and Language Change'),
('ENG/FST220','Literature and Film'),
('ENG/FST221','Shakespeare and Film'),
('ENG/IMS238','Narrative and Digital Technology'),
('ENG251','Introduction to European Literature'),
('ENG/LAS254','Latino/a Literature and the Americas'),
('ENG/RUS256','Russian Literature in English Translation: From Tolstoy to Nabokov'),
('ENG269','Colonial & Postcolonial Literature'),
('ENG272','English Literature to 1660'),
('ENG273','English Literature 1660-1900'),
('ENG274','English Literature 1901 to Present'),
('ENG275','American Literature to 1900'),
('ENG276','American Literature 1900 to the Present'),
('ENG/FST/WGS356','Women and Gender in Film'),
('FRE131','Masterpieces of French Culture in Translation'),
('FRE202','Critical Analysis of French Culture'),
('FRE/FST/GER255','Visual Representations of the Holocaust'),
('FST201','Film History and Analysis'),
('FST/IDS206','Diversity and Culture in American Film'),
('GER151','The German-American Experience'),
('GER231','Folk and Literary Fairy Tales'),
('GER232','The Holocaust in German Literature, History, and Film'),
('GER252','The German-Jewish Experience'),
('GER/FST261','German Film in Global Context'),
('GER321','Cultural Topics in German-Speaking Europe Since 1870'),
('GER322','Comparative Study of Everyday Culture: German-Speaking Europe and the U.S.A.'),
('GIC101','Global and Intercultural Studies'),
('HST111','Survey of American History'),
('HST112','Survey of American History'),
('HST121','Western Civilization'),
('HST122','Western Civilization'),
('HST197','World History to 1500'),
('HST198','World History Since 1500'),
('HST/BWS224','Africa to 1884'),
('HST/BWS225','The Making of Modern Africa'),
('HST245','Making of Modern Europe, 1450-1750'),
('HST254','Introduction to Russian and Eurasian Studies'),
('HST/LAS260','Latin America in the United States'),
('HST296','World History Since 1945'),
('ITL221','Italy, Matrix of Civilization'),
('ITL/AMS/FST 222','Italian American Culture'),
('JPN 231','Japanese Tales of the Supernatural in English Translation'),
('JRN101','Introduction to Journalism'),
('MAC143','Introduction to Media'),
('MUS/AMS 135','Understanding Jazz, Its History and Context'),
('MUS184','Opera: Passport to the Liberal Arts'),
('MUS185','The Diverse Worlds of Music'),
('MUS186','Global Music for the I-Pod'),
('MUS206','Tracking Sounds: A History of Film Music'),
('MUS225','And the Beat Goes On. . . The History of Rock and Roll'),
('MUS285','Introduction to African American Music'),
('MUS/WGS 287','Enter the Diva: Women in Music'),
('PHL103','Society and the Individual'),
('PHL104','Purpose or Chance in the Universe'),
('PHL105','Theories of Human Nature'),
('PHL106','Thought and Culture of India'),
('PHL131','Introduction to Ethics'),
('POR/BWS/FST/LAS/MUS204','Brazilian Culture Through Music and Film'),
('POR/BWS/ENG/WGS/FST383','Brazilian Women through Literature and Film'),
('REL101','Introduction to the Study of Religion'),
('REL/BIO 128','Religion, Science, and Origins'),
('REL/RUS 133','Imagining Russia'),
('REL275','Introduction to the Critical Study of Biblical Literature'),
('REL286','Global Jewish Civilization'),
('REL314','Social and Religious History of the Jewish People'),
('RUS137','Russian Folklore'),
('RUS/ENG255','Russian Literature in English Translation From Pushkin to Dostoevsky'),
('RUS/ENG256','Russian Literature in English Translation: From Tolstoy to Nabokov'),
('RUS257/ENG267','Russian Literature in English Translation: From Pasternak to the Present'),
('SPN315','Intro to Hispanic Literatures'),
('WGS202','Introduction to GLBT Studies'),
('WST201','Self and Place')
GO

/****** Populate foundation2C     ******/
INSERT foundation2C VALUES
('AAA201','Introduction to Asian/ Asian American Studies'),
('AAA207','Asia and Globalization'),
('AAA/BWS/PSY 210','Psychology Across Cultures'),
('ATH145','Lost Cities & Ancient Civilizations'),
('ATH155','Introduction to Anthropology'),
('ATH175','Peoples of the World'),
('ATH180F','Great Ape Biology and Behavior'),
('ATH185','Cultural Diversity in the U.S.'),
('ATH235','Imagining and Encountering the Anthropological Other'),
('ATH313','Latin American Archaeology'),
('ATH405','Food, Taste, and Desire'),
('ATH505','Food, Taste, and Desire'),
('BWS151','Introduction to Black World Studies'),
('CIT/CSE262','Technology, Ethics, and Global Society'),
('CJS101','Introduction to the Criminal Justice Studies'),
('CJS451/CJS551','Comparative Justice Systems'),
('CMR106','Introduction to Business and the Economy'),
('CMR117','Personal Finance, An Introduction'),
('ECO131','Economic Perspectives on Inequality in America'),
('ECO201','Principles of Microeconomics'),
('ECO202','Principles of Macroeconomics'),
('EDL/BWS203','Introduction to Critical Youth Studies'),
('EDL232','Introduction to Community-Based Leadership'),
('EDP101','Psychology Of The Learner'),
('EDP201','Human Development and Learning in Social and Educational Contexts'),
('EDP256','Psychology of the Exceptional Learner'),
('EDP/DST/SOC272','Introduction to Disability Studies'),
('EDP279','Technology + Media Literacy and Learning'),
('ENG/STC201','Special Topics in Language Awareness'),
('FSW142','Exploring Helping Professions'),
('FSW206','Social Welfare: Impact on Diverse Groups'),
('FSW245','Children and Families: Ages Conception - 12'),
('FSW261','Diverse Family Systems Across the Life Cycle'),
('GEO101','Global Forces, Local Diversity'),
('GEO111','World Regional Geography: Patterns and Issues'),
('GEO/SJS159','Creating Global Peace'),
('GEO201','Geography of Urban Diversity'),
('GEO/ITS/SOC208','The Rise of Industrialism in East Asia'),
('GER322','Comparative Study of Everyday Culture: German-Speaking Europe and the U.S.A.'),
('GIC101','Global and Intercultural Studies'),
('GTY154','Big Ideas in Aging'),
('IDS159','Strength Through Cultural Diversity'),
('ITS201','Introduction to International Studies'),
('KNH125','Introduction to Public Health'),
('KNH188','Physical Activity and Health	'),
('KNH206','AIDS: Etiology, Prevalence, and Prevention'),
('KNH214','Global Well-Being'),
('KNH242','Personal Health'),
('KNH276','Current Issues in Leisure and Sport'),
('KNH/BWS/SOC279','African Americans in Sport'),
('LAS207','Latin America before 1910'),
('LAS208/ATH206','Introduction to Latin America'),
('MGT111','Introduction to Business'),
('POL142','American Politics and Diversity'),
('POL221','Modern World Governments'),
('POL241','American Political System'),
('POL271','World Politics'),
('PSY111','Introduction to Psychology'),
('SJS/SOC165','Introduction to Social Justice Studies'),
('SOC151','Social Relations'),
('SOC153','Sociology in a Global Context'),
('SPA127','Introduction to Communication Disorders'),
('SPA223','Theories of Language Development'),
('SPA/DST312','Deaf Culture: Global, National and Local Issues'),
('STC136','Introduction to Interpersonal Communication'),
('WGS201','Introduction to Women''s Studies')
GO

/****** Populate foundation3B     ******/
INSERT foundation3B VALUES
('AAA201','Introduction to Asian/ Asian American Studies'),
('AAA/REL203','Global Religions of India'),
('AAA207','Asia and Globalization'),
('AAA/BWS/PSY 210','Psychology Across Cultures'),
('AAA/AMS/ENG248','Asian American Literature'),
('AMS207','America: Global and Intercultural Perspectives'),
('ARC107','Global Design'),
('ART162','Arts of Africa, Oceania and Native America'),
('ART/BWS276','Introduction to the Art of the Black Diaspora'),
('ART335','Arts of West Africa'),
('ASO201','Introduction to Applied Social Research'),
('ATH/FST135','Film as Ethnography'),
('ATH145','Lost Cities & Ancient Civilizations'),
('ATH155','Introduction to Anthropology'),
('ATH175','Peoples of the World'),
('ATH185','Cultural Diversity in the U.S.'),
('ATH307','The Middle East: Anthropological Perspectives'),
('BWS307','The Middle East: Anthropological Perspectives'),
('ATH358','Travelers, Migrants, and Refugees: Transnational Migration and Diasporic Communities'),
('ATH361','Language and Power'),
('ATH390Z','Pokman: Local and Global Cultures'),
('ATH405/ATH505','Food, Taste, and Desire'),
('ATH426','Field Research'),
('BWS156','Introduction to Africa'),
('CEC266','Metal on Metal: Engineering and Globalization in Heavy Metal Music'),
('CHI257','Chinese Satire'),
('CIT448','Global and Strategic Issues in Information Technology'),
('CJS451/CJS551','Comparative Justice Systems'),
('CMR244','Introduction to Global Business'),
('CMR402','Cross Cultural Leadership Skills'),
('EDT202','Global Childhood Education: Diversity, Education & Society'),
('EDT205','Race, Cultural Diversity, and Equity in Education'),
('EDT221','Teaching English Language Learners in PK-12: Culture & Second Language Acquisition'),
('EDT323','Teaching English Language Learners in PK-12: Instructional Theories & Practices'),
('EDT425','Teaching English Language Learners in PK-12: Active Learning & Literacy'),
('ENG108','U.S. Cultures & Composition for Second-Language Writers'),
('ENG/LAS254','Latino/a Literature and the Americas'),
('ENG/AAA269','Colonial & Postcolonial Literature'),
('ENG410','Selected Topics in Linguistics'),
('FRE131','Masterpieces of French Culture in Translation'),
('FRE202','Critical Analysis of French Culture'),
('GEO101','Global Forces, Local Diversity'),
('GEO111','World Regional Geography: Patterns and Issues'),
('GEO/SJS159','Creating Global Peace'),
('GEO/ITS/SOC208','The Rise of Industrialism in East Asia'),
('GER232','The Holocaust in German Literature, History, and Film'),
('GER/FST261','German Film in Global Context'),
('GER322','Comparative Study of Everyday Culture: German-Speaking Europe and the U.S.A.'),
('GHS101','Introduction to Global Health'),
('GIC101','Global and Intercultural Studies'),
('GTY260','Global Aging'),
('HST197','World History to 1500'),
('HST198','World History Since 1500'),
('HST245','Making of Modern Europe, 1450-1750'),
('HST/LAS260','Latin America in the United States'),
('HST296','World History Since 1945'),
('IDS159','Strength Through Cultural Diversity'),
('ITS201','Introduction to International Studies'),
('KNH213','Global and Community Nutrition'),
('KNH214','Global Well-Being'),
('LAS208/ATH206','Introduction to Latin America'),
('MUS185','The Diverse Worlds of Music'),
('MUS186','Global Music for the I-Pod'),
('MUS/AMS285','Introduction to African American Music'),
('POL221','Modern World Governments'),
('POL271','World Politics'),
('POR/BWS/FST/LAS/MUS204','Brazilian Culture Through Music and Film'),
('POR/BWS/ENG/WGS/FST383','Brazilian Women through Literature and Film'),
('REL/RUS133','Imagining Russia'),
('REL286','Global Jewish Civilization'),
('RUS/ENG256','Russian Literature in English Translation: From Tolstoy to Nabokov'),
('RUS257/ENG267','Russian Literature in English Translation: From Pasternak to the Present'),
('SJS/SOC487','Globalization, Social Justice and Human Rights'),
('SOC153','Sociology in a Global Context'),
('SOC165','Introduction to Social Justice Studies'),
('SJS165','Introduction to Social Justice Studies'),
('SPA/DST312','Deaf Culture: Global, National and Local Issues'),
('SPN392','Language and the Latin American Diaspora'),
('WGS201','Introduction to Women''s Studies')
GO

/****** Populate foundation4A     ******/
INSERT foundation4A VALUES
('BIO101','Biotechnology: Coming of Age in the 21st Century'),
('BIO/MBI115','Biological Concepts: Ecology, Evolution, Genetics, and Diversity'),
('BIO/MBI116','Biological Concepts: Structure, Function, Cellular, and Molecular Biology'),
('BIO121','Environmental Biology'),
('BIO126','Evolution: Just a theory?'),
('BIO131','Plants, Humanity, and Environment'),
('BIO155','Field Botany'),
('BIO161','Principles of Human Physiology'),
('BIO171','Human Anatomy and Physiology'),
('BIO176','Ecology of North America'),
('BIO181','Medicinal and Therapeutic Plants'),
('BIO191','Plant Biology'),
('MBI111','Microorganisms and Human Disease'),
('MBI121','The Microbial World'),
('MBI123','Experimenting with Microbes'),
('MBI131','Community Health Perspectives'),
('MBI143','Parasitology and Mycology Labs'),
('MBI161','Elementary Medical Microbiology')
GO

/****** Populate foundation4B     ******/
INSERT foundation4B VALUES
('CHM111','Chemistry in Modern Society'),
('CHM111L','Chemistry in Modern Society Laboratory'),
('CHM121','Introduction to Forensic Chemistry'),
('CHM131','Chemistry of Life Processes'),
('CHM141&CHM144','College Chemistry and College Chemistry Laboratory'),
('CHM141R&CHM144','College Chemistry and College Chemistry Laboratory'),
('CHM144','College Chemistry Laboratory'),
('CHM144M','College Chemistry Laboratory for Majors'),
('EDT181','Physical Science'),
('EDT182','Physical Science'),
('GEO121','Earth''s Physical Environment'),
('GEO122','Geographic Perspectives on the Environment'),
('GLG111','The Dynamic Earth'),
('GLG115L','Understanding the Earth'),
('GLG121','Environmental Geology'),
('GLG141','Geology of U.S. National Parks'),
('PHY101','Physics and Society'),
('PHY103','Concepts in Physics Laboratory'),
('PHY111','Astronomy and Space Physics'),
('PHY118','Introduction to Atmospheric Science'),
('PHY121','Energy and Environment'),
('PHY131','Physics for Music'),
('PHY141','Physics in Sports'),
('PHY161','Physics for the Life Sciences with Laboratory I'),
('PHY162','Physics for the Life Sciences with Laboratory II'),
('PHY191','General Physics with Laboratory I'),
('PHY192','General Physics with Laboratory II')
GO

/****** Populate foundation5     ******/
INSERT foundation5 VALUES
('ARC212','Principles of Environmental Systems'),
('ATH/ENG/GER219','Introduction to Linguistics'),
('CCA111','Innovation, Creativity and Design Thinking'),
('CEC266','Metal on Metal: Engineering and Globalization in Heavy Metal Music'),
('CMR282','Computer-Based Business Analysis'),
('CSE151','Computers, Computer Science, and Society'),
('CSE163','Introduction to Computer Concepts and Programming'),
('CSE243','Problem Analysis Using Computer Tools'),
('MTH115','Mathematics for Teachers of Grades P-6'),
('MTH119','Quantitative Reasoning'),
('MTH121','Finite Mathematical Models'),
('MTH151','Calculus I'),
('MTH249','Calculus II'),
('MUS/IMS221','Music Technologies'),
('PHL273','Formal Logic'),
('STA261','Statistics'),
('THE257','Stagecraft and Theatre Technologies')
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
	@classID         VARCHAR(50),
	@className		VARCHAR(100)

AS
BEGIN
	DELETE 
	FROM usersCourses
	WHERE @classID = classID AND
		  @className = className AND
		  @miamiID = miamiId
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
	SELECT uc.classID, uc.className, uc.classStatus
	FROM usersCourses	uc
	WHERE @miamiId = uc.miamiId
GO

--Potential CS classes that can be taken (not including classes already taken by the user)
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

--Potential f1 classes that can be taken (not including classes already taken by the user)
CREATE PROCEDURE PotentialF1Classes
AS
	SELECT f1.classId,	f1.className
	FROM foundation1	f1
GO

--Potential f2a classes that can be taken (not including classes already taken by the user)
CREATE PROCEDURE PotentialF2AClasses
AS
	SELECT f2a.classId,	f2a.className
	FROM foundation2A	f2a
GO

--Potential f2b classes that can be taken (not including classes already taken by the user)
CREATE PROCEDURE PotentialF2BClasses
AS
	SELECT f2b.classId,	f2b.className
	FROM foundation2B	f2b
GO

--Potential f2c classes that can be taken (not including classes already taken by the user)
CREATE PROCEDURE PotentialF2CClasses
AS
	SELECT f2c.classId,	f2c.className
	FROM foundation2B	f2c
GO

--Potential f3b classes that can be taken (not including classes already taken by the user)
CREATE PROCEDURE PotentialF3BClasses
AS
	SELECT f3b.classId,	f3b.className
	FROM foundation2B	f3b
GO

--Potential f4a classes that can be taken (not including classes already taken by the user)
CREATE PROCEDURE PotentialF4AClasses
AS
	SELECT f4a.classId,	f4a.className
	FROM foundation4A	f4a
GO

--Potential f4b classes that can be taken (not including classes already taken by the user)
CREATE PROCEDURE PotentialF4BClasses
AS
	SELECT f4b.classId,	f4b.className
	FROM foundation4B	f4b
GO

--Potential f5 classes that can be taken (not including classes already taken by the user)
CREATE PROCEDURE PotentialF5Classes
AS
	SELECT f5.classId,	f5.className
	FROM foundation5	f5
GO

--Shows remaining credit hours needed for Foundation 1 
CREATE PROCEDURE creditsLeftF1
	@miamiID	varchar(50)
AS
	select [CreditHoursRemainingF1] = CASE
		WHEN SUM(cc.classCredit) >= 3 then 0
		WHEN SUM(cc.classCredit) is null then 3
		ELSE ((3 - SUM(cc.classCredit)))
	END
	from usersCourses as u
	join courseCredits as cc on u.classID = cc.classID
	join foundation1 as f1 on u.classID = f1.classID
	where u.miamiId = @miamiID
GO

--Shows remaining credit hours needed for Foundation 2A
CREATE PROCEDURE creditsLeftF2A
	@miamiID	varchar(50)
AS
	select [CreditHoursRemainingF2A] = CASE
		WHEN SUM(cc.classCredit) >= 3 then 0
		WHEN SUM(cc.classCredit) is null then 3
		ELSE (3 - SUM(cc.classCredit))END
	from usersCourses as u
	join courseCredits as cc on u.classID = cc.classID
	join foundation2A as f1 on u.classID = f1.classID
	where u.miamiId = @miamiID
GO

--Shows remaining credit hours needed for Foundation 2B
CREATE PROCEDURE creditsLeftF2B
	@miamiID	varchar(50)
AS
	select [CreditHoursRemainingF2B] = CASE
		WHEN SUM(cc.classCredit) >= 3 then 0
		WHEN SUM(cc.classCredit) is null then 3
		ELSE (3 - SUM(cc.classCredit))END
	from usersCourses as u
	join courseCredits as cc on u.classID = cc.classID
	join foundation2B as f1 on u.classID = f1.classID
	where u.miamiId = @miamiID
GO


--Shows remaining credit hours needed for Foundation 2C
CREATE PROCEDURE creditsLeftF2C
	@miamiID	varchar(50)
AS
	select [CreditHoursRemainingF2C] = CASE
		WHEN SUM(cc.classCredit) >= 3 then 0
		WHEN SUM(cc.classCredit) is null then 3
		ELSE (3 - SUM(cc.classCredit))END
	from usersCourses as u
	join courseCredits as cc on u.classID = cc.classID
	join foundation2C as f1 on u.classID = f1.classID
	where u.miamiId = @miamiID
GO


--Shows remaining credit hours needed for Foundation 3B
CREATE PROCEDURE creditsLeftF3B
	@miamiID	varchar(50)
AS
	select [CreditHoursRemainingF3B] = CASE
		WHEN SUM(cc.classCredit) >= 6 then 0
		WHEN SUM(cc.classCredit) is null then 6
		ELSE (6 - SUM(cc.classCredit))
		END
	from usersCourses as u
	join courseCredits as cc on u.classID = cc.classID
	join foundation3B as f1 on u.classID = f1.classID
	where u.miamiId = @miamiID
GO


--Shows remaining credit hours needed for Foundation 4A
CREATE PROCEDURE creditsLeftF4A
	@miamiID	varchar(50)
AS
	select [CreditHoursRemaining4A] = CASE
		WHEN SUM(cc.classCredit) >= 3 then 0
		WHEN SUM(cc.classCredit) is null then 3
		ELSE (3 - SUM(cc.classCredit))END
	from usersCourses as u
	join courseCredits as cc on u.classID = cc.classID
	join foundation4A as f1 on u.classID = f1.classID
	where u.miamiId = @miamiID
GO


--Shows remaining credit hours needed for Foundation 4B
CREATE PROCEDURE creditsLeftF4B
	@miamiID	varchar(50)
AS
	select [CreditHoursRemainingF4B] = CASE
		WHEN SUM(cc.classCredit) >= 3 then 0
		WHEN SUM(cc.classCredit) is null then 3
		ELSE (3 - SUM(cc.classCredit))END
	from usersCourses as u
	join courseCredits as cc on u.classID = cc.classID
	join foundation4B as f1 on u.classID = f1.classID
	where u.miamiId = @miamiID
GO

--Shows remaining credit hours needed for Foundation 5
CREATE PROCEDURE creditsLeftF5
	@miamiID	varchar(50)
AS
select [CreditHoursRemainingF5] = CASE
	WHEN SUM(cc.classCredit) >= 3 then 0
	WHEN SUM(cc.classCredit) is null then 3
	ELSE (3 - SUM(cc.classCredit))END
from usersCourses as u
join courseCredits as cc on u.classID = cc.classID
join foundation5 as f1 on u.classID = f1.classID
where u.miamiId = @miamiID
GO

CREATE PROCEDURE [dbo].[filterClasses]
	@searchTerm VARCHAR(50)
AS
	WITH tbl AS (
	SELECT classID, className FROM dbo.csMajorClasses --124 rows
	UNION ALL 
	SELECT * FROM dbo.foundation1 -- 2 rows
	UNION ALL 
	SELECT * FROM dbo.foundation2A -- 35 rows
	UNION ALL
	SELECT * FROM dbo.foundation2B -- 105 rows
	UNION ALL
	SELECT * FROM dbo.foundation2C -- 66 rows
	UNION ALL
	SELECT * FROM dbo.foundation3B -- 79 rows
	UNION ALL
	SELECT * FROM dbo.foundation4A -- 18 rows
	UNION ALL
	SELECT * FROM dbo.foundation4B --27 rows
	UNION ALL
	SELECT * FROM dbo.foundation5 -- 17 rows
	UNION ALL
	SELECT classID, className FROM dbo.seMajorClasses -- 96 rows
) SELECT DISTINCT * FROM tbl WHERE tbl.classID LIKE @searchTerm
GO