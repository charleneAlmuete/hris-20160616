-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               5.1.41 - Source distribution
-- Server OS:                    Win32
-- HeidiSQL Version:             8.0.0.4396
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- Dumping database structure for hris
DROP DATABASE IF EXISTS `hris`;
CREATE DATABASE IF NOT EXISTS `hris` /*!40100 DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci */;
USE `hris`;


-- Dumping structure for table hris.awards
DROP TABLE IF EXISTS `awards`;
CREATE TABLE IF NOT EXISTS `awards` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `employee_id` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `institution` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `dateGiven` date DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_awards_on_employee_id` (`employee_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table hris.awards: ~0 rows (approximately)
/*!40000 ALTER TABLE `awards` DISABLE KEYS */;
/*!40000 ALTER TABLE `awards` ENABLE KEYS */;


-- Dumping structure for table hris.branchcoms
DROP TABLE IF EXISTS `branchcoms`;
CREATE TABLE IF NOT EXISTS `branchcoms` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `company_id` int(11) DEFAULT NULL,
  `branchset_id` int(11) DEFAULT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_branchcoms_on_branch_id` (`branchset_id`) USING BTREE,
  KEY `index_branchcoms_on_company_id` (`company_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table hris.branchcoms: ~1 rows (approximately)
/*!40000 ALTER TABLE `branchcoms` DISABLE KEYS */;
INSERT INTO `branchcoms` (`id`, `company_id`, `branchset_id`, `address`) VALUES
	(1, 1, 1, 'Pabayo Hayes');
/*!40000 ALTER TABLE `branchcoms` ENABLE KEYS */;


-- Dumping structure for table hris.branchsets
DROP TABLE IF EXISTS `branchsets`;
CREATE TABLE IF NOT EXISTS `branchsets` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` text COLLATE utf8_unicode_ci,
  `code` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table hris.branchsets: ~5 rows (approximately)
/*!40000 ALTER TABLE `branchsets` DISABLE KEYS */;
INSERT INTO `branchsets` (`id`, `name`, `code`) VALUES
	(1, 'Cagayan de Oro', 'CDO'),
	(2, 'Dipolog', 'DPL'),
	(3, 'Manila', 'MNL'),
	(4, 'Davao', 'DVO'),
	(5, 'Cebu', 'CBU');
/*!40000 ALTER TABLE `branchsets` ENABLE KEYS */;


-- Dumping structure for table hris.children
DROP TABLE IF EXISTS `children`;
CREATE TABLE IF NOT EXISTS `children` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `employee_id` int(11) DEFAULT NULL,
  `fName` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lName` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `gender` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `dateBirth` date DEFAULT NULL,
  `civilStatus` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `occupation` text COLLATE utf8_unicode_ci,
  `company` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `index_children_on_employee_id` (`employee_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table hris.children: ~0 rows (approximately)
/*!40000 ALTER TABLE `children` DISABLE KEYS */;
/*!40000 ALTER TABLE `children` ENABLE KEYS */;


-- Dumping structure for table hris.companies
DROP TABLE IF EXISTS `companies`;
CREATE TABLE IF NOT EXISTS `companies` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` text COLLATE utf8_unicode_ci,
  `code` text COLLATE utf8_unicode_ci,
  `contactno` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `website` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table hris.companies: ~4 rows (approximately)
/*!40000 ALTER TABLE `companies` DISABLE KEYS */;
INSERT INTO `companies` (`id`, `name`, `code`, `contactno`, `email`, `website`) VALUES
	(1, 'Solutions Management Systems Inc.', 'SMSi', '', '', 'www.smsi.com.ph'),
	(2, 'Amaara Financial Corporation', 'AFC', '', '', 'www.afc.com.ph'),
	(3, 'Norminring Development Corporation', 'NDC', '', '', 'www.norminring.com'),
	(4, 'Mindanao Educators Mututal Benefit Association , Inc.', 'MEMBAI', '', '', 'www.memba.com.ph');
/*!40000 ALTER TABLE `companies` ENABLE KEYS */;


-- Dumping structure for table hris.educations
DROP TABLE IF EXISTS `educations`;
CREATE TABLE IF NOT EXISTS `educations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `employee_id` int(11) DEFAULT NULL,
  `levelType` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `course` text COLLATE utf8_unicode_ci,
  `school` text COLLATE utf8_unicode_ci,
  `yearGrad` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_educations_on_employee_id` (`employee_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table hris.educations: ~0 rows (approximately)
/*!40000 ALTER TABLE `educations` DISABLE KEYS */;
/*!40000 ALTER TABLE `educations` ENABLE KEYS */;


-- Dumping structure for table hris.employees
DROP TABLE IF EXISTS `employees`;
CREATE TABLE IF NOT EXISTS `employees` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `image` blob,
  `fName` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lName` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `placeBirth` text COLLATE utf8_unicode_ci,
  `dateBirth` date DEFAULT NULL,
  `gender` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `civilStatus` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `citizenship` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `religion` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `language` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `height` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `weight` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `bloodType` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `hair` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `complexion` text COLLATE utf8_unicode_ci,
  `resAdd` text COLLATE utf8_unicode_ci,
  `resCity` text COLLATE utf8_unicode_ci,
  `resTel` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `resMobile1` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `resMobile2` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `resEmail` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `perAdd` text COLLATE utf8_unicode_ci,
  `perCity` text COLLATE utf8_unicode_ci,
  `perTel` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `perMobile1` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `perMobile2` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `perEmail` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `proAdd` text COLLATE utf8_unicode_ci,
  `proCity` text COLLATE utf8_unicode_ci,
  `proTel` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `proMobile1` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `proMobile2` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `proEmail` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fatherName` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `faAdd` text COLLATE utf8_unicode_ci,
  `faOccupation` text COLLATE utf8_unicode_ci,
  `faCompany` text COLLATE utf8_unicode_ci,
  `faNo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `motherName` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `moAdd` text COLLATE utf8_unicode_ci,
  `moOccupation` text COLLATE utf8_unicode_ci,
  `moCompany` text COLLATE utf8_unicode_ci,
  `moNo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `spouseName` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `spAdd` text COLLATE utf8_unicode_ci,
  `spOccupation` text COLLATE utf8_unicode_ci,
  `spCompany` text COLLATE utf8_unicode_ci,
  `spNo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table hris.employees: ~0 rows (approximately)
/*!40000 ALTER TABLE `employees` DISABLE KEYS */;
/*!40000 ALTER TABLE `employees` ENABLE KEYS */;


-- Dumping structure for table hris.jobs
DROP TABLE IF EXISTS `jobs`;
CREATE TABLE IF NOT EXISTS `jobs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `jobTitle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `branchcom_id` int(11) DEFAULT NULL,
  `empStatus` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `reportTo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `salary_grade_id` int(11) DEFAULT NULL,
  `selection` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `dutiesRes` text COLLATE utf8_unicode_ci,
  `qualification` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `prefSkills` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `index_jobs_on_branchcom_id` (`branchcom_id`),
  KEY `index_jobs_on_salary_grade_id` (`salary_grade_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table hris.jobs: ~0 rows (approximately)
/*!40000 ALTER TABLE `jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `jobs` ENABLE KEYS */;


-- Dumping structure for table hris.licensures
DROP TABLE IF EXISTS `licensures`;
CREATE TABLE IF NOT EXISTS `licensures` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `employee_id` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `rating` decimal(10,0) DEFAULT NULL,
  `licenseNo` int(11) DEFAULT NULL,
  `image` blob,
  PRIMARY KEY (`id`),
  KEY `index_licensures_on_employee_id` (`employee_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table hris.licensures: ~0 rows (approximately)
/*!40000 ALTER TABLE `licensures` DISABLE KEYS */;
/*!40000 ALTER TABLE `licensures` ENABLE KEYS */;


-- Dumping structure for table hris.medicals
DROP TABLE IF EXISTS `medicals`;
CREATE TABLE IF NOT EXISTS `medicals` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `employee_id` int(11) DEFAULT NULL,
  `condition` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `started` int(11) DEFAULT NULL,
  `physician` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_medicals_on_employee_id` (`employee_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table hris.medicals: ~0 rows (approximately)
/*!40000 ALTER TABLE `medicals` DISABLE KEYS */;
/*!40000 ALTER TABLE `medicals` ENABLE KEYS */;


-- Dumping structure for table hris.organizations
DROP TABLE IF EXISTS `organizations`;
CREATE TABLE IF NOT EXISTS `organizations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `employee_id` int(11) DEFAULT NULL,
  `institution` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `started` date DEFAULT NULL,
  `ended` date DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_organizations_on_employee_id` (`employee_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table hris.organizations: ~0 rows (approximately)
/*!40000 ALTER TABLE `organizations` DISABLE KEYS */;
/*!40000 ALTER TABLE `organizations` ENABLE KEYS */;


-- Dumping structure for table hris.salary_grades
DROP TABLE IF EXISTS `salary_grades`;
CREATE TABLE IF NOT EXISTS `salary_grades` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `grade` int(11) DEFAULT NULL,
  `started` int(11) DEFAULT NULL,
  `ended` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table hris.salary_grades: ~0 rows (approximately)
/*!40000 ALTER TABLE `salary_grades` DISABLE KEYS */;
/*!40000 ALTER TABLE `salary_grades` ENABLE KEYS */;


-- Dumping structure for table hris.schema_migrations
DROP TABLE IF EXISTS `schema_migrations`;
CREATE TABLE IF NOT EXISTS `schema_migrations` (
  `version` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  UNIQUE KEY `unique_schema_migrations` (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table hris.schema_migrations: ~15 rows (approximately)
/*!40000 ALTER TABLE `schema_migrations` DISABLE KEYS */;
INSERT INTO `schema_migrations` (`version`) VALUES
	('20160603062339'),
	('20160609084247'),
	('20160610062816'),
	('20160613033012'),
	('20160613035057'),
	('20160613053722'),
	('20160613055543'),
	('20160613061412'),
	('20160613062030'),
	('20160613062448'),
	('20160613063114'),
	('20160613063455'),
	('20160613064219'),
	('20160621061608'),
	('20160621062312');
/*!40000 ALTER TABLE `schema_migrations` ENABLE KEYS */;


-- Dumping structure for table hris.skills
DROP TABLE IF EXISTS `skills`;
CREATE TABLE IF NOT EXISTS `skills` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `employee_id` int(11) DEFAULT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `level` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_skills_on_employee_id` (`employee_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table hris.skills: ~0 rows (approximately)
/*!40000 ALTER TABLE `skills` DISABLE KEYS */;
/*!40000 ALTER TABLE `skills` ENABLE KEYS */;


-- Dumping structure for table hris.trainings
DROP TABLE IF EXISTS `trainings`;
CREATE TABLE IF NOT EXISTS `trainings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `employee_id` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `started` date DEFAULT NULL,
  `ended` date DEFAULT NULL,
  `institution` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `venue` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `speaker` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `remarks` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `index_trainings_on_employee_id` (`employee_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table hris.trainings: ~0 rows (approximately)
/*!40000 ALTER TABLE `trainings` DISABLE KEYS */;
/*!40000 ALTER TABLE `trainings` ENABLE KEYS */;


-- Dumping structure for table hris.works
DROP TABLE IF EXISTS `works`;
CREATE TABLE IF NOT EXISTS `works` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `employee_id` int(11) DEFAULT NULL,
  `position` text COLLATE utf8_unicode_ci,
  `company` text COLLATE utf8_unicode_ci,
  `durFrom` date DEFAULT NULL,
  `durTo` date DEFAULT NULL,
  `status` text COLLATE utf8_unicode_ci,
  `salary` decimal(10,0) DEFAULT NULL,
  `reason` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `index_works_on_employee_id` (`employee_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table hris.works: ~0 rows (approximately)
/*!40000 ALTER TABLE `works` DISABLE KEYS */;
/*!40000 ALTER TABLE `works` ENABLE KEYS */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
