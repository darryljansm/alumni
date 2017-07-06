-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 30, 2017 at 06:53 AM
-- Server version: 5.7.14
-- PHP Version: 5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `alumni`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `admin_id` int(11) NOT NULL,
  `admin_fname` varchar(50) NOT NULL,
  `admin_mname` varchar(50) NOT NULL,
  `admin_lname` varchar(50) NOT NULL,
  `admin_email` varchar(100) NOT NULL,
  `admin_username` varchar(50) NOT NULL,
  `admin_salt` varchar(50) NOT NULL,
  `admin_password` varchar(100) NOT NULL,
  `admin_level` tinyint(1) NOT NULL COMMENT '1=sysad; 2=moderator; 3=viewing;',
  `admin_status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '0=not active; 1=active; 2=disabled;',
  `admin_last_login` datetime NOT NULL,
  `admin_date_modified` datetime NOT NULL,
  `admin_date_added` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `admin_fname`, `admin_mname`, `admin_lname`, `admin_email`, `admin_username`, `admin_salt`, `admin_password`, `admin_level`, `admin_status`, `admin_last_login`, `admin_date_modified`, `admin_date_added`) VALUES
(1, 'juan', 'santos', 'dela cruz', 'juan23@mail.com', 'admin', '³W÷þdaÂí±ÂùF®9ïÐ0Ÿ€‘ƒÈn·0¢Ã#üå¨', '3640daa0c1fc63a0be23f357f05202ab732697f6bd5bfb93ef00d947cc133461', 1, 1, '2017-06-26 17:22:47', '2017-02-08 00:00:00', '2017-02-08 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `auditlog`
--

CREATE TABLE `auditlog` (
  `audit_id` int(11) NOT NULL,
  `audit_table_affected` varchar(100) NOT NULL,
  `audit_action` varchar(255) NOT NULL,
  `audit_admin_id` int(11) NOT NULL,
  `audit_date_added` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `auditlog`
--

INSERT INTO `auditlog` (`audit_id`, `audit_table_affected`, `audit_action`, `audit_admin_id`, `audit_date_added`) VALUES
(1, 'webnews', 'Add New News', 1, '2017-03-03 08:10:31'),
(2, 'admin', 'Admin Logout', 1, '2017-03-03 10:22:22'),
(3, 'admin', 'Admin Logout', 1, '2017-03-03 10:25:15'),
(4, 'admin', 'Admin Logout', 1, '2017-03-03 10:28:12'),
(5, 'admin', 'Admin Logout', 1, '2017-03-02 18:29:20'),
(6, 'admin', 'Admin Logout', 1, '2017-03-02 18:31:44'),
(7, 'admin', 'Admin Login', 1, '2017-03-02 18:31:47'),
(8, 'admin', 'Admin Logout', 1, '2017-03-02 18:31:53'),
(9, 'admin', 'Admin Login', 1, '2017-03-02 18:37:03'),
(10, 'admin', 'Admin Login', 1, '2017-03-06 11:12:16'),
(11, 'admin', 'Admin Logout', 1, '2017-03-06 11:12:18'),
(12, 'admin', 'Admin Login', 1, '2017-03-06 14:05:20'),
(13, 'webmenu', 'Updated Existing Menu Item', 1, '2017-03-07 06:05:30'),
(14, 'webmenu', 'Updated Existing Menu Item', 1, '2017-03-07 06:05:37'),
(15, 'webmenu', 'Deleted Existing Menu Item', 1, '2017-03-07 06:05:41'),
(16, 'admin', 'Admin Logout', 1, '2017-03-06 16:14:02'),
(17, 'admin', 'Admin Login', 1, '2017-03-08 15:37:58'),
(18, 'admin', 'Admin Login', 1, '2017-03-19 14:45:23'),
(19, 'admin', 'Admin Logout', 1, '2017-03-19 14:45:26'),
(20, 'admin', 'Admin Logout', 1, '2017-03-19 14:48:24'),
(21, 'admin', 'Admin Login', 1, '2017-06-26 17:19:04'),
(22, 'admin', 'Admin Logout', 1, '2017-06-26 17:22:47'),
(23, 'admin', 'Admin Login', 1, '2017-06-26 17:32:02'),
(24, 'websubmenu', 'Add New Submenu', 1, '2017-06-27 09:35:46'),
(25, 'websubmenu', 'Add New Submenu', 1, '2017-06-27 09:36:25'),
(26, 'websubmenu', 'Add New Submenu', 1, '2017-06-27 09:36:56'),
(27, 'websubmenu', 'Updated Existing Submenu Item', 1, '2017-06-27 09:37:03'),
(28, 'websubmenu', 'Updated Existing Submenu Item', 1, '2017-06-27 09:37:09');

-- --------------------------------------------------------

--
-- Table structure for table `feedbacks`
--

CREATE TABLE `feedbacks` (
  `fb_id` int(11) NOT NULL,
  `fb_name` varchar(150) NOT NULL,
  `fb_email` varchar(150) NOT NULL,
  `fb_subject` varchar(500) NOT NULL,
  `fb_message` text NOT NULL,
  `fb_date_added` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `feedbacks`
--

INSERT INTO `feedbacks` (`fb_id`, `fb_name`, `fb_email`, `fb_subject`, `fb_message`, `fb_date_added`) VALUES
(1, 'sdfsdfs', 'dfssdf@asdasd.asd', 'asdasd', 'asdasdasdasd', '2017-02-20 15:18:19');

-- --------------------------------------------------------

--
-- Table structure for table `graduates`
--

CREATE TABLE `graduates` (
  `grad_id` int(11) NOT NULL,
  `grad_fname` varchar(50) NOT NULL,
  `grad_mname` varchar(50) NOT NULL,
  `grad_lname` varchar(50) NOT NULL,
  `grad_gender` tinyint(1) NOT NULL DEFAULT '0' COMMENT '1=male; 2=female',
  `grad_birthday` date NOT NULL,
  `grad_student_id` varchar(11) NOT NULL,
  `grad_course` varchar(100) NOT NULL,
  `grad_dept` varchar(100) NOT NULL,
  `grad_year_graduated` year(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `graduates`
--

INSERT INTO `graduates` (`grad_id`, `grad_fname`, `grad_mname`, `grad_lname`, `grad_gender`, `grad_birthday`, `grad_student_id`, `grad_course`, `grad_dept`, `grad_year_graduated`) VALUES
(1, 'Jayna', 'Canlas', 'Adona', 2, '1994-06-28', '12-0088', 'BSIS', 'ICSLIS', 2016),
(2, 'Reynan', 'Santiago', 'Agapito', 1, '1996-09-16', '12-0086', 'BSIS', 'ICSLIS', 2016),
(3, 'John Cedrik', 'Olog', 'Agulto', 1, '1994-10-10', '12-0064', 'BSIS', 'ICSLIS', 2016),
(4, 'Clarihs', 'Manalang', 'Amurao', 2, '1995-06-26', '12-0130', 'BSIS', 'ICSLIS', 2016),
(5, 'Sandra Chrystelle', 'Arsing', 'Andal', 2, '1996-05-23', '12-0158', 'BSIS', 'ICSLIS', 2016),
(6, 'Nathaniel', 'Pamintuan', 'Banag', 1, '1995-04-04', '12-0126', 'BSIS', 'ICSLIS', 2016),
(7, 'Ma. Vina', 'Gomez', 'Bulanadi', 2, '1996-02-12', '12-0151', 'BSIS', 'ICSLIS', 2016),
(8, 'Noriel', 'Dizon', 'Caisip', 1, '1995-07-03', '12-0154', 'BSIS', 'ICSLIS', 2016),
(9, 'Justine Alyonna Marie', '', 'Canlas', 2, '1995-10-17', '12-0119', 'BSIS', 'ICSLIS', 2016),
(10, 'Maureen', 'Parungao', 'Cartagena', 2, '1993-05-09', '12-0087', 'BSIS', 'ICSLIS', 2016),
(11, 'Allan Carlo', 'Ramos', 'Casin', 1, '1996-10-13', '12-0145', 'BSIS', 'ICSLIS', 2016),
(12, 'Kate Diane', 'David', 'Castro', 2, '1995-05-20', '12-0065', 'BSIS', 'ICSLIS', 2016),
(13, 'Christan', 'Evangelista', 'Catu', 1, '1996-03-21', '12-0147', 'BSIS', 'ICSLIS', 2016),
(14, 'Darell', 'Torres', 'Cayanan', 1, '1989-04-03', '12-0146', 'BSIS', 'ICSLIS', 2016),
(15, 'Rowena', 'Pangilinan', 'Colorico', 2, '1996-01-11', '12-0058', 'BSIS', 'ICSLIS', 2016),
(16, 'Robert John', '', 'Comanda', 1, '1988-03-09', '12-0143', 'BSIS', 'ICSLIS', 2016),
(17, 'Bianca Marie', 'Cortez', 'David', 2, '1996-01-25', '12-0067', 'BSIS', 'ICSLIS', 2016),
(18, 'Paul Ariel II', 'Yalung', 'Dela Cruz', 1, '1995-12-04', '12-0132', 'BSIS', 'ICSLIS', 2016),
(19, 'Rodelina', 'Garcia', 'Dela Cruz', 2, '1996-04-08', '12-0056', 'BSIS', 'ICSLIS', 2016),
(20, 'Kin Leeann', 'Cabrera', 'Dizon', 2, '1996-04-04', '12-0134', 'BSIS', 'ICSLIS', 2016),
(21, 'Karen', 'Lasao', 'Dones', 2, '1994-08-01', '12-0329', 'BSIS', 'ICSLIS', 2016),
(22, 'Marinelli', 'Roxas', 'Enriquez', 2, '1993-09-15', '12-0094', 'BSIS', 'ICSLIS', 2016),
(23, 'Kyle', 'Calma', 'Evangelista', 1, '1995-09-26', '12-0054', 'BSIS', 'ICSLIS', 2016),
(24, 'Harvey', 'Orias', 'Evaristo', 1, '1995-01-10', '12-0099', 'BSIS', 'ICSLIS', 2016),
(25, 'Thecheca', 'Unto', 'Feliciano', 2, '1995-01-08', '12-0055', 'BSIS', 'ICSLIS', 2016),
(26, 'Ma. Theresa', 'Merza', 'Garcia', 2, '1994-12-23', '12-0136', 'BSIS', 'ICSLIS', 2016),
(27, 'Mark Jayson', 'Flores', 'Gargantos', 1, '1995-12-04', '12-0125', 'BSIS', 'ICSLIS', 2016),
(28, 'Maria Elizabeth', 'Garcia', 'Guadayo', 2, '1989-12-11', '12-0153', 'BSIS', 'ICSLIS', 2016),
(29, 'Joma', 'Sarmiento', 'Guerrero', 2, '1996-05-28', '12-0122', 'BSIS', 'ICSLIS', 2016),
(30, 'Darien Roy', 'Silang', 'Guinto', 1, '1996-02-05', '12-0079', 'BSIS', 'ICSLIS', 2016),
(31, 'Tanya Rae', 'Calma', 'Justado', 2, '1995-10-14', '12-0116', 'BSIS', 'ICSLIS', 2016),
(32, 'Whenn', 'Gopez', 'Lambinicio', 2, '1996-02-16', '12-0085', 'BSIS', 'ICSLIS', 2016),
(33, 'Zaldy', 'Maglalang', 'Lansang', 1, '1996-08-27', '12-0157', 'BSIS', 'ICSLIS', 2016),
(34, 'Chris', 'Lumanog', 'Lising', 1, '1995-04-10', '12-0091', 'BSIS', 'ICSLIS', 2016),
(35, 'Abigail', 'Ramos', 'Lopez', 2, '1994-07-13', '12-0061', 'BSIS', 'ICSLIS', 2016),
(36, 'Maria Angela', 'Quiambao', 'Magtoto', 2, '1994-11-02', '12-0121', 'BSIS', 'ICSLIS', 2016),
(37, 'Chersil', 'Dimalanta', 'Maluntag', 2, '1995-08-18', '12-0059', 'BSIS', 'ICSLIS', 2016),
(38, 'Francis', 'Dimabuyu', 'Manalili', 1, '1995-09-26', '12-0148', 'BSIS', 'ICSLIS', 2016),
(39, 'Christopher', '', 'Manaloto', 1, '1995-12-09', '12-0155', 'BSIS', 'ICSLIS', 2016),
(40, 'Ronart', 'Carreon', 'Mananis', 1, '1991-10-10', '12-0156', 'BSIS', 'ICSLIS', 2016),
(41, 'Chito', 'Abella', 'Miranda', 1, '1996-01-07', '12-0106', 'BSIS', 'ICSLIS', 2016),
(42, 'Sharmaine', 'Dizon', 'Miranda', 2, '1996-08-09', '12-0083', 'BSIS', 'ICSLIS', 2016),
(43, 'Darryl Jan', 'Sampana', 'Montemayor', 1, '1989-11-15', '12-0108', 'BSIS', 'ICSLIS', 2016),
(44, 'John Christian', 'Tayag', 'Narciso', 1, '1995-01-06', '12-0110', 'BSIS', 'ICSLIS', 2016),
(45, 'Lester John', 'Alvarez', 'Nonato', 1, '1995-11-14', '12-0063', 'BSIS', 'ICSLIS', 2016),
(46, 'Ernan', 'Sabrido', 'Nualda', 1, '1994-03-15', '12-0102', 'BSIS', 'ICSLIS', 2016),
(47, 'Adilyn', 'Santos', 'Oberio', 2, '1996-07-17', '12-0144', 'BSIS', 'ICSLIS', 2016),
(48, 'Rachel Ann', 'Lacson', 'Ocampo', 2, '1994-11-29', '12-0070', 'BSIS', 'ICSLIS', 2016),
(49, 'Kia Joy', 'Cortez', 'Omana', 2, '1994-01-19', '12-0115', 'BSIS', 'ICSLIS', 2016),
(50, 'Benjie', 'Manalili', 'Orence', 1, '1993-11-02', '12-0071', 'BSIS', 'ICSLIS', 2016),
(51, 'Ricky', 'Gomez', 'Pagatpat', 1, '1993-10-04', '12-0062', 'BSIS', 'ICSLIS', 2016),
(52, 'Joshua Philip', 'Maniti', 'Panganiban', 1, '1995-11-28', '12-0095', 'BSIS', 'ICSLIS', 2016),
(53, 'Chatherine', 'Ramos', 'Parungao', 2, '1996-10-15', '12-0120', 'BSIS', 'ICSLIS', 2016),
(54, 'Arnold', 'Santiago', 'Pineda', 1, '1996-04-24', '12-0140', 'BSIS', 'ICSLIS', 2016),
(55, 'Edcel Jake', 'Miranda', 'Pineda', 1, '1995-06-04', '12-0098', 'BSIS', 'ICSLIS', 2016),
(56, 'Ma. Katrina', 'Villanueva', 'Pineda', 2, '1995-12-11', '12-0138', 'BSIS', 'ICSLIS', 2016),
(57, 'Catherine', 'Evangelista', 'Policarpio', 2, '1995-09-18', '12-0080', 'BSIS', 'ICSLIS', 2016),
(58, 'Mary Grace', 'Manalili', 'Puzon', 2, '1995-09-14', '12-0152', 'BSIS', 'ICSLIS', 2016),
(59, 'Ryan', 'Alvarez', 'Quidep', 1, '1996-04-12', '12-0129', 'BSIS', 'ICSLIS', 2016),
(60, 'Arnulfo', 'Galang', 'Quijoy', 1, '1994-05-05', '12-0141', 'BSIS', 'ICSLIS', 2016),
(61, 'Patrick Junelle', 'Torres', 'San Buenaventura', 1, '1994-05-08', '12-0104', 'BSIS', 'ICSLIS', 2016),
(62, 'Allyssa Mariza', 'Dizon', 'Santos', 2, '1996-09-26', '12-0096', 'BSIS', 'ICSLIS', 2016),
(63, 'Esmeralda Grace', 'Flores', 'Sarmiento', 2, '1997-04-17', '12-0128', 'BSIS', 'ICSLIS', 2016),
(64, 'Jason', 'Pamintuan', 'Skinner', 1, '1994-03-15', '12-0092', 'BSIS', 'ICSLIS', 2016),
(65, 'Arramina', 'Dela Cruz', 'Timbol', 2, '1996-02-08', '12-0150', 'BSIS', 'ICSLIS', 2016),
(66, 'Jeric', 'Dalusung', 'Timbol', 1, '1995-09-27', '12-0097', 'BSIS', 'ICSLIS', 2016),
(67, 'Angenica', 'Ramos', 'Turin', 2, '1995-09-07', '12-0127', 'BSIS', 'ICSLIS', 2016),
(68, 'Herald', 'Busante', 'Villanueva', 1, '1996-01-12', '12-0103', 'BSIS', 'ICSLIS', 2016),
(69, 'Julian Carlo', 'Torres', 'Vital', 1, '1996-10-10', '12-0149', 'BSIS', 'ICSLIS', 2016),
(70, 'Bryan', 'Pabia', 'Vivar', 1, '1994-09-24', '12-0113', 'BSIS', 'ICSLIS', 2016),
(71, 'Charlene', 'Pingul', 'Wright', 2, '1996-02-12', '12-0093', 'BSIS', 'ICSLIS', 2016),
(72, 'Nathaniel', 'David', 'Yanga', 1, '1995-03-26', '12-0074', 'BSIS', 'ICSLIS', 2016);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `user_grad_id` int(11) NOT NULL,
  `user_email` varchar(100) NOT NULL,
  `user_contact` varchar(50) NOT NULL,
  `user_address` varchar(255) NOT NULL,
  `user_username` varchar(50) NOT NULL,
  `user_salt` varchar(100) NOT NULL,
  `user_password` varchar(100) NOT NULL,
  `user_status` tinyint(1) NOT NULL DEFAULT '1',
  `user_date_modified` datetime NOT NULL,
  `user_date_added` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `user_grad_id`, `user_email`, `user_contact`, `user_address`, `user_username`, `user_salt`, `user_password`, `user_status`, `user_date_modified`, `user_date_added`) VALUES
(1, 43, 'darryljansm@gmail.com', '123123123123', '3123 asdasdasd as dasd', 'darryljansm015', '¼Åp°¾Žm: `Ì^Ô“y(•TfžìµƒVî#Cœ', 'c930af851abc2a362a60c3789e2784542af4e3f1190cdaaa64b4512891396f60', 1, '2017-06-26 03:16:08', '2017-06-26 03:16:08');

-- --------------------------------------------------------

--
-- Table structure for table `webaboutus`
--

CREATE TABLE `webaboutus` (
  `about_id` int(11) NOT NULL,
  `about_mission` text NOT NULL,
  `about_vision` text NOT NULL,
  `about_history` text NOT NULL,
  `about_date_modified` datetime NOT NULL,
  `about_date_added` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `webannouncements`
--

CREATE TABLE `webannouncements` (
  `announ_id` int(11) NOT NULL,
  `announ_title` varchar(255) NOT NULL,
  `announ_description` text NOT NULL,
  `announ_status` tinyint(1) NOT NULL DEFAULT '1',
  `announ_poster_id` int(11) NOT NULL,
  `announ_date_modified` datetime NOT NULL,
  `announ_date_added` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `webannouncements`
--

INSERT INTO `webannouncements` (`announ_id`, `announ_title`, `announ_description`, `announ_status`, `announ_poster_id`, `announ_date_modified`, `announ_date_added`) VALUES
(1, 'Maecenas at tortor sem. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut cursus, enim ac varius commodo, tellus ligula cursus velit, quis sodales augue lorem id arcu. Etiam sit amet pellentesque ipsum.', 'Maecenas at tortor sem. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut cursus, enim ac varius commodo, tellus ligula cursus velit, quis sodales augue lorem id arcu. Etiam sit amet pellentesque ipsum. Pellentesque venenatis lorem et ligula euismod, nec commodo felis tristique. Proin libero quam, bibendum vitae mi sagittis, tempor elementum velit. Nulla convallis tempor nisi, semper molestie eros tempus vitae. Ut viverra ligula tempus lorem eleifend, at sagittis purus malesuada. Pellentesque vehicula tincidunt metus a porta.', 1, 1, '2017-02-20 12:43:49', '2017-02-20 12:43:49'),
(2, 'Pellentesque eu ultricies leo. Nulla ullamcorper sem mauris, sit amet congue nisi sollicitudin non. Sed venenatis euismod pretium. ', 'Pellentesque eu ultricies leo. Nulla ullamcorper sem mauris, sit amet congue nisi sollicitudin non. Sed venenatis euismod pretium. Vivamus sit amet erat vehicula, semper arcu ut, mattis purus. Nunc at semper sem, sit amet facilisis risus. Fusce interdum egestas finibus. Proin ac tempus nulla. Nullam id ipsum enim. Vivamus sollicitudin blandit pharetra. Donec dictum ligula nisi, non ornare diam venenatis a. In pharetra turpis id elit fermentum sodales. Integer euismod nisl sed facilisis laoreet. Aenean lobortis ullamcorper dapibus. Pellentesque volutpat laoreet hendrerit.\r\n\r\nSuspendisse potenti. Donec sed laoreet ipsum. Donec non diam placerat, porta lectus eget, pulvinar quam. Nullam at nulla at dolor consequat dictum. Proin a scelerisque nisi. Ut rhoncus facilisis nibh feugiat tempor. Aliquam erat volutpat.', 1, 1, '2017-02-20 12:44:01', '2017-02-20 12:44:01'),
(3, 'Suspendisse potenti. Donec sed laoreet ipsum. Donec non diam placerat, porta lectus eget, pulvinar quam. Nullam at nulla at dolor consequat dictum.', 'Suspendisse potenti. Donec sed laoreet ipsum. Donec non diam placerat, porta lectus eget, pulvinar quam. Nullam at nulla at dolor consequat dictum. Proin a scelerisque nisi. Ut rhoncus facilisis nibh feugiat tempor. Aliquam erat volutpat.\r\n\r\nClass aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Sed in nulla purus. Aliquam lacinia, eros vel volutpat mattis, purus massa sagittis erat, vitae ultrices nisi odio a libero. Praesent bibendum convallis porttitor. Curabitur augue elit, pretium at risus vitae, interdum porta lacus. Integer quis condimentum lectus, nec tempus sem. Maecenas eleifend dui tempor condimentum mollis. Vivamus ut lorem id ipsum sodales efficitur. Donec magna dolor, vulputate non ante vel, tincidunt rutrum nulla. Vivamus pulvinar felis eros, quis pellentesque quam suscipit non. Vestibulum neque orci, convallis sed enim sit amet, rutrum bibendum risus. Curabitur eu ultrices elit. Pellentesque lectus tellus, volutpat sit amet pharetra quis, gravida vitae lacus. Sed euismod enim ut mauris elementum, nec congue neque facilisis. Phasellus eu molestie nulla, dictum sodales nisl.', 1, 1, '2017-02-20 12:44:14', '2017-02-20 12:44:14'),
(4, 'Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos.', 'Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Sed in nulla purus. Aliquam lacinia, eros vel volutpat mattis, purus massa sagittis erat, vitae ultrices nisi odio a libero. Praesent bibendum convallis porttitor. Curabitur augue elit, pretium at risus vitae, interdum porta lacus. Integer quis condimentum lectus, nec tempus sem. Maecenas eleifend dui tempor condimentum mollis. Vivamus ut lorem id ipsum sodales efficitur. Donec magna dolor, vulputate non ante vel, tincidunt rutrum nulla. Vivamus pulvinar felis eros, quis pellentesque quam suscipit non. Vestibulum neque orci, convallis sed enim sit amet, rutrum bibendum risus. Curabitur eu ultrices elit. Pellentesque lectus tellus, volutpat sit amet pharetra quis, gravida vitae lacus. Sed euismod enim ut mauris elementum, nec congue neque facilisis. Phasellus eu molestie nulla, dictum sodales nisl.', 1, 1, '2017-02-20 12:44:29', '2017-02-20 12:44:29'),
(5, 'Nam neque mauris, consectetur in varius id, elementum vel dolor. Sed vitae massa quis magna fermentum convallis sed venenatis diam. ', 'Nam neque mauris, consectetur in varius id, elementum vel dolor. Sed vitae massa quis magna fermentum convallis sed venenatis diam. Curabitur facilisis, lorem a ornare convallis, neque ligula facilisis nulla, a ultricies odio diam a mi. Phasellus lobortis gravida ligula in vulputate. Duis pellentesque pulvinar viverra. Etiam id suscipit velit, vitae placerat tortor. Ut faucibus ante ipsum, quis ultrices nisi hendrerit vel. Sed euismod velit a neque scelerisque aliquet. Vestibulum dictum eget ante id aliquam.\r\n\r\nNunc rutrum, libero ac dignissim lobortis, odio lacus laoreet urna, non vulputate ex libero in odio. In quis hendrerit velit. Suspendisse cursus justo augue, ut tempus est facilisis non. Donec ac lectus ut felis bibendum malesuada blandit vitae nisi. Nulla facilisi. Praesent facilisis elementum sem a venenatis. Sed accumsan eros vel felis auctor vestibulum. Pellentesque vitae massa ac diam ullamcorper eleifend mattis at quam. Suspendisse non ante efficitur, congue diam ut, placerat dolor. Sed aliquam dolor nibh, a scelerisque tellus pharetra eu. Morbi convallis, erat viverra malesuada fermentum, felis leo tincidunt lacus, ut mollis sem arcu eu odio. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae;', 1, 1, '2017-02-20 12:44:43', '2017-02-20 12:44:43'),
(6, 'Nunc rutrum, libero ac dignissim lobortis, odio lacus laoreet urna, non vulputate ex libero in odio. In quis hendrerit velit.', 'Nunc rutrum, libero ac dignissim lobortis, odio lacus laoreet urna, non vulputate ex libero in odio. In quis hendrerit velit. Suspendisse cursus justo augue, ut tempus est facilisis non. Donec ac lectus ut felis bibendum malesuada blandit vitae nisi. Nulla facilisi. Praesent facilisis elementum sem a venenatis. Sed accumsan eros vel felis auctor vestibulum. Pellentesque vitae massa ac diam ullamcorper eleifend mattis at quam. Suspendisse non ante efficitur, congue diam ut, placerat dolor. Sed aliquam dolor nibh, a scelerisque tellus pharetra eu. Morbi convallis, erat viverra malesuada fermentum, felis leo tincidunt lacus, ut mollis sem arcu eu odio. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae;', 1, 1, '2017-02-20 12:44:55', '2017-02-20 12:44:55'),
(7, 'Nulla convallis nisl a ante facilisis suscipit. Morbi sit amet imperdiet tortor. Duis posuere gravida nisl, sit amet posuere tortor dictum blandit.', 'Nulla convallis nisl a ante facilisis suscipit. Morbi sit amet imperdiet tortor. Duis posuere gravida nisl, sit amet posuere tortor dictum blandit. Cras ultricies iaculis vulputate. Fusce non turpis porttitor, ornare diam at, cursus ante. Donec at velit magna. Nunc est leo, pretium at dolor a, commodo malesuada neque. Maecenas ultrices in ex ac laoreet. Cras accumsan mi vitae augue consequat, vitae scelerisque est fermentum. Donec vehicula risus ut libero aliquet ultricies. Nulla facilisi.\r\n\r\nInteger tortor est, aliquet nec sapien sit amet, commodo consectetur arcu. Curabitur bibendum erat rutrum lorem semper, id blandit diam luctus. Sed suscipit est non risus viverra, in viverra quam hendrerit. Aliquam elit risus, vulputate vel nulla vulputate, consequat venenatis ex. Suspendisse potenti. Cras aliquet metus vitae turpis vestibulum viverra. Donec scelerisque dolor ultricies purus malesuada euismod. Cras eleifend porta elementum. Quisque malesuada leo dolor. Cras consequat leo quis imperdiet suscipit. Vestibulum laoreet risus a nunc ullamcorper viverra. Maecenas hendrerit ante id justo porta, ut ornare mi hendrerit.', 1, 1, '2017-02-20 12:47:17', '2017-02-20 12:45:10');

-- --------------------------------------------------------

--
-- Table structure for table `webbanner`
--

CREATE TABLE `webbanner` (
  `banner_id` int(11) NOT NULL,
  `banner_image` varchar(255) NOT NULL,
  `banner_title` varchar(100) NOT NULL,
  `banner_status` tinyint(1) NOT NULL DEFAULT '1',
  `banner_poster_id` int(11) NOT NULL,
  `banner_date_modified` datetime NOT NULL,
  `banner_date_added` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `webbanner`
--

INSERT INTO `webbanner` (`banner_id`, `banner_image`, `banner_title`, `banner_status`, `banner_poster_id`, `banner_date_modified`, `banner_date_added`) VALUES
(1, 'raffle.jpg', 'CCA Alumni First Fund Raising Event', 1, 1, '2017-02-20 12:47:58', '2017-02-13 20:32:15');

-- --------------------------------------------------------

--
-- Table structure for table `webcontactus`
--

CREATE TABLE `webcontactus` (
  `contact_id` int(11) NOT NULL,
  `contact_phone` varchar(30) NOT NULL,
  `contact_mobile` varchar(30) NOT NULL,
  `contact_email` varchar(100) NOT NULL,
  `contact_address` varchar(255) NOT NULL,
  `contact_fax` varchar(30) NOT NULL,
  `contact_date_modified` datetime NOT NULL,
  `contact_date_added` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `webjobs`
--

CREATE TABLE `webjobs` (
  `job_id` int(11) NOT NULL,
  `job_title` varchar(500) NOT NULL,
  `job_company` varchar(255) NOT NULL,
  `job_positions` varchar(500) NOT NULL,
  `job_vacancy` varchar(500) NOT NULL,
  `job_description` text NOT NULL,
  `job_poster_id` int(11) NOT NULL,
  `job_status` tinyint(1) NOT NULL DEFAULT '1',
  `job_date_modified` datetime NOT NULL,
  `job_date_added` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `webjobs`
--

INSERT INTO `webjobs` (`job_id`, `job_title`, `job_company`, `job_positions`, `job_vacancy`, `job_description`, `job_poster_id`, `job_status`, `job_date_modified`, `job_date_added`) VALUES
(1, 'Litigation Lawyer', 'Global Estate Resorts, Inc. (a subsidiary of Megaworld Corporation)', 'Litigation Lawyer', '5', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#039;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 1, 1, '2017-02-20 13:23:25', '2017-02-20 13:13:27');

-- --------------------------------------------------------

--
-- Table structure for table `webmenu`
--

CREATE TABLE `webmenu` (
  `menu_id` int(11) NOT NULL,
  `menu_title` varchar(50) NOT NULL,
  `menu_link` varchar(255) NOT NULL,
  `menu_status` tinyint(1) NOT NULL DEFAULT '1',
  `menu_position` tinyint(4) NOT NULL,
  `menu_date_modified` datetime NOT NULL,
  `menu_date_added` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `webmenu`
--

INSERT INTO `webmenu` (`menu_id`, `menu_title`, `menu_link`, `menu_status`, `menu_position`, `menu_date_modified`, `menu_date_added`) VALUES
(1, 'Home', 'index', 1, 1, '2017-03-07 06:05:37', '2017-03-07 06:05:37'),
(2, 'News', 'news', 1, 2, '2017-02-17 11:02:00', '2017-02-17 11:02:00'),
(3, 'Announcements', 'announcements', 1, 3, '2017-02-17 11:02:13', '2017-02-17 11:02:13'),
(4, 'About Us', 'about-us', 1, 4, '2017-02-17 11:02:25', '2017-02-17 11:02:25'),
(5, 'Contact Us', 'contact-us', 2, 5, '2017-03-07 06:05:41', '2017-02-17 11:02:36');

-- --------------------------------------------------------

--
-- Table structure for table `webnews`
--

CREATE TABLE `webnews` (
  `news_id` int(11) NOT NULL,
  `news_title` varchar(255) NOT NULL,
  `news_description` text NOT NULL,
  `news_image` varchar(500) NOT NULL,
  `news_deadline` datetime NOT NULL,
  `news_status` tinyint(1) NOT NULL DEFAULT '1',
  `news_poster_id` int(11) NOT NULL,
  `news_date_modified` datetime NOT NULL,
  `news_date_added` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `webnews`
--

INSERT INTO `webnews` (`news_id`, `news_title`, `news_description`, `news_image`, `news_deadline`, `news_status`, `news_poster_id`, `news_date_modified`, `news_date_added`) VALUES
(1, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis feugiat quam velit, vitae ornare libero pellentesque ut.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis feugiat quam velit, vitae ornare libero pellentesque ut. Ut tempus augue sit amet ipsum elementum, eget faucibus erat molestie. Praesent in eros rutrum, ornare leo vitae, interdum nibh. Suspendisse consectetur eget justo non lacinia. In fermentum luctus condimentum. Morbi a libero molestie, facilisis mauris pellentesque, fermentum orci. Vivamus eget risus lacinia, scelerisque dui in, lobortis leo. Aliquam et ultricies dui. Nunc pharetra, enim eu efficitur molestie, metus sem mattis risus, tristique fringilla libero nulla et felis. Nam id sodales elit. Nullam elementum volutpat tortor, id feugiat erat placerat eu.\r\n\r\nSuspendisse sit amet porta orci. Nam ultricies nisi ante. Nulla vel arcu sodales, varius nisi in, porttitor orci. Sed viverra felis eget lacus faucibus hendrerit. Cras erat turpis, faucibus id porta nec, mattis vel velit. Maecenas non magna sit amet velit pretium consectetur. Proin id nulla dictum, euismod purus eget, malesuada augue. Praesent eu sapien risus. Curabitur id nisi neque.', '1.jpg', '2017-02-20 12:38:37', 1, 1, '2017-02-20 12:38:37', '2017-02-20 12:38:37'),
(2, 'Suspendisse sit amet porta orci. Nam ultricies nisi ante. Nulla vel arcu sodales, varius nisi in, porttitor orci. Sed viverra felis eget lacus faucibus hendrerit.', 'Suspendisse sit amet porta orci. Nam ultricies nisi ante. Nulla vel arcu sodales, varius nisi in, porttitor orci. Sed viverra felis eget lacus faucibus hendrerit. Cras erat turpis, faucibus id porta nec, mattis vel velit. Maecenas non magna sit amet velit pretium consectetur. Proin id nulla dictum, euismod purus eget, malesuada augue. Praesent eu sapien risus. Curabitur id nisi neque.\r\n\r\nSed convallis commodo quam ut scelerisque. Fusce non pharetra lectus. Maecenas euismod tincidunt orci ac efficitur. Sed lectus odio, imperdiet nec tincidunt a, varius eget metus. Fusce ullamcorper tempor aliquet. Sed tempus efficitur sapien, in tempor metus aliquam non. Ut dapibus risus sit amet nisi scelerisque, sed faucibus tellus feugiat. Proin facilisis erat magna, eu molestie mi venenatis id. Praesent eleifend ante eget massa dignissim, nec vulputate orci suscipit.', '2.jpg', '2017-02-20 12:40:27', 1, 1, '2017-02-20 12:40:27', '2017-02-20 12:40:27'),
(3, 'Sed convallis commodo quam ut scelerisque. Fusce non pharetra lectus. Maecenas euismod tincidunt orci ac efficitur.', 'Sed convallis commodo quam ut scelerisque. Fusce non pharetra lectus. Maecenas euismod tincidunt orci ac efficitur. Sed lectus odio, imperdiet nec tincidunt a, varius eget metus. Fusce ullamcorper tempor aliquet. Sed tempus efficitur sapien, in tempor metus aliquam non. Ut dapibus risus sit amet nisi scelerisque, sed faucibus tellus feugiat. Proin facilisis erat magna, eu molestie mi venenatis id. Praesent eleifend ante eget massa dignissim, nec vulputate orci suscipit.\r\n\r\nNullam accumsan est vitae ante imperdiet, volutpat porttitor odio condimentum. Suspendisse condimentum eget purus non fermentum. In elit nunc, blandit in augue at, volutpat tincidunt nibh. Donec vestibulum, lorem eget pretium hendrerit, lacus enim bibendum nisl, quis pulvinar quam ex et dolor. Donec sed leo lobortis, eleifend leo ac, dignissim magna. Suspendisse mattis sapien tincidunt, gravida augue id, rhoncus tellus. Sed eu auctor lorem. Etiam id turpis urna. Donec at posuere nunc, id auctor orci. Nam sapien eros, egestas vitae risus nec, commodo consequat urna. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Praesent fringilla neque eros, tristique convallis felis laoreet non. Aliquam in nibh in libero lacinia faucibus a id justo. Interdum et malesuada fames ac ante ipsum primis in faucibus.', '3.jpg', '2017-02-20 12:40:49', 1, 1, '2017-02-20 12:40:49', '2017-02-20 12:40:49'),
(4, 'Nullam accumsan est vitae ante imperdiet, volutpat porttitor odio condimentum. Suspendisse condimentum eget purus non fermentum. ', 'Nullam accumsan est vitae ante imperdiet, volutpat porttitor odio condimentum. Suspendisse condimentum eget purus non fermentum. In elit nunc, blandit in augue at, volutpat tincidunt nibh. Donec vestibulum, lorem eget pretium hendrerit, lacus enim bibendum nisl, quis pulvinar quam ex et dolor. Donec sed leo lobortis, eleifend leo ac, dignissim magna. Suspendisse mattis sapien tincidunt, gravida augue id, rhoncus tellus. Sed eu auctor lorem. Etiam id turpis urna. Donec at posuere nunc, id auctor orci. Nam sapien eros, egestas vitae risus nec, commodo consequat urna. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Praesent fringilla neque eros, tristique convallis felis laoreet non. Aliquam in nibh in libero lacinia faucibus a id justo. Interdum et malesuada fames ac ante ipsum primis in faucibus.', '4.jpg', '2017-02-20 12:41:06', 1, 1, '2017-02-20 12:41:06', '2017-02-20 12:41:06'),
(5, 'Aaaliquam id dui pulvinar, mattis sem in, maximus elit. Cras convallis lobortis quam. Etiam tristique, est id blandit imperdiet, sapien nulla vestibulum ligula, ut rhoncus ligula libero a felis.', 'Aliquam id dui pulvinar, mattis sem in, maximus elit. Cras convallis lobortis quam. Etiam tristique, est id blandit imperdiet, sapien nulla vestibulum ligula, ut rhoncus ligula libero a felis. Morbi tincidunt felis sit amet urna pellentesque lacinia. Maecenas urna elit, posuere quis libero porttitor, placerat aliquet justo. In hac habitasse platea dictumst. Suspendisse elementum vel neque sed aliquet. Curabitur nec cursus mi. Proin id pretium magna, ac tempus sapien. Nam ornare vulputate gravida. Aenean ut tristique lacus. Donec suscipit, ex sed consectetur imperdiet, ex eros pellentesque massa, et scelerisque felis eros non elit. Nulla diam mi, iaculis nec ex quis, accumsan euismod augue.\r\n\r\nVestibulum a ornare est. Vivamus fermentum laoreet dui id tristique. Donec pulvinar tempor mi, ac cursus nibh tempor sit amet. Ut sagittis arcu enim, nec luctus quam vestibulum a. Proin non interdum metus. Vivamus ornare lorem nec justo consequat, in sagittis libero sodales. Donec ullamcorper tristique ligula non consectetur. Vivamus cursus nec lacus nec convallis. Pellentesque eu consectetur nibh. Donec volutpat sodales accumsan. Nullam commodo mattis semper. Donec auctor eu nisi in volutpat. Vivamus sit amet lorem mattis, condimentum augue eu, accumsan lorem. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Quisque lacinia efficitur massa at bibendum. Suspendisse iaculis elit ante.', '5.jpg', '2017-02-20 12:41:29', 1, 1, '2017-02-20 12:42:21', '2017-02-20 12:41:29'),
(6, 'Vestibulum a ornare est. Vivamus fermentum laoreet dui id tristique. Donec pulvinar tempor mi, ac cursus nibh tempor sit amet. Ut sagittis arcu enim, nec luctus quam vestibulum a.', 'Vestibulum a ornare est. Vivamus fermentum laoreet dui id tristique. Donec pulvinar tempor mi, ac cursus nibh tempor sit amet. Ut sagittis arcu enim, nec luctus quam vestibulum a. Proin non interdum metus. Vivamus ornare lorem nec justo consequat, in sagittis libero sodales. Donec ullamcorper tristique ligula non consectetur. Vivamus cursus nec lacus nec convallis. Pellentesque eu consectetur nibh. Donec volutpat sodales accumsan. Nullam commodo mattis semper. Donec auctor eu nisi in volutpat. Vivamus sit amet lorem mattis, condimentum augue eu, accumsan lorem. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Quisque lacinia efficitur massa at bibendum. Suspendisse iaculis elit ante.', '6.jpg', '2017-02-20 12:42:49', 1, 1, '2017-02-20 12:42:49', '2017-02-20 12:42:49'),
(7, 'Integer eu fermentum erat. Sed sollicitudin sollicitudin est, at molestie augue sagittis quis. Suspendisse pellentesque non lorem vitae vehicula. Donec pellentesque ligula vitae risus pulvinar dictum. ', 'Integer eu fermentum erat. Sed sollicitudin sollicitudin est, at molestie augue sagittis quis. Suspendisse pellentesque non lorem vitae vehicula. Donec pellentesque ligula vitae risus pulvinar dictum. Ut commodo mollis quam, quis tempus neque scelerisque at. Vivamus porta risus justo, sit amet luctus felis eleifend ut. Suspendisse id dui metus. Mauris varius quam ante, eget cursus arcu congue in. Quisque ut urna accumsan, efficitur purus vitae, varius libero. Etiam a velit odio. Duis malesuada purus luctus consequat rhoncus. Nulla dapibus neque et lacus fringilla, eu semper dolor tincidunt. In sagittis tortor et nisi sagittis finibus. Pellentesque iaculis ligula nec erat bibendum tincidunt.\n\nMaecenas at tortor sem. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut cursus, enim ac varius commodo, tellus ligula cursus velit, quis sodales augue lorem id arcu. Etiam sit amet pellentesque ipsum. Pellentesque venenatis lorem et ligula euismod, nec commodo felis tristique. Proin libero quam, bibendum vitae mi sagittis, tempor elementum velit. Nulla convallis tempor nisi, semper molestie eros tempus vitae. Ut viverra ligula tempus lorem eleifend, at sagittis purus malesuada. Pellentesque vehicula tincidunt metus a porta.', '6_2.jpg', '2017-02-20 12:43:08', 1, 1, '2017-02-20 12:43:08', '2017-02-20 12:43:08'),
(8, 'Integer eu fermentum erat. Sed sollicitudin sollicitudin est, at molestie augue sagittis quis. Suspendisse pellentesque non lorem vitae vehicula. Donec pellentesque ligula vitae risus pulvinar dictum. ', 'Vestibulum a ornare est. Vivamus fermentum laoreet dui id tristique. Donec pulvinar tempor mi, ac cursus nibh tempor sit amet. Ut sagittis arcu enim, nec luctus quam vestibulum a. Proin non interdum metus. Vivamus ornare lorem nec justo consequat, in sagittis libero sodales. Donec ullamcorper tristique ligula non consectetur. Vivamus cursus nec lacus nec convallis. Pellentesque eu consectetur nibh. Donec volutpat sodales accumsan. Nullam commodo mattis semper. Donec auctor eu nisi in volutpat. Vivamus sit amet lorem mattis, condimentum augue eu, accumsan lorem. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Quisque lacinia efficitur massa at bibendum. Suspendisse iaculis elit ante.', 'Desert.jpg', '2017-03-03 08:10:31', 1, 1, '2017-03-03 08:10:31', '2017-03-03 08:10:31');

-- --------------------------------------------------------

--
-- Table structure for table `webslider`
--

CREATE TABLE `webslider` (
  `slider_id` int(11) NOT NULL,
  `slider_image` varchar(255) NOT NULL,
  `slider_caption` text NOT NULL,
  `slider_title` varchar(255) NOT NULL,
  `slider_status` tinyint(1) NOT NULL DEFAULT '1',
  `slider_poster_id` int(11) NOT NULL,
  `slider_date_modified` datetime NOT NULL,
  `slider_date_added` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `websubmenu`
--

CREATE TABLE `websubmenu` (
  `submenu_id` int(11) NOT NULL,
  `submenu_menu_id` int(11) NOT NULL,
  `submenu_title` varchar(50) NOT NULL,
  `submenu_link` varchar(255) NOT NULL,
  `submenu_status` tinyint(1) NOT NULL DEFAULT '1',
  `submenu_position` tinyint(4) NOT NULL DEFAULT '0',
  `submenu_date_modified` datetime NOT NULL,
  `submenu_date_added` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `websubmenu`
--

INSERT INTO `websubmenu` (`submenu_id`, `submenu_menu_id`, `submenu_title`, `submenu_link`, `submenu_status`, `submenu_position`, `submenu_date_modified`, `submenu_date_added`) VALUES
(1, 4, 'Mission &amp; Vision', 'about-mission-vision', 1, 0, '2017-06-27 09:37:09', '2017-06-27 09:37:09'),
(2, 4, 'Alumni Officers', 'about-alumni-officers', 1, 0, '2017-06-27 09:37:03', '2017-06-27 09:37:03'),
(3, 4, 'Contact Us', 'about-contact-us', 1, 0, '2017-06-27 09:36:56', '2017-06-27 09:36:56');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `auditlog`
--
ALTER TABLE `auditlog`
  ADD PRIMARY KEY (`audit_id`);

--
-- Indexes for table `feedbacks`
--
ALTER TABLE `feedbacks`
  ADD PRIMARY KEY (`fb_id`);

--
-- Indexes for table `graduates`
--
ALTER TABLE `graduates`
  ADD PRIMARY KEY (`grad_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `webaboutus`
--
ALTER TABLE `webaboutus`
  ADD PRIMARY KEY (`about_id`);

--
-- Indexes for table `webannouncements`
--
ALTER TABLE `webannouncements`
  ADD PRIMARY KEY (`announ_id`);

--
-- Indexes for table `webbanner`
--
ALTER TABLE `webbanner`
  ADD PRIMARY KEY (`banner_id`);

--
-- Indexes for table `webcontactus`
--
ALTER TABLE `webcontactus`
  ADD PRIMARY KEY (`contact_id`);

--
-- Indexes for table `webjobs`
--
ALTER TABLE `webjobs`
  ADD PRIMARY KEY (`job_id`);

--
-- Indexes for table `webmenu`
--
ALTER TABLE `webmenu`
  ADD PRIMARY KEY (`menu_id`);

--
-- Indexes for table `webnews`
--
ALTER TABLE `webnews`
  ADD PRIMARY KEY (`news_id`);

--
-- Indexes for table `webslider`
--
ALTER TABLE `webslider`
  ADD PRIMARY KEY (`slider_id`);

--
-- Indexes for table `websubmenu`
--
ALTER TABLE `websubmenu`
  ADD PRIMARY KEY (`submenu_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `auditlog`
--
ALTER TABLE `auditlog`
  MODIFY `audit_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;
--
-- AUTO_INCREMENT for table `feedbacks`
--
ALTER TABLE `feedbacks`
  MODIFY `fb_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `graduates`
--
ALTER TABLE `graduates`
  MODIFY `grad_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `webaboutus`
--
ALTER TABLE `webaboutus`
  MODIFY `about_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `webannouncements`
--
ALTER TABLE `webannouncements`
  MODIFY `announ_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `webbanner`
--
ALTER TABLE `webbanner`
  MODIFY `banner_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `webcontactus`
--
ALTER TABLE `webcontactus`
  MODIFY `contact_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `webjobs`
--
ALTER TABLE `webjobs`
  MODIFY `job_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `webmenu`
--
ALTER TABLE `webmenu`
  MODIFY `menu_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `webnews`
--
ALTER TABLE `webnews`
  MODIFY `news_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `webslider`
--
ALTER TABLE `webslider`
  MODIFY `slider_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `websubmenu`
--
ALTER TABLE `websubmenu`
  MODIFY `submenu_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
