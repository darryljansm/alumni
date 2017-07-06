# MySQL database backup
#
# Generated: Friday 3. March 2017 07:53 PHT
# Hostname: localhost
# Database: `alumni`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `admin`
# --------------------------------------------------------


#
# Delete any existing table `admin`
#

DROP TABLE IF EXISTS `admin`;


#
# Table structure of table `admin`
#

CREATE TABLE `admin` (
  `admin_id` int(11) NOT NULL AUTO_INCREMENT,
  `admin_fname` varchar(50) NOT NULL,
  `admin_mname` varchar(50) NOT NULL,
  `admin_lname` varchar(50) NOT NULL,
  `admin_email` varchar(100) NOT NULL,
  `admin_username` varchar(50) NOT NULL,
  `admin_salt` varchar(50) NOT NULL,
  `admin_password` varchar(100) NOT NULL,
  `admin_level` tinyint(1) NOT NULL COMMENT '1=sysad; 2=moderator; 3=viewing;',
  `admin_status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '0=not active; 1=active; 2=disabled;',
  `admin_date_modified` datetime NOT NULL,
  `admin_date_added` datetime NOT NULL,
  PRIMARY KEY (`admin_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1 ;

#
# Data contents of table admin (1 records)
#
 
INSERT INTO `admin` VALUES (1, 'juan', 'santos', 'dela cruz', 'juan23@mail.com', 'admin', '³W÷þdaÂí±ÂùF®9ïÐ0Ÿ€‘ƒÈn·0¢Ã#üå¨', '3640daa0c1fc63a0be23f357f05202ab732697f6bd5bfb93ef00d947cc133461', 1, 1, '2017-02-08 00:00:00', '2017-02-08 00:00:00') ;
#
# End of data contents of table admin
# --------------------------------------------------------

# MySQL database backup
#
# Generated: Friday 3. March 2017 07:53 PHT
# Hostname: localhost
# Database: `alumni`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `admin`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `auditlog`
# --------------------------------------------------------


#
# Delete any existing table `auditlog`
#

DROP TABLE IF EXISTS `auditlog`;


#
# Table structure of table `auditlog`
#

CREATE TABLE `auditlog` (
  `audit_id` int(11) NOT NULL AUTO_INCREMENT,
  `audit_table_affected` varchar(100) NOT NULL,
  `audit_action` varchar(255) NOT NULL,
  `audit_admin_id` int(11) NOT NULL,
  `audit_datetime` datetime NOT NULL,
  PRIMARY KEY (`audit_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ;

#
# Data contents of table auditlog (0 records)
#

#
# End of data contents of table auditlog
# --------------------------------------------------------

# MySQL database backup
#
# Generated: Friday 3. March 2017 07:53 PHT
# Hostname: localhost
# Database: `alumni`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `admin`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `auditlog`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `feedbacks`
# --------------------------------------------------------


#
# Delete any existing table `feedbacks`
#

DROP TABLE IF EXISTS `feedbacks`;


#
# Table structure of table `feedbacks`
#

CREATE TABLE `feedbacks` (
  `fb_id` int(11) NOT NULL AUTO_INCREMENT,
  `fb_name` varchar(150) NOT NULL,
  `fb_email` varchar(150) NOT NULL,
  `fb_subject` varchar(500) NOT NULL,
  `fb_message` text NOT NULL,
  `fb_date_added` datetime NOT NULL,
  PRIMARY KEY (`fb_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1 ;

#
# Data contents of table feedbacks (1 records)
#
 
INSERT INTO `feedbacks` VALUES (1, 'sdfsdfs', 'dfssdf@asdasd.asd', 'asdasd', 'asdasdasdasd', '2017-02-20 15:18:19') ;
#
# End of data contents of table feedbacks
# --------------------------------------------------------

# MySQL database backup
#
# Generated: Friday 3. March 2017 07:53 PHT
# Hostname: localhost
# Database: `alumni`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `admin`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `auditlog`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `feedbacks`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `graduates`
# --------------------------------------------------------


#
# Delete any existing table `graduates`
#

DROP TABLE IF EXISTS `graduates`;


#
# Table structure of table `graduates`
#

CREATE TABLE `graduates` (
  `grad_id` int(11) NOT NULL AUTO_INCREMENT,
  `grad_fname` varchar(50) NOT NULL,
  `grad_mname` varchar(50) NOT NULL,
  `grad_lname` varchar(50) NOT NULL,
  `grad_gender` tinyint(1) NOT NULL COMMENT '1=male; 2=female',
  `grad_birthday` date NOT NULL,
  `grad_student_id` varchar(11) NOT NULL,
  `grad_course` varchar(100) NOT NULL,
  `grad_dept` varchar(100) NOT NULL,
  `grad_year_graduated` year(4) NOT NULL,
  `grad_so_number` varchar(50) NOT NULL,
  PRIMARY KEY (`grad_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ;

#
# Data contents of table graduates (0 records)
#

#
# End of data contents of table graduates
# --------------------------------------------------------

# MySQL database backup
#
# Generated: Friday 3. March 2017 07:53 PHT
# Hostname: localhost
# Database: `alumni`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `admin`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `auditlog`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `feedbacks`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `graduates`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `users`
# --------------------------------------------------------


#
# Delete any existing table `users`
#

DROP TABLE IF EXISTS `users`;


#
# Table structure of table `users`
#

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_grad_id` int(11) NOT NULL,
  `user_email` varchar(100) NOT NULL,
  `user_contact` varchar(50) NOT NULL,
  `user_address` varchar(255) NOT NULL,
  `user_username` varchar(50) NOT NULL,
  `user_salt` varchar(100) NOT NULL,
  `user_password` varchar(100) NOT NULL,
  `user_status` tinyint(1) NOT NULL DEFAULT '1',
  `user_employed` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0=not employed; 1=employed;',
  `user_company` varchar(155) NOT NULL,
  `user_position` varchar(100) NOT NULL,
  `user_job_level` varchar(100) NOT NULL,
  `user_date_modified` datetime NOT NULL,
  `user_date_added` datetime NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ;

#
# Data contents of table users (0 records)
#

#
# End of data contents of table users
# --------------------------------------------------------

# MySQL database backup
#
# Generated: Friday 3. March 2017 07:53 PHT
# Hostname: localhost
# Database: `alumni`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `admin`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `auditlog`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `feedbacks`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `graduates`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `users`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webaboutus`
# --------------------------------------------------------


#
# Delete any existing table `webaboutus`
#

DROP TABLE IF EXISTS `webaboutus`;


#
# Table structure of table `webaboutus`
#

CREATE TABLE `webaboutus` (
  `about_id` int(11) NOT NULL AUTO_INCREMENT,
  `about_mission` text NOT NULL,
  `about_vision` text NOT NULL,
  `about_history` text NOT NULL,
  `about_date_modified` datetime NOT NULL,
  `about_date_added` datetime NOT NULL,
  PRIMARY KEY (`about_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ;

#
# Data contents of table webaboutus (0 records)
#

#
# End of data contents of table webaboutus
# --------------------------------------------------------

# MySQL database backup
#
# Generated: Friday 3. March 2017 07:53 PHT
# Hostname: localhost
# Database: `alumni`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `admin`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `auditlog`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `feedbacks`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `graduates`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `users`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webaboutus`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webannouncements`
# --------------------------------------------------------


#
# Delete any existing table `webannouncements`
#

DROP TABLE IF EXISTS `webannouncements`;


#
# Table structure of table `webannouncements`
#

CREATE TABLE `webannouncements` (
  `announ_id` int(11) NOT NULL AUTO_INCREMENT,
  `announ_title` varchar(255) NOT NULL,
  `announ_description` text NOT NULL,
  `announ_status` tinyint(1) NOT NULL DEFAULT '1',
  `announ_poster_id` int(11) NOT NULL,
  `announ_date_modified` datetime NOT NULL,
  `announ_date_added` datetime NOT NULL,
  PRIMARY KEY (`announ_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1 ;

#
# Data contents of table webannouncements (7 records)
#
 
INSERT INTO `webannouncements` VALUES (1, 'Maecenas at tortor sem. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut cursus, enim ac varius commodo, tellus ligula cursus velit, quis sodales augue lorem id arcu. Etiam sit amet pellentesque ipsum.', 'Maecenas at tortor sem. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut cursus, enim ac varius commodo, tellus ligula cursus velit, quis sodales augue lorem id arcu. Etiam sit amet pellentesque ipsum. Pellentesque venenatis lorem et ligula euismod, nec commodo felis tristique. Proin libero quam, bibendum vitae mi sagittis, tempor elementum velit. Nulla convallis tempor nisi, semper molestie eros tempus vitae. Ut viverra ligula tempus lorem eleifend, at sagittis purus malesuada. Pellentesque vehicula tincidunt metus a porta.', 1, 1, '2017-02-20 12:43:49', '2017-02-20 12:43:49') ; 
INSERT INTO `webannouncements` VALUES (2, 'Pellentesque eu ultricies leo. Nulla ullamcorper sem mauris, sit amet congue nisi sollicitudin non. Sed venenatis euismod pretium. ', 'Pellentesque eu ultricies leo. Nulla ullamcorper sem mauris, sit amet congue nisi sollicitudin non. Sed venenatis euismod pretium. Vivamus sit amet erat vehicula, semper arcu ut, mattis purus. Nunc at semper sem, sit amet facilisis risus. Fusce interdum egestas finibus. Proin ac tempus nulla. Nullam id ipsum enim. Vivamus sollicitudin blandit pharetra. Donec dictum ligula nisi, non ornare diam venenatis a. In pharetra turpis id elit fermentum sodales. Integer euismod nisl sed facilisis laoreet. Aenean lobortis ullamcorper dapibus. Pellentesque volutpat laoreet hendrerit.

Suspendisse potenti. Donec sed laoreet ipsum. Donec non diam placerat, porta lectus eget, pulvinar quam. Nullam at nulla at dolor consequat dictum. Proin a scelerisque nisi. Ut rhoncus facilisis nibh feugiat tempor. Aliquam erat volutpat.', 1, 1, '2017-02-20 12:44:01', '2017-02-20 12:44:01') ; 
INSERT INTO `webannouncements` VALUES (3, 'Suspendisse potenti. Donec sed laoreet ipsum. Donec non diam placerat, porta lectus eget, pulvinar quam. Nullam at nulla at dolor consequat dictum.', 'Suspendisse potenti. Donec sed laoreet ipsum. Donec non diam placerat, porta lectus eget, pulvinar quam. Nullam at nulla at dolor consequat dictum. Proin a scelerisque nisi. Ut rhoncus facilisis nibh feugiat tempor. Aliquam erat volutpat.

Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Sed in nulla purus. Aliquam lacinia, eros vel volutpat mattis, purus massa sagittis erat, vitae ultrices nisi odio a libero. Praesent bibendum convallis porttitor. Curabitur augue elit, pretium at risus vitae, interdum porta lacus. Integer quis condimentum lectus, nec tempus sem. Maecenas eleifend dui tempor condimentum mollis. Vivamus ut lorem id ipsum sodales efficitur. Donec magna dolor, vulputate non ante vel, tincidunt rutrum nulla. Vivamus pulvinar felis eros, quis pellentesque quam suscipit non. Vestibulum neque orci, convallis sed enim sit amet, rutrum bibendum risus. Curabitur eu ultrices elit. Pellentesque lectus tellus, volutpat sit amet pharetra quis, gravida vitae lacus. Sed euismod enim ut mauris elementum, nec congue neque facilisis. Phasellus eu molestie nulla, dictum sodales nisl.', 1, 1, '2017-02-20 12:44:14', '2017-02-20 12:44:14') ; 
INSERT INTO `webannouncements` VALUES (4, 'Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos.', 'Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Sed in nulla purus. Aliquam lacinia, eros vel volutpat mattis, purus massa sagittis erat, vitae ultrices nisi odio a libero. Praesent bibendum convallis porttitor. Curabitur augue elit, pretium at risus vitae, interdum porta lacus. Integer quis condimentum lectus, nec tempus sem. Maecenas eleifend dui tempor condimentum mollis. Vivamus ut lorem id ipsum sodales efficitur. Donec magna dolor, vulputate non ante vel, tincidunt rutrum nulla. Vivamus pulvinar felis eros, quis pellentesque quam suscipit non. Vestibulum neque orci, convallis sed enim sit amet, rutrum bibendum risus. Curabitur eu ultrices elit. Pellentesque lectus tellus, volutpat sit amet pharetra quis, gravida vitae lacus. Sed euismod enim ut mauris elementum, nec congue neque facilisis. Phasellus eu molestie nulla, dictum sodales nisl.', 1, 1, '2017-02-20 12:44:29', '2017-02-20 12:44:29') ; 
INSERT INTO `webannouncements` VALUES (5, 'Nam neque mauris, consectetur in varius id, elementum vel dolor. Sed vitae massa quis magna fermentum convallis sed venenatis diam. ', 'Nam neque mauris, consectetur in varius id, elementum vel dolor. Sed vitae massa quis magna fermentum convallis sed venenatis diam. Curabitur facilisis, lorem a ornare convallis, neque ligula facilisis nulla, a ultricies odio diam a mi. Phasellus lobortis gravida ligula in vulputate. Duis pellentesque pulvinar viverra. Etiam id suscipit velit, vitae placerat tortor. Ut faucibus ante ipsum, quis ultrices nisi hendrerit vel. Sed euismod velit a neque scelerisque aliquet. Vestibulum dictum eget ante id aliquam.

Nunc rutrum, libero ac dignissim lobortis, odio lacus laoreet urna, non vulputate ex libero in odio. In quis hendrerit velit. Suspendisse cursus justo augue, ut tempus est facilisis non. Donec ac lectus ut felis bibendum malesuada blandit vitae nisi. Nulla facilisi. Praesent facilisis elementum sem a venenatis. Sed accumsan eros vel felis auctor vestibulum. Pellentesque vitae massa ac diam ullamcorper eleifend mattis at quam. Suspendisse non ante efficitur, congue diam ut, placerat dolor. Sed aliquam dolor nibh, a scelerisque tellus pharetra eu. Morbi convallis, erat viverra malesuada fermentum, felis leo tincidunt lacus, ut mollis sem arcu eu odio. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae;', 1, 1, '2017-02-20 12:44:43', '2017-02-20 12:44:43') ; 
INSERT INTO `webannouncements` VALUES (6, 'Nunc rutrum, libero ac dignissim lobortis, odio lacus laoreet urna, non vulputate ex libero in odio. In quis hendrerit velit.', 'Nunc rutrum, libero ac dignissim lobortis, odio lacus laoreet urna, non vulputate ex libero in odio. In quis hendrerit velit. Suspendisse cursus justo augue, ut tempus est facilisis non. Donec ac lectus ut felis bibendum malesuada blandit vitae nisi. Nulla facilisi. Praesent facilisis elementum sem a venenatis. Sed accumsan eros vel felis auctor vestibulum. Pellentesque vitae massa ac diam ullamcorper eleifend mattis at quam. Suspendisse non ante efficitur, congue diam ut, placerat dolor. Sed aliquam dolor nibh, a scelerisque tellus pharetra eu. Morbi convallis, erat viverra malesuada fermentum, felis leo tincidunt lacus, ut mollis sem arcu eu odio. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae;', 1, 1, '2017-02-20 12:44:55', '2017-02-20 12:44:55') ; 
INSERT INTO `webannouncements` VALUES (7, 'Nulla convallis nisl a ante facilisis suscipit. Morbi sit amet imperdiet tortor. Duis posuere gravida nisl, sit amet posuere tortor dictum blandit.', 'Nulla convallis nisl a ante facilisis suscipit. Morbi sit amet imperdiet tortor. Duis posuere gravida nisl, sit amet posuere tortor dictum blandit. Cras ultricies iaculis vulputate. Fusce non turpis porttitor, ornare diam at, cursus ante. Donec at velit magna. Nunc est leo, pretium at dolor a, commodo malesuada neque. Maecenas ultrices in ex ac laoreet. Cras accumsan mi vitae augue consequat, vitae scelerisque est fermentum. Donec vehicula risus ut libero aliquet ultricies. Nulla facilisi.

Integer tortor est, aliquet nec sapien sit amet, commodo consectetur arcu. Curabitur bibendum erat rutrum lorem semper, id blandit diam luctus. Sed suscipit est non risus viverra, in viverra quam hendrerit. Aliquam elit risus, vulputate vel nulla vulputate, consequat venenatis ex. Suspendisse potenti. Cras aliquet metus vitae turpis vestibulum viverra. Donec scelerisque dolor ultricies purus malesuada euismod. Cras eleifend porta elementum. Quisque malesuada leo dolor. Cras consequat leo quis imperdiet suscipit. Vestibulum laoreet risus a nunc ullamcorper viverra. Maecenas hendrerit ante id justo porta, ut ornare mi hendrerit.', 1, 1, '2017-02-20 12:47:17', '2017-02-20 12:45:10') ;
#
# End of data contents of table webannouncements
# --------------------------------------------------------

# MySQL database backup
#
# Generated: Friday 3. March 2017 07:53 PHT
# Hostname: localhost
# Database: `alumni`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `admin`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `auditlog`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `feedbacks`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `graduates`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `users`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webaboutus`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webannouncements`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webbanner`
# --------------------------------------------------------


#
# Delete any existing table `webbanner`
#

DROP TABLE IF EXISTS `webbanner`;


#
# Table structure of table `webbanner`
#

CREATE TABLE `webbanner` (
  `banner_id` int(11) NOT NULL AUTO_INCREMENT,
  `banner_image` varchar(255) NOT NULL,
  `banner_title` varchar(100) NOT NULL,
  `banner_status` tinyint(1) NOT NULL DEFAULT '1',
  `banner_poster_id` int(11) NOT NULL,
  `banner_date_modified` datetime NOT NULL,
  `banner_date_added` datetime NOT NULL,
  PRIMARY KEY (`banner_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1 ;

#
# Data contents of table webbanner (1 records)
#
 
INSERT INTO `webbanner` VALUES (1, 'raffle.jpg', 'CCA Alumni First Fund Raising Event', 1, 1, '2017-02-20 12:47:58', '2017-02-13 20:32:15') ;
#
# End of data contents of table webbanner
# --------------------------------------------------------

# MySQL database backup
#
# Generated: Friday 3. March 2017 07:53 PHT
# Hostname: localhost
# Database: `alumni`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `admin`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `auditlog`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `feedbacks`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `graduates`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `users`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webaboutus`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webannouncements`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webbanner`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webcontactus`
# --------------------------------------------------------


#
# Delete any existing table `webcontactus`
#

DROP TABLE IF EXISTS `webcontactus`;


#
# Table structure of table `webcontactus`
#

CREATE TABLE `webcontactus` (
  `contact_id` int(11) NOT NULL AUTO_INCREMENT,
  `contact_phone` varchar(30) NOT NULL,
  `contact_mobile` varchar(30) NOT NULL,
  `contact_email` varchar(100) NOT NULL,
  `contact_address` varchar(255) NOT NULL,
  `contact_fax` varchar(30) NOT NULL,
  `contact_date_modified` datetime NOT NULL,
  `contact_date_added` datetime NOT NULL,
  PRIMARY KEY (`contact_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ;

#
# Data contents of table webcontactus (0 records)
#

#
# End of data contents of table webcontactus
# --------------------------------------------------------

# MySQL database backup
#
# Generated: Friday 3. March 2017 07:53 PHT
# Hostname: localhost
# Database: `alumni`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `admin`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `auditlog`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `feedbacks`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `graduates`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `users`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webaboutus`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webannouncements`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webbanner`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webcontactus`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webjobs`
# --------------------------------------------------------


#
# Delete any existing table `webjobs`
#

DROP TABLE IF EXISTS `webjobs`;


#
# Table structure of table `webjobs`
#

CREATE TABLE `webjobs` (
  `job_id` int(11) NOT NULL AUTO_INCREMENT,
  `job_title` varchar(500) NOT NULL,
  `job_company` varchar(255) NOT NULL,
  `job_positions` varchar(500) NOT NULL,
  `job_vacancy` varchar(500) NOT NULL,
  `job_description` text NOT NULL,
  `job_poster_id` int(11) NOT NULL,
  `job_status` tinyint(1) NOT NULL DEFAULT '1',
  `job_date_modified` datetime NOT NULL,
  `job_date_added` datetime NOT NULL,
  PRIMARY KEY (`job_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1 ;

#
# Data contents of table webjobs (1 records)
#
 
INSERT INTO `webjobs` VALUES (1, 'Litigation Lawyer', 'Global Estate Resorts, Inc. (a subsidiary of Megaworld Corporation)', 'Litigation Lawyer', '5', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#039;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 1, 1, '2017-02-20 13:23:25', '2017-02-20 13:13:27') ;
#
# End of data contents of table webjobs
# --------------------------------------------------------

# MySQL database backup
#
# Generated: Friday 3. March 2017 07:53 PHT
# Hostname: localhost
# Database: `alumni`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `admin`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `auditlog`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `feedbacks`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `graduates`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `users`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webaboutus`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webannouncements`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webbanner`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webcontactus`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webjobs`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webmenu`
# --------------------------------------------------------


#
# Delete any existing table `webmenu`
#

DROP TABLE IF EXISTS `webmenu`;


#
# Table structure of table `webmenu`
#

CREATE TABLE `webmenu` (
  `menu_id` int(11) NOT NULL AUTO_INCREMENT,
  `menu_title` varchar(50) NOT NULL,
  `menu_link` varchar(255) NOT NULL,
  `menu_status` tinyint(1) NOT NULL DEFAULT '1',
  `menu_position` tinyint(4) NOT NULL,
  `menu_date_modified` datetime NOT NULL,
  `menu_date_added` datetime NOT NULL,
  PRIMARY KEY (`menu_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1 ;

#
# Data contents of table webmenu (5 records)
#
 
INSERT INTO `webmenu` VALUES (1, 'Home', 'index', 1, 1, '2017-02-20 13:35:09', '2017-02-20 13:35:09') ; 
INSERT INTO `webmenu` VALUES (2, 'News', 'news', 1, 2, '2017-02-17 11:02:00', '2017-02-17 11:02:00') ; 
INSERT INTO `webmenu` VALUES (3, 'Announcements', 'announcements', 1, 3, '2017-02-17 11:02:13', '2017-02-17 11:02:13') ; 
INSERT INTO `webmenu` VALUES (4, 'About Us', 'about-us', 1, 4, '2017-02-17 11:02:25', '2017-02-17 11:02:25') ; 
INSERT INTO `webmenu` VALUES (5, 'Contact Us', 'contact-us', 1, 5, '2017-02-17 11:02:36', '2017-02-17 11:02:36') ;
#
# End of data contents of table webmenu
# --------------------------------------------------------

# MySQL database backup
#
# Generated: Friday 3. March 2017 07:53 PHT
# Hostname: localhost
# Database: `alumni`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `admin`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `auditlog`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `feedbacks`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `graduates`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `users`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webaboutus`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webannouncements`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webbanner`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webcontactus`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webjobs`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webmenu`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webnews`
# --------------------------------------------------------


#
# Delete any existing table `webnews`
#

DROP TABLE IF EXISTS `webnews`;


#
# Table structure of table `webnews`
#

CREATE TABLE `webnews` (
  `news_id` int(11) NOT NULL AUTO_INCREMENT,
  `news_title` varchar(255) NOT NULL,
  `news_description` text NOT NULL,
  `news_image` varchar(500) NOT NULL,
  `news_status` tinyint(1) NOT NULL DEFAULT '1',
  `news_poster_id` int(11) NOT NULL,
  `news_date_modified` datetime NOT NULL,
  `news_date_added` datetime NOT NULL,
  PRIMARY KEY (`news_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1 ;

#
# Data contents of table webnews (7 records)
#
 
INSERT INTO `webnews` VALUES (1, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis feugiat quam velit, vitae ornare libero pellentesque ut.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis feugiat quam velit, vitae ornare libero pellentesque ut. Ut tempus augue sit amet ipsum elementum, eget faucibus erat molestie. Praesent in eros rutrum, ornare leo vitae, interdum nibh. Suspendisse consectetur eget justo non lacinia. In fermentum luctus condimentum. Morbi a libero molestie, facilisis mauris pellentesque, fermentum orci. Vivamus eget risus lacinia, scelerisque dui in, lobortis leo. Aliquam et ultricies dui. Nunc pharetra, enim eu efficitur molestie, metus sem mattis risus, tristique fringilla libero nulla et felis. Nam id sodales elit. Nullam elementum volutpat tortor, id feugiat erat placerat eu.

Suspendisse sit amet porta orci. Nam ultricies nisi ante. Nulla vel arcu sodales, varius nisi in, porttitor orci. Sed viverra felis eget lacus faucibus hendrerit. Cras erat turpis, faucibus id porta nec, mattis vel velit. Maecenas non magna sit amet velit pretium consectetur. Proin id nulla dictum, euismod purus eget, malesuada augue. Praesent eu sapien risus. Curabitur id nisi neque.', '1.jpg', 1, 1, '2017-02-20 12:38:37', '2017-02-20 12:38:37') ; 
INSERT INTO `webnews` VALUES (2, 'Suspendisse sit amet porta orci. Nam ultricies nisi ante. Nulla vel arcu sodales, varius nisi in, porttitor orci. Sed viverra felis eget lacus faucibus hendrerit.', 'Suspendisse sit amet porta orci. Nam ultricies nisi ante. Nulla vel arcu sodales, varius nisi in, porttitor orci. Sed viverra felis eget lacus faucibus hendrerit. Cras erat turpis, faucibus id porta nec, mattis vel velit. Maecenas non magna sit amet velit pretium consectetur. Proin id nulla dictum, euismod purus eget, malesuada augue. Praesent eu sapien risus. Curabitur id nisi neque.

Sed convallis commodo quam ut scelerisque. Fusce non pharetra lectus. Maecenas euismod tincidunt orci ac efficitur. Sed lectus odio, imperdiet nec tincidunt a, varius eget metus. Fusce ullamcorper tempor aliquet. Sed tempus efficitur sapien, in tempor metus aliquam non. Ut dapibus risus sit amet nisi scelerisque, sed faucibus tellus feugiat. Proin facilisis erat magna, eu molestie mi venenatis id. Praesent eleifend ante eget massa dignissim, nec vulputate orci suscipit.', '2.jpg', 1, 1, '2017-02-20 12:40:27', '2017-02-20 12:40:27') ; 
INSERT INTO `webnews` VALUES (3, 'Sed convallis commodo quam ut scelerisque. Fusce non pharetra lectus. Maecenas euismod tincidunt orci ac efficitur.', 'Sed convallis commodo quam ut scelerisque. Fusce non pharetra lectus. Maecenas euismod tincidunt orci ac efficitur. Sed lectus odio, imperdiet nec tincidunt a, varius eget metus. Fusce ullamcorper tempor aliquet. Sed tempus efficitur sapien, in tempor metus aliquam non. Ut dapibus risus sit amet nisi scelerisque, sed faucibus tellus feugiat. Proin facilisis erat magna, eu molestie mi venenatis id. Praesent eleifend ante eget massa dignissim, nec vulputate orci suscipit.

Nullam accumsan est vitae ante imperdiet, volutpat porttitor odio condimentum. Suspendisse condimentum eget purus non fermentum. In elit nunc, blandit in augue at, volutpat tincidunt nibh. Donec vestibulum, lorem eget pretium hendrerit, lacus enim bibendum nisl, quis pulvinar quam ex et dolor. Donec sed leo lobortis, eleifend leo ac, dignissim magna. Suspendisse mattis sapien tincidunt, gravida augue id, rhoncus tellus. Sed eu auctor lorem. Etiam id turpis urna. Donec at posuere nunc, id auctor orci. Nam sapien eros, egestas vitae risus nec, commodo consequat urna. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Praesent fringilla neque eros, tristique convallis felis laoreet non. Aliquam in nibh in libero lacinia faucibus a id justo. Interdum et malesuada fames ac ante ipsum primis in faucibus.', '3.jpg', 1, 1, '2017-02-20 12:40:49', '2017-02-20 12:40:49') ; 
INSERT INTO `webnews` VALUES (4, 'Nullam accumsan est vitae ante imperdiet, volutpat porttitor odio condimentum. Suspendisse condimentum eget purus non fermentum. ', 'Nullam accumsan est vitae ante imperdiet, volutpat porttitor odio condimentum. Suspendisse condimentum eget purus non fermentum. In elit nunc, blandit in augue at, volutpat tincidunt nibh. Donec vestibulum, lorem eget pretium hendrerit, lacus enim bibendum nisl, quis pulvinar quam ex et dolor. Donec sed leo lobortis, eleifend leo ac, dignissim magna. Suspendisse mattis sapien tincidunt, gravida augue id, rhoncus tellus. Sed eu auctor lorem. Etiam id turpis urna. Donec at posuere nunc, id auctor orci. Nam sapien eros, egestas vitae risus nec, commodo consequat urna. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Praesent fringilla neque eros, tristique convallis felis laoreet non. Aliquam in nibh in libero lacinia faucibus a id justo. Interdum et malesuada fames ac ante ipsum primis in faucibus.', '4.jpg', 1, 1, '2017-02-20 12:41:06', '2017-02-20 12:41:06') ; 
INSERT INTO `webnews` VALUES (5, 'Aaaliquam id dui pulvinar, mattis sem in, maximus elit. Cras convallis lobortis quam. Etiam tristique, est id blandit imperdiet, sapien nulla vestibulum ligula, ut rhoncus ligula libero a felis.', 'Aliquam id dui pulvinar, mattis sem in, maximus elit. Cras convallis lobortis quam. Etiam tristique, est id blandit imperdiet, sapien nulla vestibulum ligula, ut rhoncus ligula libero a felis. Morbi tincidunt felis sit amet urna pellentesque lacinia. Maecenas urna elit, posuere quis libero porttitor, placerat aliquet justo. In hac habitasse platea dictumst. Suspendisse elementum vel neque sed aliquet. Curabitur nec cursus mi. Proin id pretium magna, ac tempus sapien. Nam ornare vulputate gravida. Aenean ut tristique lacus. Donec suscipit, ex sed consectetur imperdiet, ex eros pellentesque massa, et scelerisque felis eros non elit. Nulla diam mi, iaculis nec ex quis, accumsan euismod augue.

Vestibulum a ornare est. Vivamus fermentum laoreet dui id tristique. Donec pulvinar tempor mi, ac cursus nibh tempor sit amet. Ut sagittis arcu enim, nec luctus quam vestibulum a. Proin non interdum metus. Vivamus ornare lorem nec justo consequat, in sagittis libero sodales. Donec ullamcorper tristique ligula non consectetur. Vivamus cursus nec lacus nec convallis. Pellentesque eu consectetur nibh. Donec volutpat sodales accumsan. Nullam commodo mattis semper. Donec auctor eu nisi in volutpat. Vivamus sit amet lorem mattis, condimentum augue eu, accumsan lorem. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Quisque lacinia efficitur massa at bibendum. Suspendisse iaculis elit ante.', '5.jpg', 1, 1, '2017-02-20 12:42:21', '2017-02-20 12:41:29') ; 
INSERT INTO `webnews` VALUES (6, 'Vestibulum a ornare est. Vivamus fermentum laoreet dui id tristique. Donec pulvinar tempor mi, ac cursus nibh tempor sit amet. Ut sagittis arcu enim, nec luctus quam vestibulum a.', 'Vestibulum a ornare est. Vivamus fermentum laoreet dui id tristique. Donec pulvinar tempor mi, ac cursus nibh tempor sit amet. Ut sagittis arcu enim, nec luctus quam vestibulum a. Proin non interdum metus. Vivamus ornare lorem nec justo consequat, in sagittis libero sodales. Donec ullamcorper tristique ligula non consectetur. Vivamus cursus nec lacus nec convallis. Pellentesque eu consectetur nibh. Donec volutpat sodales accumsan. Nullam commodo mattis semper. Donec auctor eu nisi in volutpat. Vivamus sit amet lorem mattis, condimentum augue eu, accumsan lorem. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Quisque lacinia efficitur massa at bibendum. Suspendisse iaculis elit ante.', '6.jpg', 1, 1, '2017-02-20 12:42:49', '2017-02-20 12:42:49') ; 
INSERT INTO `webnews` VALUES (7, 'Integer eu fermentum erat. Sed sollicitudin sollicitudin est, at molestie augue sagittis quis. Suspendisse pellentesque non lorem vitae vehicula. Donec pellentesque ligula vitae risus pulvinar dictum. ', 'Integer eu fermentum erat. Sed sollicitudin sollicitudin est, at molestie augue sagittis quis. Suspendisse pellentesque non lorem vitae vehicula. Donec pellentesque ligula vitae risus pulvinar dictum. Ut commodo mollis quam, quis tempus neque scelerisque at. Vivamus porta risus justo, sit amet luctus felis eleifend ut. Suspendisse id dui metus. Mauris varius quam ante, eget cursus arcu congue in. Quisque ut urna accumsan, efficitur purus vitae, varius libero. Etiam a velit odio. Duis malesuada purus luctus consequat rhoncus. Nulla dapibus neque et lacus fringilla, eu semper dolor tincidunt. In sagittis tortor et nisi sagittis finibus. Pellentesque iaculis ligula nec erat bibendum tincidunt.

Maecenas at tortor sem. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut cursus, enim ac varius commodo, tellus ligula cursus velit, quis sodales augue lorem id arcu. Etiam sit amet pellentesque ipsum. Pellentesque venenatis lorem et ligula euismod, nec commodo felis tristique. Proin libero quam, bibendum vitae mi sagittis, tempor elementum velit. Nulla convallis tempor nisi, semper molestie eros tempus vitae. Ut viverra ligula tempus lorem eleifend, at sagittis purus malesuada. Pellentesque vehicula tincidunt metus a porta.', '6_2.jpg', 1, 1, '2017-02-20 12:43:08', '2017-02-20 12:43:08') ;
#
# End of data contents of table webnews
# --------------------------------------------------------

# MySQL database backup
#
# Generated: Friday 3. March 2017 07:53 PHT
# Hostname: localhost
# Database: `alumni`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `admin`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `auditlog`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `feedbacks`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `graduates`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `users`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webaboutus`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webannouncements`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webbanner`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webcontactus`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webjobs`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webmenu`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webnews`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webslider`
# --------------------------------------------------------


#
# Delete any existing table `webslider`
#

DROP TABLE IF EXISTS `webslider`;


#
# Table structure of table `webslider`
#

CREATE TABLE `webslider` (
  `slider_id` int(11) NOT NULL AUTO_INCREMENT,
  `slider_image` varchar(255) NOT NULL,
  `slider_caption` text NOT NULL,
  `slider_title` varchar(255) NOT NULL,
  `slider_status` tinyint(1) NOT NULL DEFAULT '1',
  `slider_poster_id` int(11) NOT NULL,
  `slider_date_modified` datetime NOT NULL,
  `slider_date_added` datetime NOT NULL,
  PRIMARY KEY (`slider_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ;

#
# Data contents of table webslider (0 records)
#

#
# End of data contents of table webslider
# --------------------------------------------------------

# MySQL database backup
#
# Generated: Friday 3. March 2017 07:53 PHT
# Hostname: localhost
# Database: `alumni`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `admin`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `auditlog`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `feedbacks`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `graduates`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `users`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webaboutus`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webannouncements`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webbanner`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webcontactus`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webjobs`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webmenu`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webnews`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webslider`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `websubmenu`
# --------------------------------------------------------


#
# Delete any existing table `websubmenu`
#

DROP TABLE IF EXISTS `websubmenu`;


#
# Table structure of table `websubmenu`
#

CREATE TABLE `websubmenu` (
  `submenu_id` int(11) NOT NULL AUTO_INCREMENT,
  `submenu_menu_id` int(11) NOT NULL,
  `submenu_title` varchar(50) NOT NULL,
  `submenu_link` varchar(255) NOT NULL,
  `submenu_status` tinyint(1) NOT NULL DEFAULT '1',
  `submenu_position` tinyint(4) NOT NULL,
  `submenu_date_modified` datetime NOT NULL,
  `submenu_date_added` datetime NOT NULL,
  PRIMARY KEY (`submenu_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1 ;

#
# Data contents of table websubmenu (1 records)
#
 
INSERT INTO `websubmenu` VALUES (1, 1, 'dfddd', 'ddddd', 2, 0, '2017-02-20 13:35:23', '2017-02-20 13:35:15') ;
#
# End of data contents of table websubmenu
# --------------------------------------------------------

# MySQL database backup
#
# Generated: Friday 3. March 2017 07:54 PHT
# Hostname: localhost
# Database: `alumni`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `admin`
# --------------------------------------------------------


#
# Delete any existing table `admin`
#

DROP TABLE IF EXISTS `admin`;


#
# Table structure of table `admin`
#

CREATE TABLE `admin` (
  `admin_id` int(11) NOT NULL AUTO_INCREMENT,
  `admin_fname` varchar(50) NOT NULL,
  `admin_mname` varchar(50) NOT NULL,
  `admin_lname` varchar(50) NOT NULL,
  `admin_email` varchar(100) NOT NULL,
  `admin_username` varchar(50) NOT NULL,
  `admin_salt` varchar(50) NOT NULL,
  `admin_password` varchar(100) NOT NULL,
  `admin_level` tinyint(1) NOT NULL COMMENT '1=sysad; 2=moderator; 3=viewing;',
  `admin_status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '0=not active; 1=active; 2=disabled;',
  `admin_date_modified` datetime NOT NULL,
  `admin_date_added` datetime NOT NULL,
  PRIMARY KEY (`admin_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1 ;

#
# Data contents of table admin (1 records)
#
 
INSERT INTO `admin` VALUES (1, 'juan', 'santos', 'dela cruz', 'juan23@mail.com', 'admin', '³W÷þdaÂí±ÂùF®9ïÐ0Ÿ€‘ƒÈn·0¢Ã#üå¨', '3640daa0c1fc63a0be23f357f05202ab732697f6bd5bfb93ef00d947cc133461', 1, 1, '2017-02-08 00:00:00', '2017-02-08 00:00:00') ;
#
# End of data contents of table admin
# --------------------------------------------------------

# MySQL database backup
#
# Generated: Friday 3. March 2017 07:54 PHT
# Hostname: localhost
# Database: `alumni`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `admin`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `auditlog`
# --------------------------------------------------------


#
# Delete any existing table `auditlog`
#

DROP TABLE IF EXISTS `auditlog`;


#
# Table structure of table `auditlog`
#

CREATE TABLE `auditlog` (
  `audit_id` int(11) NOT NULL AUTO_INCREMENT,
  `audit_table_affected` varchar(100) NOT NULL,
  `audit_action` varchar(255) NOT NULL,
  `audit_admin_id` int(11) NOT NULL,
  `audit_datetime` datetime NOT NULL,
  PRIMARY KEY (`audit_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ;

#
# Data contents of table auditlog (0 records)
#

#
# End of data contents of table auditlog
# --------------------------------------------------------

# MySQL database backup
#
# Generated: Friday 3. March 2017 07:54 PHT
# Hostname: localhost
# Database: `alumni`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `admin`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `auditlog`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `feedbacks`
# --------------------------------------------------------


#
# Delete any existing table `feedbacks`
#

DROP TABLE IF EXISTS `feedbacks`;


#
# Table structure of table `feedbacks`
#

CREATE TABLE `feedbacks` (
  `fb_id` int(11) NOT NULL AUTO_INCREMENT,
  `fb_name` varchar(150) NOT NULL,
  `fb_email` varchar(150) NOT NULL,
  `fb_subject` varchar(500) NOT NULL,
  `fb_message` text NOT NULL,
  `fb_date_added` datetime NOT NULL,
  PRIMARY KEY (`fb_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1 ;

#
# Data contents of table feedbacks (1 records)
#
 
INSERT INTO `feedbacks` VALUES (1, 'sdfsdfs', 'dfssdf@asdasd.asd', 'asdasd', 'asdasdasdasd', '2017-02-20 15:18:19') ;
#
# End of data contents of table feedbacks
# --------------------------------------------------------

# MySQL database backup
#
# Generated: Friday 3. March 2017 07:54 PHT
# Hostname: localhost
# Database: `alumni`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `admin`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `auditlog`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `feedbacks`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `graduates`
# --------------------------------------------------------


#
# Delete any existing table `graduates`
#

DROP TABLE IF EXISTS `graduates`;


#
# Table structure of table `graduates`
#

CREATE TABLE `graduates` (
  `grad_id` int(11) NOT NULL AUTO_INCREMENT,
  `grad_fname` varchar(50) NOT NULL,
  `grad_mname` varchar(50) NOT NULL,
  `grad_lname` varchar(50) NOT NULL,
  `grad_gender` tinyint(1) NOT NULL COMMENT '1=male; 2=female',
  `grad_birthday` date NOT NULL,
  `grad_student_id` varchar(11) NOT NULL,
  `grad_course` varchar(100) NOT NULL,
  `grad_dept` varchar(100) NOT NULL,
  `grad_year_graduated` year(4) NOT NULL,
  `grad_so_number` varchar(50) NOT NULL,
  PRIMARY KEY (`grad_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ;

#
# Data contents of table graduates (0 records)
#

#
# End of data contents of table graduates
# --------------------------------------------------------

# MySQL database backup
#
# Generated: Friday 3. March 2017 07:54 PHT
# Hostname: localhost
# Database: `alumni`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `admin`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `auditlog`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `feedbacks`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `graduates`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `users`
# --------------------------------------------------------


#
# Delete any existing table `users`
#

DROP TABLE IF EXISTS `users`;


#
# Table structure of table `users`
#

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_grad_id` int(11) NOT NULL,
  `user_email` varchar(100) NOT NULL,
  `user_contact` varchar(50) NOT NULL,
  `user_address` varchar(255) NOT NULL,
  `user_username` varchar(50) NOT NULL,
  `user_salt` varchar(100) NOT NULL,
  `user_password` varchar(100) NOT NULL,
  `user_status` tinyint(1) NOT NULL DEFAULT '1',
  `user_employed` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0=not employed; 1=employed;',
  `user_company` varchar(155) NOT NULL,
  `user_position` varchar(100) NOT NULL,
  `user_job_level` varchar(100) NOT NULL,
  `user_date_modified` datetime NOT NULL,
  `user_date_added` datetime NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ;

#
# Data contents of table users (0 records)
#

#
# End of data contents of table users
# --------------------------------------------------------

# MySQL database backup
#
# Generated: Friday 3. March 2017 07:54 PHT
# Hostname: localhost
# Database: `alumni`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `admin`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `auditlog`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `feedbacks`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `graduates`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `users`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webaboutus`
# --------------------------------------------------------


#
# Delete any existing table `webaboutus`
#

DROP TABLE IF EXISTS `webaboutus`;


#
# Table structure of table `webaboutus`
#

CREATE TABLE `webaboutus` (
  `about_id` int(11) NOT NULL AUTO_INCREMENT,
  `about_mission` text NOT NULL,
  `about_vision` text NOT NULL,
  `about_history` text NOT NULL,
  `about_date_modified` datetime NOT NULL,
  `about_date_added` datetime NOT NULL,
  PRIMARY KEY (`about_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ;

#
# Data contents of table webaboutus (0 records)
#

#
# End of data contents of table webaboutus
# --------------------------------------------------------

# MySQL database backup
#
# Generated: Friday 3. March 2017 07:54 PHT
# Hostname: localhost
# Database: `alumni`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `admin`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `auditlog`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `feedbacks`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `graduates`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `users`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webaboutus`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webannouncements`
# --------------------------------------------------------


#
# Delete any existing table `webannouncements`
#

DROP TABLE IF EXISTS `webannouncements`;


#
# Table structure of table `webannouncements`
#

CREATE TABLE `webannouncements` (
  `announ_id` int(11) NOT NULL AUTO_INCREMENT,
  `announ_title` varchar(255) NOT NULL,
  `announ_description` text NOT NULL,
  `announ_status` tinyint(1) NOT NULL DEFAULT '1',
  `announ_poster_id` int(11) NOT NULL,
  `announ_date_modified` datetime NOT NULL,
  `announ_date_added` datetime NOT NULL,
  PRIMARY KEY (`announ_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1 ;

#
# Data contents of table webannouncements (7 records)
#
 
INSERT INTO `webannouncements` VALUES (1, 'Maecenas at tortor sem. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut cursus, enim ac varius commodo, tellus ligula cursus velit, quis sodales augue lorem id arcu. Etiam sit amet pellentesque ipsum.', 'Maecenas at tortor sem. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut cursus, enim ac varius commodo, tellus ligula cursus velit, quis sodales augue lorem id arcu. Etiam sit amet pellentesque ipsum. Pellentesque venenatis lorem et ligula euismod, nec commodo felis tristique. Proin libero quam, bibendum vitae mi sagittis, tempor elementum velit. Nulla convallis tempor nisi, semper molestie eros tempus vitae. Ut viverra ligula tempus lorem eleifend, at sagittis purus malesuada. Pellentesque vehicula tincidunt metus a porta.', 1, 1, '2017-02-20 12:43:49', '2017-02-20 12:43:49') ; 
INSERT INTO `webannouncements` VALUES (2, 'Pellentesque eu ultricies leo. Nulla ullamcorper sem mauris, sit amet congue nisi sollicitudin non. Sed venenatis euismod pretium. ', 'Pellentesque eu ultricies leo. Nulla ullamcorper sem mauris, sit amet congue nisi sollicitudin non. Sed venenatis euismod pretium. Vivamus sit amet erat vehicula, semper arcu ut, mattis purus. Nunc at semper sem, sit amet facilisis risus. Fusce interdum egestas finibus. Proin ac tempus nulla. Nullam id ipsum enim. Vivamus sollicitudin blandit pharetra. Donec dictum ligula nisi, non ornare diam venenatis a. In pharetra turpis id elit fermentum sodales. Integer euismod nisl sed facilisis laoreet. Aenean lobortis ullamcorper dapibus. Pellentesque volutpat laoreet hendrerit.

Suspendisse potenti. Donec sed laoreet ipsum. Donec non diam placerat, porta lectus eget, pulvinar quam. Nullam at nulla at dolor consequat dictum. Proin a scelerisque nisi. Ut rhoncus facilisis nibh feugiat tempor. Aliquam erat volutpat.', 1, 1, '2017-02-20 12:44:01', '2017-02-20 12:44:01') ; 
INSERT INTO `webannouncements` VALUES (3, 'Suspendisse potenti. Donec sed laoreet ipsum. Donec non diam placerat, porta lectus eget, pulvinar quam. Nullam at nulla at dolor consequat dictum.', 'Suspendisse potenti. Donec sed laoreet ipsum. Donec non diam placerat, porta lectus eget, pulvinar quam. Nullam at nulla at dolor consequat dictum. Proin a scelerisque nisi. Ut rhoncus facilisis nibh feugiat tempor. Aliquam erat volutpat.

Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Sed in nulla purus. Aliquam lacinia, eros vel volutpat mattis, purus massa sagittis erat, vitae ultrices nisi odio a libero. Praesent bibendum convallis porttitor. Curabitur augue elit, pretium at risus vitae, interdum porta lacus. Integer quis condimentum lectus, nec tempus sem. Maecenas eleifend dui tempor condimentum mollis. Vivamus ut lorem id ipsum sodales efficitur. Donec magna dolor, vulputate non ante vel, tincidunt rutrum nulla. Vivamus pulvinar felis eros, quis pellentesque quam suscipit non. Vestibulum neque orci, convallis sed enim sit amet, rutrum bibendum risus. Curabitur eu ultrices elit. Pellentesque lectus tellus, volutpat sit amet pharetra quis, gravida vitae lacus. Sed euismod enim ut mauris elementum, nec congue neque facilisis. Phasellus eu molestie nulla, dictum sodales nisl.', 1, 1, '2017-02-20 12:44:14', '2017-02-20 12:44:14') ; 
INSERT INTO `webannouncements` VALUES (4, 'Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos.', 'Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Sed in nulla purus. Aliquam lacinia, eros vel volutpat mattis, purus massa sagittis erat, vitae ultrices nisi odio a libero. Praesent bibendum convallis porttitor. Curabitur augue elit, pretium at risus vitae, interdum porta lacus. Integer quis condimentum lectus, nec tempus sem. Maecenas eleifend dui tempor condimentum mollis. Vivamus ut lorem id ipsum sodales efficitur. Donec magna dolor, vulputate non ante vel, tincidunt rutrum nulla. Vivamus pulvinar felis eros, quis pellentesque quam suscipit non. Vestibulum neque orci, convallis sed enim sit amet, rutrum bibendum risus. Curabitur eu ultrices elit. Pellentesque lectus tellus, volutpat sit amet pharetra quis, gravida vitae lacus. Sed euismod enim ut mauris elementum, nec congue neque facilisis. Phasellus eu molestie nulla, dictum sodales nisl.', 1, 1, '2017-02-20 12:44:29', '2017-02-20 12:44:29') ; 
INSERT INTO `webannouncements` VALUES (5, 'Nam neque mauris, consectetur in varius id, elementum vel dolor. Sed vitae massa quis magna fermentum convallis sed venenatis diam. ', 'Nam neque mauris, consectetur in varius id, elementum vel dolor. Sed vitae massa quis magna fermentum convallis sed venenatis diam. Curabitur facilisis, lorem a ornare convallis, neque ligula facilisis nulla, a ultricies odio diam a mi. Phasellus lobortis gravida ligula in vulputate. Duis pellentesque pulvinar viverra. Etiam id suscipit velit, vitae placerat tortor. Ut faucibus ante ipsum, quis ultrices nisi hendrerit vel. Sed euismod velit a neque scelerisque aliquet. Vestibulum dictum eget ante id aliquam.

Nunc rutrum, libero ac dignissim lobortis, odio lacus laoreet urna, non vulputate ex libero in odio. In quis hendrerit velit. Suspendisse cursus justo augue, ut tempus est facilisis non. Donec ac lectus ut felis bibendum malesuada blandit vitae nisi. Nulla facilisi. Praesent facilisis elementum sem a venenatis. Sed accumsan eros vel felis auctor vestibulum. Pellentesque vitae massa ac diam ullamcorper eleifend mattis at quam. Suspendisse non ante efficitur, congue diam ut, placerat dolor. Sed aliquam dolor nibh, a scelerisque tellus pharetra eu. Morbi convallis, erat viverra malesuada fermentum, felis leo tincidunt lacus, ut mollis sem arcu eu odio. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae;', 1, 1, '2017-02-20 12:44:43', '2017-02-20 12:44:43') ; 
INSERT INTO `webannouncements` VALUES (6, 'Nunc rutrum, libero ac dignissim lobortis, odio lacus laoreet urna, non vulputate ex libero in odio. In quis hendrerit velit.', 'Nunc rutrum, libero ac dignissim lobortis, odio lacus laoreet urna, non vulputate ex libero in odio. In quis hendrerit velit. Suspendisse cursus justo augue, ut tempus est facilisis non. Donec ac lectus ut felis bibendum malesuada blandit vitae nisi. Nulla facilisi. Praesent facilisis elementum sem a venenatis. Sed accumsan eros vel felis auctor vestibulum. Pellentesque vitae massa ac diam ullamcorper eleifend mattis at quam. Suspendisse non ante efficitur, congue diam ut, placerat dolor. Sed aliquam dolor nibh, a scelerisque tellus pharetra eu. Morbi convallis, erat viverra malesuada fermentum, felis leo tincidunt lacus, ut mollis sem arcu eu odio. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae;', 1, 1, '2017-02-20 12:44:55', '2017-02-20 12:44:55') ; 
INSERT INTO `webannouncements` VALUES (7, 'Nulla convallis nisl a ante facilisis suscipit. Morbi sit amet imperdiet tortor. Duis posuere gravida nisl, sit amet posuere tortor dictum blandit.', 'Nulla convallis nisl a ante facilisis suscipit. Morbi sit amet imperdiet tortor. Duis posuere gravida nisl, sit amet posuere tortor dictum blandit. Cras ultricies iaculis vulputate. Fusce non turpis porttitor, ornare diam at, cursus ante. Donec at velit magna. Nunc est leo, pretium at dolor a, commodo malesuada neque. Maecenas ultrices in ex ac laoreet. Cras accumsan mi vitae augue consequat, vitae scelerisque est fermentum. Donec vehicula risus ut libero aliquet ultricies. Nulla facilisi.

Integer tortor est, aliquet nec sapien sit amet, commodo consectetur arcu. Curabitur bibendum erat rutrum lorem semper, id blandit diam luctus. Sed suscipit est non risus viverra, in viverra quam hendrerit. Aliquam elit risus, vulputate vel nulla vulputate, consequat venenatis ex. Suspendisse potenti. Cras aliquet metus vitae turpis vestibulum viverra. Donec scelerisque dolor ultricies purus malesuada euismod. Cras eleifend porta elementum. Quisque malesuada leo dolor. Cras consequat leo quis imperdiet suscipit. Vestibulum laoreet risus a nunc ullamcorper viverra. Maecenas hendrerit ante id justo porta, ut ornare mi hendrerit.', 1, 1, '2017-02-20 12:47:17', '2017-02-20 12:45:10') ;
#
# End of data contents of table webannouncements
# --------------------------------------------------------

# MySQL database backup
#
# Generated: Friday 3. March 2017 07:54 PHT
# Hostname: localhost
# Database: `alumni`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `admin`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `auditlog`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `feedbacks`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `graduates`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `users`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webaboutus`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webannouncements`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webbanner`
# --------------------------------------------------------


#
# Delete any existing table `webbanner`
#

DROP TABLE IF EXISTS `webbanner`;


#
# Table structure of table `webbanner`
#

CREATE TABLE `webbanner` (
  `banner_id` int(11) NOT NULL AUTO_INCREMENT,
  `banner_image` varchar(255) NOT NULL,
  `banner_title` varchar(100) NOT NULL,
  `banner_status` tinyint(1) NOT NULL DEFAULT '1',
  `banner_poster_id` int(11) NOT NULL,
  `banner_date_modified` datetime NOT NULL,
  `banner_date_added` datetime NOT NULL,
  PRIMARY KEY (`banner_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1 ;

#
# Data contents of table webbanner (1 records)
#
 
INSERT INTO `webbanner` VALUES (1, 'raffle.jpg', 'CCA Alumni First Fund Raising Event', 1, 1, '2017-02-20 12:47:58', '2017-02-13 20:32:15') ;
#
# End of data contents of table webbanner
# --------------------------------------------------------

# MySQL database backup
#
# Generated: Friday 3. March 2017 07:54 PHT
# Hostname: localhost
# Database: `alumni`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `admin`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `auditlog`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `feedbacks`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `graduates`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `users`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webaboutus`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webannouncements`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webbanner`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webcontactus`
# --------------------------------------------------------


#
# Delete any existing table `webcontactus`
#

DROP TABLE IF EXISTS `webcontactus`;


#
# Table structure of table `webcontactus`
#

CREATE TABLE `webcontactus` (
  `contact_id` int(11) NOT NULL AUTO_INCREMENT,
  `contact_phone` varchar(30) NOT NULL,
  `contact_mobile` varchar(30) NOT NULL,
  `contact_email` varchar(100) NOT NULL,
  `contact_address` varchar(255) NOT NULL,
  `contact_fax` varchar(30) NOT NULL,
  `contact_date_modified` datetime NOT NULL,
  `contact_date_added` datetime NOT NULL,
  PRIMARY KEY (`contact_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ;

#
# Data contents of table webcontactus (0 records)
#

#
# End of data contents of table webcontactus
# --------------------------------------------------------

# MySQL database backup
#
# Generated: Friday 3. March 2017 07:54 PHT
# Hostname: localhost
# Database: `alumni`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `admin`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `auditlog`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `feedbacks`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `graduates`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `users`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webaboutus`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webannouncements`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webbanner`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webcontactus`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webjobs`
# --------------------------------------------------------


#
# Delete any existing table `webjobs`
#

DROP TABLE IF EXISTS `webjobs`;


#
# Table structure of table `webjobs`
#

CREATE TABLE `webjobs` (
  `job_id` int(11) NOT NULL AUTO_INCREMENT,
  `job_title` varchar(500) NOT NULL,
  `job_company` varchar(255) NOT NULL,
  `job_positions` varchar(500) NOT NULL,
  `job_vacancy` varchar(500) NOT NULL,
  `job_description` text NOT NULL,
  `job_poster_id` int(11) NOT NULL,
  `job_status` tinyint(1) NOT NULL DEFAULT '1',
  `job_date_modified` datetime NOT NULL,
  `job_date_added` datetime NOT NULL,
  PRIMARY KEY (`job_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1 ;

#
# Data contents of table webjobs (1 records)
#
 
INSERT INTO `webjobs` VALUES (1, 'Litigation Lawyer', 'Global Estate Resorts, Inc. (a subsidiary of Megaworld Corporation)', 'Litigation Lawyer', '5', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#039;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 1, 1, '2017-02-20 13:23:25', '2017-02-20 13:13:27') ;
#
# End of data contents of table webjobs
# --------------------------------------------------------

# MySQL database backup
#
# Generated: Friday 3. March 2017 07:54 PHT
# Hostname: localhost
# Database: `alumni`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `admin`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `auditlog`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `feedbacks`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `graduates`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `users`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webaboutus`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webannouncements`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webbanner`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webcontactus`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webjobs`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webmenu`
# --------------------------------------------------------


#
# Delete any existing table `webmenu`
#

DROP TABLE IF EXISTS `webmenu`;


#
# Table structure of table `webmenu`
#

CREATE TABLE `webmenu` (
  `menu_id` int(11) NOT NULL AUTO_INCREMENT,
  `menu_title` varchar(50) NOT NULL,
  `menu_link` varchar(255) NOT NULL,
  `menu_status` tinyint(1) NOT NULL DEFAULT '1',
  `menu_position` tinyint(4) NOT NULL,
  `menu_date_modified` datetime NOT NULL,
  `menu_date_added` datetime NOT NULL,
  PRIMARY KEY (`menu_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1 ;

#
# Data contents of table webmenu (5 records)
#
 
INSERT INTO `webmenu` VALUES (1, 'Home', 'index', 1, 1, '2017-02-20 13:35:09', '2017-02-20 13:35:09') ; 
INSERT INTO `webmenu` VALUES (2, 'News', 'news', 1, 2, '2017-02-17 11:02:00', '2017-02-17 11:02:00') ; 
INSERT INTO `webmenu` VALUES (3, 'Announcements', 'announcements', 1, 3, '2017-02-17 11:02:13', '2017-02-17 11:02:13') ; 
INSERT INTO `webmenu` VALUES (4, 'About Us', 'about-us', 1, 4, '2017-02-17 11:02:25', '2017-02-17 11:02:25') ; 
INSERT INTO `webmenu` VALUES (5, 'Contact Us', 'contact-us', 1, 5, '2017-02-17 11:02:36', '2017-02-17 11:02:36') ;
#
# End of data contents of table webmenu
# --------------------------------------------------------

# MySQL database backup
#
# Generated: Friday 3. March 2017 07:54 PHT
# Hostname: localhost
# Database: `alumni`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `admin`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `auditlog`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `feedbacks`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `graduates`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `users`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webaboutus`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webannouncements`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webbanner`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webcontactus`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webjobs`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webmenu`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webnews`
# --------------------------------------------------------


#
# Delete any existing table `webnews`
#

DROP TABLE IF EXISTS `webnews`;


#
# Table structure of table `webnews`
#

CREATE TABLE `webnews` (
  `news_id` int(11) NOT NULL AUTO_INCREMENT,
  `news_title` varchar(255) NOT NULL,
  `news_description` text NOT NULL,
  `news_image` varchar(500) NOT NULL,
  `news_status` tinyint(1) NOT NULL DEFAULT '1',
  `news_poster_id` int(11) NOT NULL,
  `news_date_modified` datetime NOT NULL,
  `news_date_added` datetime NOT NULL,
  PRIMARY KEY (`news_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1 ;

#
# Data contents of table webnews (7 records)
#
 
INSERT INTO `webnews` VALUES (1, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis feugiat quam velit, vitae ornare libero pellentesque ut.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis feugiat quam velit, vitae ornare libero pellentesque ut. Ut tempus augue sit amet ipsum elementum, eget faucibus erat molestie. Praesent in eros rutrum, ornare leo vitae, interdum nibh. Suspendisse consectetur eget justo non lacinia. In fermentum luctus condimentum. Morbi a libero molestie, facilisis mauris pellentesque, fermentum orci. Vivamus eget risus lacinia, scelerisque dui in, lobortis leo. Aliquam et ultricies dui. Nunc pharetra, enim eu efficitur molestie, metus sem mattis risus, tristique fringilla libero nulla et felis. Nam id sodales elit. Nullam elementum volutpat tortor, id feugiat erat placerat eu.

Suspendisse sit amet porta orci. Nam ultricies nisi ante. Nulla vel arcu sodales, varius nisi in, porttitor orci. Sed viverra felis eget lacus faucibus hendrerit. Cras erat turpis, faucibus id porta nec, mattis vel velit. Maecenas non magna sit amet velit pretium consectetur. Proin id nulla dictum, euismod purus eget, malesuada augue. Praesent eu sapien risus. Curabitur id nisi neque.', '1.jpg', 1, 1, '2017-02-20 12:38:37', '2017-02-20 12:38:37') ; 
INSERT INTO `webnews` VALUES (2, 'Suspendisse sit amet porta orci. Nam ultricies nisi ante. Nulla vel arcu sodales, varius nisi in, porttitor orci. Sed viverra felis eget lacus faucibus hendrerit.', 'Suspendisse sit amet porta orci. Nam ultricies nisi ante. Nulla vel arcu sodales, varius nisi in, porttitor orci. Sed viverra felis eget lacus faucibus hendrerit. Cras erat turpis, faucibus id porta nec, mattis vel velit. Maecenas non magna sit amet velit pretium consectetur. Proin id nulla dictum, euismod purus eget, malesuada augue. Praesent eu sapien risus. Curabitur id nisi neque.

Sed convallis commodo quam ut scelerisque. Fusce non pharetra lectus. Maecenas euismod tincidunt orci ac efficitur. Sed lectus odio, imperdiet nec tincidunt a, varius eget metus. Fusce ullamcorper tempor aliquet. Sed tempus efficitur sapien, in tempor metus aliquam non. Ut dapibus risus sit amet nisi scelerisque, sed faucibus tellus feugiat. Proin facilisis erat magna, eu molestie mi venenatis id. Praesent eleifend ante eget massa dignissim, nec vulputate orci suscipit.', '2.jpg', 1, 1, '2017-02-20 12:40:27', '2017-02-20 12:40:27') ; 
INSERT INTO `webnews` VALUES (3, 'Sed convallis commodo quam ut scelerisque. Fusce non pharetra lectus. Maecenas euismod tincidunt orci ac efficitur.', 'Sed convallis commodo quam ut scelerisque. Fusce non pharetra lectus. Maecenas euismod tincidunt orci ac efficitur. Sed lectus odio, imperdiet nec tincidunt a, varius eget metus. Fusce ullamcorper tempor aliquet. Sed tempus efficitur sapien, in tempor metus aliquam non. Ut dapibus risus sit amet nisi scelerisque, sed faucibus tellus feugiat. Proin facilisis erat magna, eu molestie mi venenatis id. Praesent eleifend ante eget massa dignissim, nec vulputate orci suscipit.

Nullam accumsan est vitae ante imperdiet, volutpat porttitor odio condimentum. Suspendisse condimentum eget purus non fermentum. In elit nunc, blandit in augue at, volutpat tincidunt nibh. Donec vestibulum, lorem eget pretium hendrerit, lacus enim bibendum nisl, quis pulvinar quam ex et dolor. Donec sed leo lobortis, eleifend leo ac, dignissim magna. Suspendisse mattis sapien tincidunt, gravida augue id, rhoncus tellus. Sed eu auctor lorem. Etiam id turpis urna. Donec at posuere nunc, id auctor orci. Nam sapien eros, egestas vitae risus nec, commodo consequat urna. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Praesent fringilla neque eros, tristique convallis felis laoreet non. Aliquam in nibh in libero lacinia faucibus a id justo. Interdum et malesuada fames ac ante ipsum primis in faucibus.', '3.jpg', 1, 1, '2017-02-20 12:40:49', '2017-02-20 12:40:49') ; 
INSERT INTO `webnews` VALUES (4, 'Nullam accumsan est vitae ante imperdiet, volutpat porttitor odio condimentum. Suspendisse condimentum eget purus non fermentum. ', 'Nullam accumsan est vitae ante imperdiet, volutpat porttitor odio condimentum. Suspendisse condimentum eget purus non fermentum. In elit nunc, blandit in augue at, volutpat tincidunt nibh. Donec vestibulum, lorem eget pretium hendrerit, lacus enim bibendum nisl, quis pulvinar quam ex et dolor. Donec sed leo lobortis, eleifend leo ac, dignissim magna. Suspendisse mattis sapien tincidunt, gravida augue id, rhoncus tellus. Sed eu auctor lorem. Etiam id turpis urna. Donec at posuere nunc, id auctor orci. Nam sapien eros, egestas vitae risus nec, commodo consequat urna. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Praesent fringilla neque eros, tristique convallis felis laoreet non. Aliquam in nibh in libero lacinia faucibus a id justo. Interdum et malesuada fames ac ante ipsum primis in faucibus.', '4.jpg', 1, 1, '2017-02-20 12:41:06', '2017-02-20 12:41:06') ; 
INSERT INTO `webnews` VALUES (5, 'Aaaliquam id dui pulvinar, mattis sem in, maximus elit. Cras convallis lobortis quam. Etiam tristique, est id blandit imperdiet, sapien nulla vestibulum ligula, ut rhoncus ligula libero a felis.', 'Aliquam id dui pulvinar, mattis sem in, maximus elit. Cras convallis lobortis quam. Etiam tristique, est id blandit imperdiet, sapien nulla vestibulum ligula, ut rhoncus ligula libero a felis. Morbi tincidunt felis sit amet urna pellentesque lacinia. Maecenas urna elit, posuere quis libero porttitor, placerat aliquet justo. In hac habitasse platea dictumst. Suspendisse elementum vel neque sed aliquet. Curabitur nec cursus mi. Proin id pretium magna, ac tempus sapien. Nam ornare vulputate gravida. Aenean ut tristique lacus. Donec suscipit, ex sed consectetur imperdiet, ex eros pellentesque massa, et scelerisque felis eros non elit. Nulla diam mi, iaculis nec ex quis, accumsan euismod augue.

Vestibulum a ornare est. Vivamus fermentum laoreet dui id tristique. Donec pulvinar tempor mi, ac cursus nibh tempor sit amet. Ut sagittis arcu enim, nec luctus quam vestibulum a. Proin non interdum metus. Vivamus ornare lorem nec justo consequat, in sagittis libero sodales. Donec ullamcorper tristique ligula non consectetur. Vivamus cursus nec lacus nec convallis. Pellentesque eu consectetur nibh. Donec volutpat sodales accumsan. Nullam commodo mattis semper. Donec auctor eu nisi in volutpat. Vivamus sit amet lorem mattis, condimentum augue eu, accumsan lorem. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Quisque lacinia efficitur massa at bibendum. Suspendisse iaculis elit ante.', '5.jpg', 1, 1, '2017-02-20 12:42:21', '2017-02-20 12:41:29') ; 
INSERT INTO `webnews` VALUES (6, 'Vestibulum a ornare est. Vivamus fermentum laoreet dui id tristique. Donec pulvinar tempor mi, ac cursus nibh tempor sit amet. Ut sagittis arcu enim, nec luctus quam vestibulum a.', 'Vestibulum a ornare est. Vivamus fermentum laoreet dui id tristique. Donec pulvinar tempor mi, ac cursus nibh tempor sit amet. Ut sagittis arcu enim, nec luctus quam vestibulum a. Proin non interdum metus. Vivamus ornare lorem nec justo consequat, in sagittis libero sodales. Donec ullamcorper tristique ligula non consectetur. Vivamus cursus nec lacus nec convallis. Pellentesque eu consectetur nibh. Donec volutpat sodales accumsan. Nullam commodo mattis semper. Donec auctor eu nisi in volutpat. Vivamus sit amet lorem mattis, condimentum augue eu, accumsan lorem. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Quisque lacinia efficitur massa at bibendum. Suspendisse iaculis elit ante.', '6.jpg', 1, 1, '2017-02-20 12:42:49', '2017-02-20 12:42:49') ; 
INSERT INTO `webnews` VALUES (7, 'Integer eu fermentum erat. Sed sollicitudin sollicitudin est, at molestie augue sagittis quis. Suspendisse pellentesque non lorem vitae vehicula. Donec pellentesque ligula vitae risus pulvinar dictum. ', 'Integer eu fermentum erat. Sed sollicitudin sollicitudin est, at molestie augue sagittis quis. Suspendisse pellentesque non lorem vitae vehicula. Donec pellentesque ligula vitae risus pulvinar dictum. Ut commodo mollis quam, quis tempus neque scelerisque at. Vivamus porta risus justo, sit amet luctus felis eleifend ut. Suspendisse id dui metus. Mauris varius quam ante, eget cursus arcu congue in. Quisque ut urna accumsan, efficitur purus vitae, varius libero. Etiam a velit odio. Duis malesuada purus luctus consequat rhoncus. Nulla dapibus neque et lacus fringilla, eu semper dolor tincidunt. In sagittis tortor et nisi sagittis finibus. Pellentesque iaculis ligula nec erat bibendum tincidunt.

Maecenas at tortor sem. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut cursus, enim ac varius commodo, tellus ligula cursus velit, quis sodales augue lorem id arcu. Etiam sit amet pellentesque ipsum. Pellentesque venenatis lorem et ligula euismod, nec commodo felis tristique. Proin libero quam, bibendum vitae mi sagittis, tempor elementum velit. Nulla convallis tempor nisi, semper molestie eros tempus vitae. Ut viverra ligula tempus lorem eleifend, at sagittis purus malesuada. Pellentesque vehicula tincidunt metus a porta.', '6_2.jpg', 1, 1, '2017-02-20 12:43:08', '2017-02-20 12:43:08') ;
#
# End of data contents of table webnews
# --------------------------------------------------------

# MySQL database backup
#
# Generated: Friday 3. March 2017 07:54 PHT
# Hostname: localhost
# Database: `alumni`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `admin`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `auditlog`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `feedbacks`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `graduates`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `users`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webaboutus`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webannouncements`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webbanner`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webcontactus`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webjobs`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webmenu`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webnews`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webslider`
# --------------------------------------------------------


#
# Delete any existing table `webslider`
#

DROP TABLE IF EXISTS `webslider`;


#
# Table structure of table `webslider`
#

CREATE TABLE `webslider` (
  `slider_id` int(11) NOT NULL AUTO_INCREMENT,
  `slider_image` varchar(255) NOT NULL,
  `slider_caption` text NOT NULL,
  `slider_title` varchar(255) NOT NULL,
  `slider_status` tinyint(1) NOT NULL DEFAULT '1',
  `slider_poster_id` int(11) NOT NULL,
  `slider_date_modified` datetime NOT NULL,
  `slider_date_added` datetime NOT NULL,
  PRIMARY KEY (`slider_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ;

#
# Data contents of table webslider (0 records)
#

#
# End of data contents of table webslider
# --------------------------------------------------------

# MySQL database backup
#
# Generated: Friday 3. March 2017 07:54 PHT
# Hostname: localhost
# Database: `alumni`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `admin`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `auditlog`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `feedbacks`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `graduates`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `users`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webaboutus`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webannouncements`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webbanner`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webcontactus`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webjobs`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webmenu`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webnews`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webslider`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `websubmenu`
# --------------------------------------------------------


#
# Delete any existing table `websubmenu`
#

DROP TABLE IF EXISTS `websubmenu`;


#
# Table structure of table `websubmenu`
#

CREATE TABLE `websubmenu` (
  `submenu_id` int(11) NOT NULL AUTO_INCREMENT,
  `submenu_menu_id` int(11) NOT NULL,
  `submenu_title` varchar(50) NOT NULL,
  `submenu_link` varchar(255) NOT NULL,
  `submenu_status` tinyint(1) NOT NULL DEFAULT '1',
  `submenu_position` tinyint(4) NOT NULL,
  `submenu_date_modified` datetime NOT NULL,
  `submenu_date_added` datetime NOT NULL,
  PRIMARY KEY (`submenu_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1 ;

#
# Data contents of table websubmenu (1 records)
#
 
INSERT INTO `websubmenu` VALUES (1, 1, 'dfddd', 'ddddd', 2, 0, '2017-02-20 13:35:23', '2017-02-20 13:35:15') ;
#
# End of data contents of table websubmenu
# --------------------------------------------------------

# MySQL database backup
#
# Generated: Friday 3. March 2017 07:54 PHT
# Hostname: localhost
# Database: `alumni`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `admin`
# --------------------------------------------------------


#
# Delete any existing table `admin`
#

DROP TABLE IF EXISTS `admin`;


#
# Table structure of table `admin`
#

CREATE TABLE `admin` (
  `admin_id` int(11) NOT NULL AUTO_INCREMENT,
  `admin_fname` varchar(50) NOT NULL,
  `admin_mname` varchar(50) NOT NULL,
  `admin_lname` varchar(50) NOT NULL,
  `admin_email` varchar(100) NOT NULL,
  `admin_username` varchar(50) NOT NULL,
  `admin_salt` varchar(50) NOT NULL,
  `admin_password` varchar(100) NOT NULL,
  `admin_level` tinyint(1) NOT NULL COMMENT '1=sysad; 2=moderator; 3=viewing;',
  `admin_status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '0=not active; 1=active; 2=disabled;',
  `admin_date_modified` datetime NOT NULL,
  `admin_date_added` datetime NOT NULL,
  PRIMARY KEY (`admin_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1 ;

#
# Data contents of table admin (1 records)
#
 
INSERT INTO `admin` VALUES (1, 'juan', 'santos', 'dela cruz', 'juan23@mail.com', 'admin', '³W÷þdaÂí±ÂùF®9ïÐ0Ÿ€‘ƒÈn·0¢Ã#üå¨', '3640daa0c1fc63a0be23f357f05202ab732697f6bd5bfb93ef00d947cc133461', 1, 1, '2017-02-08 00:00:00', '2017-02-08 00:00:00') ;
#
# End of data contents of table admin
# --------------------------------------------------------

# MySQL database backup
#
# Generated: Friday 3. March 2017 07:54 PHT
# Hostname: localhost
# Database: `alumni`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `admin`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `auditlog`
# --------------------------------------------------------


#
# Delete any existing table `auditlog`
#

DROP TABLE IF EXISTS `auditlog`;


#
# Table structure of table `auditlog`
#

CREATE TABLE `auditlog` (
  `audit_id` int(11) NOT NULL AUTO_INCREMENT,
  `audit_table_affected` varchar(100) NOT NULL,
  `audit_action` varchar(255) NOT NULL,
  `audit_admin_id` int(11) NOT NULL,
  `audit_datetime` datetime NOT NULL,
  PRIMARY KEY (`audit_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ;

#
# Data contents of table auditlog (0 records)
#

#
# End of data contents of table auditlog
# --------------------------------------------------------

# MySQL database backup
#
# Generated: Friday 3. March 2017 07:54 PHT
# Hostname: localhost
# Database: `alumni`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `admin`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `auditlog`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `feedbacks`
# --------------------------------------------------------


#
# Delete any existing table `feedbacks`
#

DROP TABLE IF EXISTS `feedbacks`;


#
# Table structure of table `feedbacks`
#

CREATE TABLE `feedbacks` (
  `fb_id` int(11) NOT NULL AUTO_INCREMENT,
  `fb_name` varchar(150) NOT NULL,
  `fb_email` varchar(150) NOT NULL,
  `fb_subject` varchar(500) NOT NULL,
  `fb_message` text NOT NULL,
  `fb_date_added` datetime NOT NULL,
  PRIMARY KEY (`fb_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1 ;

#
# Data contents of table feedbacks (1 records)
#
 
INSERT INTO `feedbacks` VALUES (1, 'sdfsdfs', 'dfssdf@asdasd.asd', 'asdasd', 'asdasdasdasd', '2017-02-20 15:18:19') ;
#
# End of data contents of table feedbacks
# --------------------------------------------------------

# MySQL database backup
#
# Generated: Friday 3. March 2017 07:54 PHT
# Hostname: localhost
# Database: `alumni`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `admin`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `auditlog`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `feedbacks`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `graduates`
# --------------------------------------------------------


#
# Delete any existing table `graduates`
#

DROP TABLE IF EXISTS `graduates`;


#
# Table structure of table `graduates`
#

CREATE TABLE `graduates` (
  `grad_id` int(11) NOT NULL AUTO_INCREMENT,
  `grad_fname` varchar(50) NOT NULL,
  `grad_mname` varchar(50) NOT NULL,
  `grad_lname` varchar(50) NOT NULL,
  `grad_gender` tinyint(1) NOT NULL COMMENT '1=male; 2=female',
  `grad_birthday` date NOT NULL,
  `grad_student_id` varchar(11) NOT NULL,
  `grad_course` varchar(100) NOT NULL,
  `grad_dept` varchar(100) NOT NULL,
  `grad_year_graduated` year(4) NOT NULL,
  `grad_so_number` varchar(50) NOT NULL,
  PRIMARY KEY (`grad_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ;

#
# Data contents of table graduates (0 records)
#

#
# End of data contents of table graduates
# --------------------------------------------------------

# MySQL database backup
#
# Generated: Friday 3. March 2017 07:54 PHT
# Hostname: localhost
# Database: `alumni`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `admin`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `auditlog`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `feedbacks`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `graduates`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `users`
# --------------------------------------------------------


#
# Delete any existing table `users`
#

DROP TABLE IF EXISTS `users`;


#
# Table structure of table `users`
#

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_grad_id` int(11) NOT NULL,
  `user_email` varchar(100) NOT NULL,
  `user_contact` varchar(50) NOT NULL,
  `user_address` varchar(255) NOT NULL,
  `user_username` varchar(50) NOT NULL,
  `user_salt` varchar(100) NOT NULL,
  `user_password` varchar(100) NOT NULL,
  `user_status` tinyint(1) NOT NULL DEFAULT '1',
  `user_employed` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0=not employed; 1=employed;',
  `user_company` varchar(155) NOT NULL,
  `user_position` varchar(100) NOT NULL,
  `user_job_level` varchar(100) NOT NULL,
  `user_date_modified` datetime NOT NULL,
  `user_date_added` datetime NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ;

#
# Data contents of table users (0 records)
#

#
# End of data contents of table users
# --------------------------------------------------------

# MySQL database backup
#
# Generated: Friday 3. March 2017 07:54 PHT
# Hostname: localhost
# Database: `alumni`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `admin`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `auditlog`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `feedbacks`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `graduates`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `users`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webaboutus`
# --------------------------------------------------------


#
# Delete any existing table `webaboutus`
#

DROP TABLE IF EXISTS `webaboutus`;


#
# Table structure of table `webaboutus`
#

CREATE TABLE `webaboutus` (
  `about_id` int(11) NOT NULL AUTO_INCREMENT,
  `about_mission` text NOT NULL,
  `about_vision` text NOT NULL,
  `about_history` text NOT NULL,
  `about_date_modified` datetime NOT NULL,
  `about_date_added` datetime NOT NULL,
  PRIMARY KEY (`about_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ;

#
# Data contents of table webaboutus (0 records)
#

#
# End of data contents of table webaboutus
# --------------------------------------------------------

# MySQL database backup
#
# Generated: Friday 3. March 2017 07:54 PHT
# Hostname: localhost
# Database: `alumni`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `admin`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `auditlog`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `feedbacks`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `graduates`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `users`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webaboutus`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webannouncements`
# --------------------------------------------------------


#
# Delete any existing table `webannouncements`
#

DROP TABLE IF EXISTS `webannouncements`;


#
# Table structure of table `webannouncements`
#

CREATE TABLE `webannouncements` (
  `announ_id` int(11) NOT NULL AUTO_INCREMENT,
  `announ_title` varchar(255) NOT NULL,
  `announ_description` text NOT NULL,
  `announ_status` tinyint(1) NOT NULL DEFAULT '1',
  `announ_poster_id` int(11) NOT NULL,
  `announ_date_modified` datetime NOT NULL,
  `announ_date_added` datetime NOT NULL,
  PRIMARY KEY (`announ_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1 ;

#
# Data contents of table webannouncements (7 records)
#
 
INSERT INTO `webannouncements` VALUES (1, 'Maecenas at tortor sem. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut cursus, enim ac varius commodo, tellus ligula cursus velit, quis sodales augue lorem id arcu. Etiam sit amet pellentesque ipsum.', 'Maecenas at tortor sem. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut cursus, enim ac varius commodo, tellus ligula cursus velit, quis sodales augue lorem id arcu. Etiam sit amet pellentesque ipsum. Pellentesque venenatis lorem et ligula euismod, nec commodo felis tristique. Proin libero quam, bibendum vitae mi sagittis, tempor elementum velit. Nulla convallis tempor nisi, semper molestie eros tempus vitae. Ut viverra ligula tempus lorem eleifend, at sagittis purus malesuada. Pellentesque vehicula tincidunt metus a porta.', 1, 1, '2017-02-20 12:43:49', '2017-02-20 12:43:49') ; 
INSERT INTO `webannouncements` VALUES (2, 'Pellentesque eu ultricies leo. Nulla ullamcorper sem mauris, sit amet congue nisi sollicitudin non. Sed venenatis euismod pretium. ', 'Pellentesque eu ultricies leo. Nulla ullamcorper sem mauris, sit amet congue nisi sollicitudin non. Sed venenatis euismod pretium. Vivamus sit amet erat vehicula, semper arcu ut, mattis purus. Nunc at semper sem, sit amet facilisis risus. Fusce interdum egestas finibus. Proin ac tempus nulla. Nullam id ipsum enim. Vivamus sollicitudin blandit pharetra. Donec dictum ligula nisi, non ornare diam venenatis a. In pharetra turpis id elit fermentum sodales. Integer euismod nisl sed facilisis laoreet. Aenean lobortis ullamcorper dapibus. Pellentesque volutpat laoreet hendrerit.

Suspendisse potenti. Donec sed laoreet ipsum. Donec non diam placerat, porta lectus eget, pulvinar quam. Nullam at nulla at dolor consequat dictum. Proin a scelerisque nisi. Ut rhoncus facilisis nibh feugiat tempor. Aliquam erat volutpat.', 1, 1, '2017-02-20 12:44:01', '2017-02-20 12:44:01') ; 
INSERT INTO `webannouncements` VALUES (3, 'Suspendisse potenti. Donec sed laoreet ipsum. Donec non diam placerat, porta lectus eget, pulvinar quam. Nullam at nulla at dolor consequat dictum.', 'Suspendisse potenti. Donec sed laoreet ipsum. Donec non diam placerat, porta lectus eget, pulvinar quam. Nullam at nulla at dolor consequat dictum. Proin a scelerisque nisi. Ut rhoncus facilisis nibh feugiat tempor. Aliquam erat volutpat.

Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Sed in nulla purus. Aliquam lacinia, eros vel volutpat mattis, purus massa sagittis erat, vitae ultrices nisi odio a libero. Praesent bibendum convallis porttitor. Curabitur augue elit, pretium at risus vitae, interdum porta lacus. Integer quis condimentum lectus, nec tempus sem. Maecenas eleifend dui tempor condimentum mollis. Vivamus ut lorem id ipsum sodales efficitur. Donec magna dolor, vulputate non ante vel, tincidunt rutrum nulla. Vivamus pulvinar felis eros, quis pellentesque quam suscipit non. Vestibulum neque orci, convallis sed enim sit amet, rutrum bibendum risus. Curabitur eu ultrices elit. Pellentesque lectus tellus, volutpat sit amet pharetra quis, gravida vitae lacus. Sed euismod enim ut mauris elementum, nec congue neque facilisis. Phasellus eu molestie nulla, dictum sodales nisl.', 1, 1, '2017-02-20 12:44:14', '2017-02-20 12:44:14') ; 
INSERT INTO `webannouncements` VALUES (4, 'Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos.', 'Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Sed in nulla purus. Aliquam lacinia, eros vel volutpat mattis, purus massa sagittis erat, vitae ultrices nisi odio a libero. Praesent bibendum convallis porttitor. Curabitur augue elit, pretium at risus vitae, interdum porta lacus. Integer quis condimentum lectus, nec tempus sem. Maecenas eleifend dui tempor condimentum mollis. Vivamus ut lorem id ipsum sodales efficitur. Donec magna dolor, vulputate non ante vel, tincidunt rutrum nulla. Vivamus pulvinar felis eros, quis pellentesque quam suscipit non. Vestibulum neque orci, convallis sed enim sit amet, rutrum bibendum risus. Curabitur eu ultrices elit. Pellentesque lectus tellus, volutpat sit amet pharetra quis, gravida vitae lacus. Sed euismod enim ut mauris elementum, nec congue neque facilisis. Phasellus eu molestie nulla, dictum sodales nisl.', 1, 1, '2017-02-20 12:44:29', '2017-02-20 12:44:29') ; 
INSERT INTO `webannouncements` VALUES (5, 'Nam neque mauris, consectetur in varius id, elementum vel dolor. Sed vitae massa quis magna fermentum convallis sed venenatis diam. ', 'Nam neque mauris, consectetur in varius id, elementum vel dolor. Sed vitae massa quis magna fermentum convallis sed venenatis diam. Curabitur facilisis, lorem a ornare convallis, neque ligula facilisis nulla, a ultricies odio diam a mi. Phasellus lobortis gravida ligula in vulputate. Duis pellentesque pulvinar viverra. Etiam id suscipit velit, vitae placerat tortor. Ut faucibus ante ipsum, quis ultrices nisi hendrerit vel. Sed euismod velit a neque scelerisque aliquet. Vestibulum dictum eget ante id aliquam.

Nunc rutrum, libero ac dignissim lobortis, odio lacus laoreet urna, non vulputate ex libero in odio. In quis hendrerit velit. Suspendisse cursus justo augue, ut tempus est facilisis non. Donec ac lectus ut felis bibendum malesuada blandit vitae nisi. Nulla facilisi. Praesent facilisis elementum sem a venenatis. Sed accumsan eros vel felis auctor vestibulum. Pellentesque vitae massa ac diam ullamcorper eleifend mattis at quam. Suspendisse non ante efficitur, congue diam ut, placerat dolor. Sed aliquam dolor nibh, a scelerisque tellus pharetra eu. Morbi convallis, erat viverra malesuada fermentum, felis leo tincidunt lacus, ut mollis sem arcu eu odio. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae;', 1, 1, '2017-02-20 12:44:43', '2017-02-20 12:44:43') ; 
INSERT INTO `webannouncements` VALUES (6, 'Nunc rutrum, libero ac dignissim lobortis, odio lacus laoreet urna, non vulputate ex libero in odio. In quis hendrerit velit.', 'Nunc rutrum, libero ac dignissim lobortis, odio lacus laoreet urna, non vulputate ex libero in odio. In quis hendrerit velit. Suspendisse cursus justo augue, ut tempus est facilisis non. Donec ac lectus ut felis bibendum malesuada blandit vitae nisi. Nulla facilisi. Praesent facilisis elementum sem a venenatis. Sed accumsan eros vel felis auctor vestibulum. Pellentesque vitae massa ac diam ullamcorper eleifend mattis at quam. Suspendisse non ante efficitur, congue diam ut, placerat dolor. Sed aliquam dolor nibh, a scelerisque tellus pharetra eu. Morbi convallis, erat viverra malesuada fermentum, felis leo tincidunt lacus, ut mollis sem arcu eu odio. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae;', 1, 1, '2017-02-20 12:44:55', '2017-02-20 12:44:55') ; 
INSERT INTO `webannouncements` VALUES (7, 'Nulla convallis nisl a ante facilisis suscipit. Morbi sit amet imperdiet tortor. Duis posuere gravida nisl, sit amet posuere tortor dictum blandit.', 'Nulla convallis nisl a ante facilisis suscipit. Morbi sit amet imperdiet tortor. Duis posuere gravida nisl, sit amet posuere tortor dictum blandit. Cras ultricies iaculis vulputate. Fusce non turpis porttitor, ornare diam at, cursus ante. Donec at velit magna. Nunc est leo, pretium at dolor a, commodo malesuada neque. Maecenas ultrices in ex ac laoreet. Cras accumsan mi vitae augue consequat, vitae scelerisque est fermentum. Donec vehicula risus ut libero aliquet ultricies. Nulla facilisi.

Integer tortor est, aliquet nec sapien sit amet, commodo consectetur arcu. Curabitur bibendum erat rutrum lorem semper, id blandit diam luctus. Sed suscipit est non risus viverra, in viverra quam hendrerit. Aliquam elit risus, vulputate vel nulla vulputate, consequat venenatis ex. Suspendisse potenti. Cras aliquet metus vitae turpis vestibulum viverra. Donec scelerisque dolor ultricies purus malesuada euismod. Cras eleifend porta elementum. Quisque malesuada leo dolor. Cras consequat leo quis imperdiet suscipit. Vestibulum laoreet risus a nunc ullamcorper viverra. Maecenas hendrerit ante id justo porta, ut ornare mi hendrerit.', 1, 1, '2017-02-20 12:47:17', '2017-02-20 12:45:10') ;
#
# End of data contents of table webannouncements
# --------------------------------------------------------

# MySQL database backup
#
# Generated: Friday 3. March 2017 07:54 PHT
# Hostname: localhost
# Database: `alumni`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `admin`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `auditlog`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `feedbacks`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `graduates`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `users`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webaboutus`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webannouncements`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webbanner`
# --------------------------------------------------------


#
# Delete any existing table `webbanner`
#

DROP TABLE IF EXISTS `webbanner`;


#
# Table structure of table `webbanner`
#

CREATE TABLE `webbanner` (
  `banner_id` int(11) NOT NULL AUTO_INCREMENT,
  `banner_image` varchar(255) NOT NULL,
  `banner_title` varchar(100) NOT NULL,
  `banner_status` tinyint(1) NOT NULL DEFAULT '1',
  `banner_poster_id` int(11) NOT NULL,
  `banner_date_modified` datetime NOT NULL,
  `banner_date_added` datetime NOT NULL,
  PRIMARY KEY (`banner_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1 ;

#
# Data contents of table webbanner (1 records)
#
 
INSERT INTO `webbanner` VALUES (1, 'raffle.jpg', 'CCA Alumni First Fund Raising Event', 1, 1, '2017-02-20 12:47:58', '2017-02-13 20:32:15') ;
#
# End of data contents of table webbanner
# --------------------------------------------------------

# MySQL database backup
#
# Generated: Friday 3. March 2017 07:54 PHT
# Hostname: localhost
# Database: `alumni`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `admin`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `auditlog`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `feedbacks`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `graduates`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `users`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webaboutus`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webannouncements`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webbanner`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webcontactus`
# --------------------------------------------------------


#
# Delete any existing table `webcontactus`
#

DROP TABLE IF EXISTS `webcontactus`;


#
# Table structure of table `webcontactus`
#

CREATE TABLE `webcontactus` (
  `contact_id` int(11) NOT NULL AUTO_INCREMENT,
  `contact_phone` varchar(30) NOT NULL,
  `contact_mobile` varchar(30) NOT NULL,
  `contact_email` varchar(100) NOT NULL,
  `contact_address` varchar(255) NOT NULL,
  `contact_fax` varchar(30) NOT NULL,
  `contact_date_modified` datetime NOT NULL,
  `contact_date_added` datetime NOT NULL,
  PRIMARY KEY (`contact_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ;

#
# Data contents of table webcontactus (0 records)
#

#
# End of data contents of table webcontactus
# --------------------------------------------------------

# MySQL database backup
#
# Generated: Friday 3. March 2017 07:54 PHT
# Hostname: localhost
# Database: `alumni`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `admin`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `auditlog`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `feedbacks`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `graduates`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `users`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webaboutus`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webannouncements`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webbanner`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webcontactus`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webjobs`
# --------------------------------------------------------


#
# Delete any existing table `webjobs`
#

DROP TABLE IF EXISTS `webjobs`;


#
# Table structure of table `webjobs`
#

CREATE TABLE `webjobs` (
  `job_id` int(11) NOT NULL AUTO_INCREMENT,
  `job_title` varchar(500) NOT NULL,
  `job_company` varchar(255) NOT NULL,
  `job_positions` varchar(500) NOT NULL,
  `job_vacancy` varchar(500) NOT NULL,
  `job_description` text NOT NULL,
  `job_poster_id` int(11) NOT NULL,
  `job_status` tinyint(1) NOT NULL DEFAULT '1',
  `job_date_modified` datetime NOT NULL,
  `job_date_added` datetime NOT NULL,
  PRIMARY KEY (`job_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1 ;

#
# Data contents of table webjobs (1 records)
#
 
INSERT INTO `webjobs` VALUES (1, 'Litigation Lawyer', 'Global Estate Resorts, Inc. (a subsidiary of Megaworld Corporation)', 'Litigation Lawyer', '5', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#039;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 1, 1, '2017-02-20 13:23:25', '2017-02-20 13:13:27') ;
#
# End of data contents of table webjobs
# --------------------------------------------------------

# MySQL database backup
#
# Generated: Friday 3. March 2017 07:54 PHT
# Hostname: localhost
# Database: `alumni`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `admin`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `auditlog`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `feedbacks`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `graduates`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `users`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webaboutus`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webannouncements`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webbanner`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webcontactus`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webjobs`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webmenu`
# --------------------------------------------------------


#
# Delete any existing table `webmenu`
#

DROP TABLE IF EXISTS `webmenu`;


#
# Table structure of table `webmenu`
#

CREATE TABLE `webmenu` (
  `menu_id` int(11) NOT NULL AUTO_INCREMENT,
  `menu_title` varchar(50) NOT NULL,
  `menu_link` varchar(255) NOT NULL,
  `menu_status` tinyint(1) NOT NULL DEFAULT '1',
  `menu_position` tinyint(4) NOT NULL,
  `menu_date_modified` datetime NOT NULL,
  `menu_date_added` datetime NOT NULL,
  PRIMARY KEY (`menu_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1 ;

#
# Data contents of table webmenu (5 records)
#
 
INSERT INTO `webmenu` VALUES (1, 'Home', 'index', 1, 1, '2017-02-20 13:35:09', '2017-02-20 13:35:09') ; 
INSERT INTO `webmenu` VALUES (2, 'News', 'news', 1, 2, '2017-02-17 11:02:00', '2017-02-17 11:02:00') ; 
INSERT INTO `webmenu` VALUES (3, 'Announcements', 'announcements', 1, 3, '2017-02-17 11:02:13', '2017-02-17 11:02:13') ; 
INSERT INTO `webmenu` VALUES (4, 'About Us', 'about-us', 1, 4, '2017-02-17 11:02:25', '2017-02-17 11:02:25') ; 
INSERT INTO `webmenu` VALUES (5, 'Contact Us', 'contact-us', 1, 5, '2017-02-17 11:02:36', '2017-02-17 11:02:36') ;
#
# End of data contents of table webmenu
# --------------------------------------------------------

# MySQL database backup
#
# Generated: Friday 3. March 2017 07:54 PHT
# Hostname: localhost
# Database: `alumni`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `admin`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `auditlog`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `feedbacks`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `graduates`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `users`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webaboutus`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webannouncements`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webbanner`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webcontactus`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webjobs`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webmenu`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webnews`
# --------------------------------------------------------


#
# Delete any existing table `webnews`
#

DROP TABLE IF EXISTS `webnews`;


#
# Table structure of table `webnews`
#

CREATE TABLE `webnews` (
  `news_id` int(11) NOT NULL AUTO_INCREMENT,
  `news_title` varchar(255) NOT NULL,
  `news_description` text NOT NULL,
  `news_image` varchar(500) NOT NULL,
  `news_status` tinyint(1) NOT NULL DEFAULT '1',
  `news_poster_id` int(11) NOT NULL,
  `news_date_modified` datetime NOT NULL,
  `news_date_added` datetime NOT NULL,
  PRIMARY KEY (`news_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1 ;

#
# Data contents of table webnews (7 records)
#
 
INSERT INTO `webnews` VALUES (1, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis feugiat quam velit, vitae ornare libero pellentesque ut.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis feugiat quam velit, vitae ornare libero pellentesque ut. Ut tempus augue sit amet ipsum elementum, eget faucibus erat molestie. Praesent in eros rutrum, ornare leo vitae, interdum nibh. Suspendisse consectetur eget justo non lacinia. In fermentum luctus condimentum. Morbi a libero molestie, facilisis mauris pellentesque, fermentum orci. Vivamus eget risus lacinia, scelerisque dui in, lobortis leo. Aliquam et ultricies dui. Nunc pharetra, enim eu efficitur molestie, metus sem mattis risus, tristique fringilla libero nulla et felis. Nam id sodales elit. Nullam elementum volutpat tortor, id feugiat erat placerat eu.

Suspendisse sit amet porta orci. Nam ultricies nisi ante. Nulla vel arcu sodales, varius nisi in, porttitor orci. Sed viverra felis eget lacus faucibus hendrerit. Cras erat turpis, faucibus id porta nec, mattis vel velit. Maecenas non magna sit amet velit pretium consectetur. Proin id nulla dictum, euismod purus eget, malesuada augue. Praesent eu sapien risus. Curabitur id nisi neque.', '1.jpg', 1, 1, '2017-02-20 12:38:37', '2017-02-20 12:38:37') ; 
INSERT INTO `webnews` VALUES (2, 'Suspendisse sit amet porta orci. Nam ultricies nisi ante. Nulla vel arcu sodales, varius nisi in, porttitor orci. Sed viverra felis eget lacus faucibus hendrerit.', 'Suspendisse sit amet porta orci. Nam ultricies nisi ante. Nulla vel arcu sodales, varius nisi in, porttitor orci. Sed viverra felis eget lacus faucibus hendrerit. Cras erat turpis, faucibus id porta nec, mattis vel velit. Maecenas non magna sit amet velit pretium consectetur. Proin id nulla dictum, euismod purus eget, malesuada augue. Praesent eu sapien risus. Curabitur id nisi neque.

Sed convallis commodo quam ut scelerisque. Fusce non pharetra lectus. Maecenas euismod tincidunt orci ac efficitur. Sed lectus odio, imperdiet nec tincidunt a, varius eget metus. Fusce ullamcorper tempor aliquet. Sed tempus efficitur sapien, in tempor metus aliquam non. Ut dapibus risus sit amet nisi scelerisque, sed faucibus tellus feugiat. Proin facilisis erat magna, eu molestie mi venenatis id. Praesent eleifend ante eget massa dignissim, nec vulputate orci suscipit.', '2.jpg', 1, 1, '2017-02-20 12:40:27', '2017-02-20 12:40:27') ; 
INSERT INTO `webnews` VALUES (3, 'Sed convallis commodo quam ut scelerisque. Fusce non pharetra lectus. Maecenas euismod tincidunt orci ac efficitur.', 'Sed convallis commodo quam ut scelerisque. Fusce non pharetra lectus. Maecenas euismod tincidunt orci ac efficitur. Sed lectus odio, imperdiet nec tincidunt a, varius eget metus. Fusce ullamcorper tempor aliquet. Sed tempus efficitur sapien, in tempor metus aliquam non. Ut dapibus risus sit amet nisi scelerisque, sed faucibus tellus feugiat. Proin facilisis erat magna, eu molestie mi venenatis id. Praesent eleifend ante eget massa dignissim, nec vulputate orci suscipit.

Nullam accumsan est vitae ante imperdiet, volutpat porttitor odio condimentum. Suspendisse condimentum eget purus non fermentum. In elit nunc, blandit in augue at, volutpat tincidunt nibh. Donec vestibulum, lorem eget pretium hendrerit, lacus enim bibendum nisl, quis pulvinar quam ex et dolor. Donec sed leo lobortis, eleifend leo ac, dignissim magna. Suspendisse mattis sapien tincidunt, gravida augue id, rhoncus tellus. Sed eu auctor lorem. Etiam id turpis urna. Donec at posuere nunc, id auctor orci. Nam sapien eros, egestas vitae risus nec, commodo consequat urna. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Praesent fringilla neque eros, tristique convallis felis laoreet non. Aliquam in nibh in libero lacinia faucibus a id justo. Interdum et malesuada fames ac ante ipsum primis in faucibus.', '3.jpg', 1, 1, '2017-02-20 12:40:49', '2017-02-20 12:40:49') ; 
INSERT INTO `webnews` VALUES (4, 'Nullam accumsan est vitae ante imperdiet, volutpat porttitor odio condimentum. Suspendisse condimentum eget purus non fermentum. ', 'Nullam accumsan est vitae ante imperdiet, volutpat porttitor odio condimentum. Suspendisse condimentum eget purus non fermentum. In elit nunc, blandit in augue at, volutpat tincidunt nibh. Donec vestibulum, lorem eget pretium hendrerit, lacus enim bibendum nisl, quis pulvinar quam ex et dolor. Donec sed leo lobortis, eleifend leo ac, dignissim magna. Suspendisse mattis sapien tincidunt, gravida augue id, rhoncus tellus. Sed eu auctor lorem. Etiam id turpis urna. Donec at posuere nunc, id auctor orci. Nam sapien eros, egestas vitae risus nec, commodo consequat urna. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Praesent fringilla neque eros, tristique convallis felis laoreet non. Aliquam in nibh in libero lacinia faucibus a id justo. Interdum et malesuada fames ac ante ipsum primis in faucibus.', '4.jpg', 1, 1, '2017-02-20 12:41:06', '2017-02-20 12:41:06') ; 
INSERT INTO `webnews` VALUES (5, 'Aaaliquam id dui pulvinar, mattis sem in, maximus elit. Cras convallis lobortis quam. Etiam tristique, est id blandit imperdiet, sapien nulla vestibulum ligula, ut rhoncus ligula libero a felis.', 'Aliquam id dui pulvinar, mattis sem in, maximus elit. Cras convallis lobortis quam. Etiam tristique, est id blandit imperdiet, sapien nulla vestibulum ligula, ut rhoncus ligula libero a felis. Morbi tincidunt felis sit amet urna pellentesque lacinia. Maecenas urna elit, posuere quis libero porttitor, placerat aliquet justo. In hac habitasse platea dictumst. Suspendisse elementum vel neque sed aliquet. Curabitur nec cursus mi. Proin id pretium magna, ac tempus sapien. Nam ornare vulputate gravida. Aenean ut tristique lacus. Donec suscipit, ex sed consectetur imperdiet, ex eros pellentesque massa, et scelerisque felis eros non elit. Nulla diam mi, iaculis nec ex quis, accumsan euismod augue.

Vestibulum a ornare est. Vivamus fermentum laoreet dui id tristique. Donec pulvinar tempor mi, ac cursus nibh tempor sit amet. Ut sagittis arcu enim, nec luctus quam vestibulum a. Proin non interdum metus. Vivamus ornare lorem nec justo consequat, in sagittis libero sodales. Donec ullamcorper tristique ligula non consectetur. Vivamus cursus nec lacus nec convallis. Pellentesque eu consectetur nibh. Donec volutpat sodales accumsan. Nullam commodo mattis semper. Donec auctor eu nisi in volutpat. Vivamus sit amet lorem mattis, condimentum augue eu, accumsan lorem. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Quisque lacinia efficitur massa at bibendum. Suspendisse iaculis elit ante.', '5.jpg', 1, 1, '2017-02-20 12:42:21', '2017-02-20 12:41:29') ; 
INSERT INTO `webnews` VALUES (6, 'Vestibulum a ornare est. Vivamus fermentum laoreet dui id tristique. Donec pulvinar tempor mi, ac cursus nibh tempor sit amet. Ut sagittis arcu enim, nec luctus quam vestibulum a.', 'Vestibulum a ornare est. Vivamus fermentum laoreet dui id tristique. Donec pulvinar tempor mi, ac cursus nibh tempor sit amet. Ut sagittis arcu enim, nec luctus quam vestibulum a. Proin non interdum metus. Vivamus ornare lorem nec justo consequat, in sagittis libero sodales. Donec ullamcorper tristique ligula non consectetur. Vivamus cursus nec lacus nec convallis. Pellentesque eu consectetur nibh. Donec volutpat sodales accumsan. Nullam commodo mattis semper. Donec auctor eu nisi in volutpat. Vivamus sit amet lorem mattis, condimentum augue eu, accumsan lorem. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Quisque lacinia efficitur massa at bibendum. Suspendisse iaculis elit ante.', '6.jpg', 1, 1, '2017-02-20 12:42:49', '2017-02-20 12:42:49') ; 
INSERT INTO `webnews` VALUES (7, 'Integer eu fermentum erat. Sed sollicitudin sollicitudin est, at molestie augue sagittis quis. Suspendisse pellentesque non lorem vitae vehicula. Donec pellentesque ligula vitae risus pulvinar dictum. ', 'Integer eu fermentum erat. Sed sollicitudin sollicitudin est, at molestie augue sagittis quis. Suspendisse pellentesque non lorem vitae vehicula. Donec pellentesque ligula vitae risus pulvinar dictum. Ut commodo mollis quam, quis tempus neque scelerisque at. Vivamus porta risus justo, sit amet luctus felis eleifend ut. Suspendisse id dui metus. Mauris varius quam ante, eget cursus arcu congue in. Quisque ut urna accumsan, efficitur purus vitae, varius libero. Etiam a velit odio. Duis malesuada purus luctus consequat rhoncus. Nulla dapibus neque et lacus fringilla, eu semper dolor tincidunt. In sagittis tortor et nisi sagittis finibus. Pellentesque iaculis ligula nec erat bibendum tincidunt.

Maecenas at tortor sem. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut cursus, enim ac varius commodo, tellus ligula cursus velit, quis sodales augue lorem id arcu. Etiam sit amet pellentesque ipsum. Pellentesque venenatis lorem et ligula euismod, nec commodo felis tristique. Proin libero quam, bibendum vitae mi sagittis, tempor elementum velit. Nulla convallis tempor nisi, semper molestie eros tempus vitae. Ut viverra ligula tempus lorem eleifend, at sagittis purus malesuada. Pellentesque vehicula tincidunt metus a porta.', '6_2.jpg', 1, 1, '2017-02-20 12:43:08', '2017-02-20 12:43:08') ;
#
# End of data contents of table webnews
# --------------------------------------------------------

# MySQL database backup
#
# Generated: Friday 3. March 2017 07:54 PHT
# Hostname: localhost
# Database: `alumni`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `admin`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `auditlog`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `feedbacks`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `graduates`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `users`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webaboutus`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webannouncements`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webbanner`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webcontactus`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webjobs`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webmenu`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webnews`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webslider`
# --------------------------------------------------------


#
# Delete any existing table `webslider`
#

DROP TABLE IF EXISTS `webslider`;


#
# Table structure of table `webslider`
#

CREATE TABLE `webslider` (
  `slider_id` int(11) NOT NULL AUTO_INCREMENT,
  `slider_image` varchar(255) NOT NULL,
  `slider_caption` text NOT NULL,
  `slider_title` varchar(255) NOT NULL,
  `slider_status` tinyint(1) NOT NULL DEFAULT '1',
  `slider_poster_id` int(11) NOT NULL,
  `slider_date_modified` datetime NOT NULL,
  `slider_date_added` datetime NOT NULL,
  PRIMARY KEY (`slider_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ;

#
# Data contents of table webslider (0 records)
#

#
# End of data contents of table webslider
# --------------------------------------------------------

# MySQL database backup
#
# Generated: Friday 3. March 2017 07:54 PHT
# Hostname: localhost
# Database: `alumni`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `admin`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `auditlog`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `feedbacks`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `graduates`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `users`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webaboutus`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webannouncements`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webbanner`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webcontactus`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webjobs`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webmenu`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webnews`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webslider`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `websubmenu`
# --------------------------------------------------------


#
# Delete any existing table `websubmenu`
#

DROP TABLE IF EXISTS `websubmenu`;


#
# Table structure of table `websubmenu`
#

CREATE TABLE `websubmenu` (
  `submenu_id` int(11) NOT NULL AUTO_INCREMENT,
  `submenu_menu_id` int(11) NOT NULL,
  `submenu_title` varchar(50) NOT NULL,
  `submenu_link` varchar(255) NOT NULL,
  `submenu_status` tinyint(1) NOT NULL DEFAULT '1',
  `submenu_position` tinyint(4) NOT NULL,
  `submenu_date_modified` datetime NOT NULL,
  `submenu_date_added` datetime NOT NULL,
  PRIMARY KEY (`submenu_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1 ;

#
# Data contents of table websubmenu (1 records)
#
 
INSERT INTO `websubmenu` VALUES (1, 1, 'dfddd', 'ddddd', 2, 0, '2017-02-20 13:35:23', '2017-02-20 13:35:15') ;
#
# End of data contents of table websubmenu
# --------------------------------------------------------

# MySQL database backup
#
# Generated: Friday 3. March 2017 07:55 PHT
# Hostname: localhost
# Database: `alumni`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `admin`
# --------------------------------------------------------


#
# Delete any existing table `admin`
#

DROP TABLE IF EXISTS `admin`;


#
# Table structure of table `admin`
#

CREATE TABLE `admin` (
  `admin_id` int(11) NOT NULL AUTO_INCREMENT,
  `admin_fname` varchar(50) NOT NULL,
  `admin_mname` varchar(50) NOT NULL,
  `admin_lname` varchar(50) NOT NULL,
  `admin_email` varchar(100) NOT NULL,
  `admin_username` varchar(50) NOT NULL,
  `admin_salt` varchar(50) NOT NULL,
  `admin_password` varchar(100) NOT NULL,
  `admin_level` tinyint(1) NOT NULL COMMENT '1=sysad; 2=moderator; 3=viewing;',
  `admin_status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '0=not active; 1=active; 2=disabled;',
  `admin_date_modified` datetime NOT NULL,
  `admin_date_added` datetime NOT NULL,
  PRIMARY KEY (`admin_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1 ;

#
# Data contents of table admin (1 records)
#
 
INSERT INTO `admin` VALUES (1, 'juan', 'santos', 'dela cruz', 'juan23@mail.com', 'admin', '³W÷þdaÂí±ÂùF®9ïÐ0Ÿ€‘ƒÈn·0¢Ã#üå¨', '3640daa0c1fc63a0be23f357f05202ab732697f6bd5bfb93ef00d947cc133461', 1, 1, '2017-02-08 00:00:00', '2017-02-08 00:00:00') ;
#
# End of data contents of table admin
# --------------------------------------------------------

# MySQL database backup
#
# Generated: Friday 3. March 2017 07:55 PHT
# Hostname: localhost
# Database: `alumni`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `admin`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `auditlog`
# --------------------------------------------------------


#
# Delete any existing table `auditlog`
#

DROP TABLE IF EXISTS `auditlog`;


#
# Table structure of table `auditlog`
#

CREATE TABLE `auditlog` (
  `audit_id` int(11) NOT NULL AUTO_INCREMENT,
  `audit_table_affected` varchar(100) NOT NULL,
  `audit_action` varchar(255) NOT NULL,
  `audit_admin_id` int(11) NOT NULL,
  `audit_datetime` datetime NOT NULL,
  PRIMARY KEY (`audit_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ;

#
# Data contents of table auditlog (0 records)
#

#
# End of data contents of table auditlog
# --------------------------------------------------------

# MySQL database backup
#
# Generated: Friday 3. March 2017 07:55 PHT
# Hostname: localhost
# Database: `alumni`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `admin`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `auditlog`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `feedbacks`
# --------------------------------------------------------


#
# Delete any existing table `feedbacks`
#

DROP TABLE IF EXISTS `feedbacks`;


#
# Table structure of table `feedbacks`
#

CREATE TABLE `feedbacks` (
  `fb_id` int(11) NOT NULL AUTO_INCREMENT,
  `fb_name` varchar(150) NOT NULL,
  `fb_email` varchar(150) NOT NULL,
  `fb_subject` varchar(500) NOT NULL,
  `fb_message` text NOT NULL,
  `fb_date_added` datetime NOT NULL,
  PRIMARY KEY (`fb_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1 ;

#
# Data contents of table feedbacks (1 records)
#
 
INSERT INTO `feedbacks` VALUES (1, 'sdfsdfs', 'dfssdf@asdasd.asd', 'asdasd', 'asdasdasdasd', '2017-02-20 15:18:19') ;
#
# End of data contents of table feedbacks
# --------------------------------------------------------

# MySQL database backup
#
# Generated: Friday 3. March 2017 07:55 PHT
# Hostname: localhost
# Database: `alumni`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `admin`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `auditlog`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `feedbacks`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `graduates`
# --------------------------------------------------------


#
# Delete any existing table `graduates`
#

DROP TABLE IF EXISTS `graduates`;


#
# Table structure of table `graduates`
#

CREATE TABLE `graduates` (
  `grad_id` int(11) NOT NULL AUTO_INCREMENT,
  `grad_fname` varchar(50) NOT NULL,
  `grad_mname` varchar(50) NOT NULL,
  `grad_lname` varchar(50) NOT NULL,
  `grad_gender` tinyint(1) NOT NULL COMMENT '1=male; 2=female',
  `grad_birthday` date NOT NULL,
  `grad_student_id` varchar(11) NOT NULL,
  `grad_course` varchar(100) NOT NULL,
  `grad_dept` varchar(100) NOT NULL,
  `grad_year_graduated` year(4) NOT NULL,
  `grad_so_number` varchar(50) NOT NULL,
  PRIMARY KEY (`grad_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ;

#
# Data contents of table graduates (0 records)
#

#
# End of data contents of table graduates
# --------------------------------------------------------

# MySQL database backup
#
# Generated: Friday 3. March 2017 07:55 PHT
# Hostname: localhost
# Database: `alumni`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `admin`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `auditlog`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `feedbacks`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `graduates`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `users`
# --------------------------------------------------------


#
# Delete any existing table `users`
#

DROP TABLE IF EXISTS `users`;


#
# Table structure of table `users`
#

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_grad_id` int(11) NOT NULL,
  `user_email` varchar(100) NOT NULL,
  `user_contact` varchar(50) NOT NULL,
  `user_address` varchar(255) NOT NULL,
  `user_username` varchar(50) NOT NULL,
  `user_salt` varchar(100) NOT NULL,
  `user_password` varchar(100) NOT NULL,
  `user_status` tinyint(1) NOT NULL DEFAULT '1',
  `user_employed` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0=not employed; 1=employed;',
  `user_company` varchar(155) NOT NULL,
  `user_position` varchar(100) NOT NULL,
  `user_job_level` varchar(100) NOT NULL,
  `user_date_modified` datetime NOT NULL,
  `user_date_added` datetime NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ;

#
# Data contents of table users (0 records)
#

#
# End of data contents of table users
# --------------------------------------------------------

# MySQL database backup
#
# Generated: Friday 3. March 2017 07:55 PHT
# Hostname: localhost
# Database: `alumni`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `admin`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `auditlog`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `feedbacks`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `graduates`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `users`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webaboutus`
# --------------------------------------------------------


#
# Delete any existing table `webaboutus`
#

DROP TABLE IF EXISTS `webaboutus`;


#
# Table structure of table `webaboutus`
#

CREATE TABLE `webaboutus` (
  `about_id` int(11) NOT NULL AUTO_INCREMENT,
  `about_mission` text NOT NULL,
  `about_vision` text NOT NULL,
  `about_history` text NOT NULL,
  `about_date_modified` datetime NOT NULL,
  `about_date_added` datetime NOT NULL,
  PRIMARY KEY (`about_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ;

#
# Data contents of table webaboutus (0 records)
#

#
# End of data contents of table webaboutus
# --------------------------------------------------------

# MySQL database backup
#
# Generated: Friday 3. March 2017 07:55 PHT
# Hostname: localhost
# Database: `alumni`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `admin`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `auditlog`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `feedbacks`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `graduates`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `users`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webaboutus`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webannouncements`
# --------------------------------------------------------


#
# Delete any existing table `webannouncements`
#

DROP TABLE IF EXISTS `webannouncements`;


#
# Table structure of table `webannouncements`
#

CREATE TABLE `webannouncements` (
  `announ_id` int(11) NOT NULL AUTO_INCREMENT,
  `announ_title` varchar(255) NOT NULL,
  `announ_description` text NOT NULL,
  `announ_status` tinyint(1) NOT NULL DEFAULT '1',
  `announ_poster_id` int(11) NOT NULL,
  `announ_date_modified` datetime NOT NULL,
  `announ_date_added` datetime NOT NULL,
  PRIMARY KEY (`announ_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1 ;

#
# Data contents of table webannouncements (7 records)
#
 
INSERT INTO `webannouncements` VALUES (1, 'Maecenas at tortor sem. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut cursus, enim ac varius commodo, tellus ligula cursus velit, quis sodales augue lorem id arcu. Etiam sit amet pellentesque ipsum.', 'Maecenas at tortor sem. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut cursus, enim ac varius commodo, tellus ligula cursus velit, quis sodales augue lorem id arcu. Etiam sit amet pellentesque ipsum. Pellentesque venenatis lorem et ligula euismod, nec commodo felis tristique. Proin libero quam, bibendum vitae mi sagittis, tempor elementum velit. Nulla convallis tempor nisi, semper molestie eros tempus vitae. Ut viverra ligula tempus lorem eleifend, at sagittis purus malesuada. Pellentesque vehicula tincidunt metus a porta.', 1, 1, '2017-02-20 12:43:49', '2017-02-20 12:43:49') ; 
INSERT INTO `webannouncements` VALUES (2, 'Pellentesque eu ultricies leo. Nulla ullamcorper sem mauris, sit amet congue nisi sollicitudin non. Sed venenatis euismod pretium. ', 'Pellentesque eu ultricies leo. Nulla ullamcorper sem mauris, sit amet congue nisi sollicitudin non. Sed venenatis euismod pretium. Vivamus sit amet erat vehicula, semper arcu ut, mattis purus. Nunc at semper sem, sit amet facilisis risus. Fusce interdum egestas finibus. Proin ac tempus nulla. Nullam id ipsum enim. Vivamus sollicitudin blandit pharetra. Donec dictum ligula nisi, non ornare diam venenatis a. In pharetra turpis id elit fermentum sodales. Integer euismod nisl sed facilisis laoreet. Aenean lobortis ullamcorper dapibus. Pellentesque volutpat laoreet hendrerit.

Suspendisse potenti. Donec sed laoreet ipsum. Donec non diam placerat, porta lectus eget, pulvinar quam. Nullam at nulla at dolor consequat dictum. Proin a scelerisque nisi. Ut rhoncus facilisis nibh feugiat tempor. Aliquam erat volutpat.', 1, 1, '2017-02-20 12:44:01', '2017-02-20 12:44:01') ; 
INSERT INTO `webannouncements` VALUES (3, 'Suspendisse potenti. Donec sed laoreet ipsum. Donec non diam placerat, porta lectus eget, pulvinar quam. Nullam at nulla at dolor consequat dictum.', 'Suspendisse potenti. Donec sed laoreet ipsum. Donec non diam placerat, porta lectus eget, pulvinar quam. Nullam at nulla at dolor consequat dictum. Proin a scelerisque nisi. Ut rhoncus facilisis nibh feugiat tempor. Aliquam erat volutpat.

Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Sed in nulla purus. Aliquam lacinia, eros vel volutpat mattis, purus massa sagittis erat, vitae ultrices nisi odio a libero. Praesent bibendum convallis porttitor. Curabitur augue elit, pretium at risus vitae, interdum porta lacus. Integer quis condimentum lectus, nec tempus sem. Maecenas eleifend dui tempor condimentum mollis. Vivamus ut lorem id ipsum sodales efficitur. Donec magna dolor, vulputate non ante vel, tincidunt rutrum nulla. Vivamus pulvinar felis eros, quis pellentesque quam suscipit non. Vestibulum neque orci, convallis sed enim sit amet, rutrum bibendum risus. Curabitur eu ultrices elit. Pellentesque lectus tellus, volutpat sit amet pharetra quis, gravida vitae lacus. Sed euismod enim ut mauris elementum, nec congue neque facilisis. Phasellus eu molestie nulla, dictum sodales nisl.', 1, 1, '2017-02-20 12:44:14', '2017-02-20 12:44:14') ; 
INSERT INTO `webannouncements` VALUES (4, 'Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos.', 'Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Sed in nulla purus. Aliquam lacinia, eros vel volutpat mattis, purus massa sagittis erat, vitae ultrices nisi odio a libero. Praesent bibendum convallis porttitor. Curabitur augue elit, pretium at risus vitae, interdum porta lacus. Integer quis condimentum lectus, nec tempus sem. Maecenas eleifend dui tempor condimentum mollis. Vivamus ut lorem id ipsum sodales efficitur. Donec magna dolor, vulputate non ante vel, tincidunt rutrum nulla. Vivamus pulvinar felis eros, quis pellentesque quam suscipit non. Vestibulum neque orci, convallis sed enim sit amet, rutrum bibendum risus. Curabitur eu ultrices elit. Pellentesque lectus tellus, volutpat sit amet pharetra quis, gravida vitae lacus. Sed euismod enim ut mauris elementum, nec congue neque facilisis. Phasellus eu molestie nulla, dictum sodales nisl.', 1, 1, '2017-02-20 12:44:29', '2017-02-20 12:44:29') ; 
INSERT INTO `webannouncements` VALUES (5, 'Nam neque mauris, consectetur in varius id, elementum vel dolor. Sed vitae massa quis magna fermentum convallis sed venenatis diam. ', 'Nam neque mauris, consectetur in varius id, elementum vel dolor. Sed vitae massa quis magna fermentum convallis sed venenatis diam. Curabitur facilisis, lorem a ornare convallis, neque ligula facilisis nulla, a ultricies odio diam a mi. Phasellus lobortis gravida ligula in vulputate. Duis pellentesque pulvinar viverra. Etiam id suscipit velit, vitae placerat tortor. Ut faucibus ante ipsum, quis ultrices nisi hendrerit vel. Sed euismod velit a neque scelerisque aliquet. Vestibulum dictum eget ante id aliquam.

Nunc rutrum, libero ac dignissim lobortis, odio lacus laoreet urna, non vulputate ex libero in odio. In quis hendrerit velit. Suspendisse cursus justo augue, ut tempus est facilisis non. Donec ac lectus ut felis bibendum malesuada blandit vitae nisi. Nulla facilisi. Praesent facilisis elementum sem a venenatis. Sed accumsan eros vel felis auctor vestibulum. Pellentesque vitae massa ac diam ullamcorper eleifend mattis at quam. Suspendisse non ante efficitur, congue diam ut, placerat dolor. Sed aliquam dolor nibh, a scelerisque tellus pharetra eu. Morbi convallis, erat viverra malesuada fermentum, felis leo tincidunt lacus, ut mollis sem arcu eu odio. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae;', 1, 1, '2017-02-20 12:44:43', '2017-02-20 12:44:43') ; 
INSERT INTO `webannouncements` VALUES (6, 'Nunc rutrum, libero ac dignissim lobortis, odio lacus laoreet urna, non vulputate ex libero in odio. In quis hendrerit velit.', 'Nunc rutrum, libero ac dignissim lobortis, odio lacus laoreet urna, non vulputate ex libero in odio. In quis hendrerit velit. Suspendisse cursus justo augue, ut tempus est facilisis non. Donec ac lectus ut felis bibendum malesuada blandit vitae nisi. Nulla facilisi. Praesent facilisis elementum sem a venenatis. Sed accumsan eros vel felis auctor vestibulum. Pellentesque vitae massa ac diam ullamcorper eleifend mattis at quam. Suspendisse non ante efficitur, congue diam ut, placerat dolor. Sed aliquam dolor nibh, a scelerisque tellus pharetra eu. Morbi convallis, erat viverra malesuada fermentum, felis leo tincidunt lacus, ut mollis sem arcu eu odio. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae;', 1, 1, '2017-02-20 12:44:55', '2017-02-20 12:44:55') ; 
INSERT INTO `webannouncements` VALUES (7, 'Nulla convallis nisl a ante facilisis suscipit. Morbi sit amet imperdiet tortor. Duis posuere gravida nisl, sit amet posuere tortor dictum blandit.', 'Nulla convallis nisl a ante facilisis suscipit. Morbi sit amet imperdiet tortor. Duis posuere gravida nisl, sit amet posuere tortor dictum blandit. Cras ultricies iaculis vulputate. Fusce non turpis porttitor, ornare diam at, cursus ante. Donec at velit magna. Nunc est leo, pretium at dolor a, commodo malesuada neque. Maecenas ultrices in ex ac laoreet. Cras accumsan mi vitae augue consequat, vitae scelerisque est fermentum. Donec vehicula risus ut libero aliquet ultricies. Nulla facilisi.

Integer tortor est, aliquet nec sapien sit amet, commodo consectetur arcu. Curabitur bibendum erat rutrum lorem semper, id blandit diam luctus. Sed suscipit est non risus viverra, in viverra quam hendrerit. Aliquam elit risus, vulputate vel nulla vulputate, consequat venenatis ex. Suspendisse potenti. Cras aliquet metus vitae turpis vestibulum viverra. Donec scelerisque dolor ultricies purus malesuada euismod. Cras eleifend porta elementum. Quisque malesuada leo dolor. Cras consequat leo quis imperdiet suscipit. Vestibulum laoreet risus a nunc ullamcorper viverra. Maecenas hendrerit ante id justo porta, ut ornare mi hendrerit.', 1, 1, '2017-02-20 12:47:17', '2017-02-20 12:45:10') ;
#
# End of data contents of table webannouncements
# --------------------------------------------------------

# MySQL database backup
#
# Generated: Friday 3. March 2017 07:55 PHT
# Hostname: localhost
# Database: `alumni`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `admin`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `auditlog`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `feedbacks`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `graduates`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `users`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webaboutus`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webannouncements`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webbanner`
# --------------------------------------------------------


#
# Delete any existing table `webbanner`
#

DROP TABLE IF EXISTS `webbanner`;


#
# Table structure of table `webbanner`
#

CREATE TABLE `webbanner` (
  `banner_id` int(11) NOT NULL AUTO_INCREMENT,
  `banner_image` varchar(255) NOT NULL,
  `banner_title` varchar(100) NOT NULL,
  `banner_status` tinyint(1) NOT NULL DEFAULT '1',
  `banner_poster_id` int(11) NOT NULL,
  `banner_date_modified` datetime NOT NULL,
  `banner_date_added` datetime NOT NULL,
  PRIMARY KEY (`banner_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1 ;

#
# Data contents of table webbanner (1 records)
#
 
INSERT INTO `webbanner` VALUES (1, 'raffle.jpg', 'CCA Alumni First Fund Raising Event', 1, 1, '2017-02-20 12:47:58', '2017-02-13 20:32:15') ;
#
# End of data contents of table webbanner
# --------------------------------------------------------

# MySQL database backup
#
# Generated: Friday 3. March 2017 07:55 PHT
# Hostname: localhost
# Database: `alumni`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `admin`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `auditlog`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `feedbacks`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `graduates`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `users`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webaboutus`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webannouncements`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webbanner`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webcontactus`
# --------------------------------------------------------


#
# Delete any existing table `webcontactus`
#

DROP TABLE IF EXISTS `webcontactus`;


#
# Table structure of table `webcontactus`
#

CREATE TABLE `webcontactus` (
  `contact_id` int(11) NOT NULL AUTO_INCREMENT,
  `contact_phone` varchar(30) NOT NULL,
  `contact_mobile` varchar(30) NOT NULL,
  `contact_email` varchar(100) NOT NULL,
  `contact_address` varchar(255) NOT NULL,
  `contact_fax` varchar(30) NOT NULL,
  `contact_date_modified` datetime NOT NULL,
  `contact_date_added` datetime NOT NULL,
  PRIMARY KEY (`contact_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ;

#
# Data contents of table webcontactus (0 records)
#

#
# End of data contents of table webcontactus
# --------------------------------------------------------

# MySQL database backup
#
# Generated: Friday 3. March 2017 07:55 PHT
# Hostname: localhost
# Database: `alumni`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `admin`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `auditlog`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `feedbacks`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `graduates`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `users`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webaboutus`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webannouncements`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webbanner`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webcontactus`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webjobs`
# --------------------------------------------------------


#
# Delete any existing table `webjobs`
#

DROP TABLE IF EXISTS `webjobs`;


#
# Table structure of table `webjobs`
#

CREATE TABLE `webjobs` (
  `job_id` int(11) NOT NULL AUTO_INCREMENT,
  `job_title` varchar(500) NOT NULL,
  `job_company` varchar(255) NOT NULL,
  `job_positions` varchar(500) NOT NULL,
  `job_vacancy` varchar(500) NOT NULL,
  `job_description` text NOT NULL,
  `job_poster_id` int(11) NOT NULL,
  `job_status` tinyint(1) NOT NULL DEFAULT '1',
  `job_date_modified` datetime NOT NULL,
  `job_date_added` datetime NOT NULL,
  PRIMARY KEY (`job_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1 ;

#
# Data contents of table webjobs (1 records)
#
 
INSERT INTO `webjobs` VALUES (1, 'Litigation Lawyer', 'Global Estate Resorts, Inc. (a subsidiary of Megaworld Corporation)', 'Litigation Lawyer', '5', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#039;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 1, 1, '2017-02-20 13:23:25', '2017-02-20 13:13:27') ;
#
# End of data contents of table webjobs
# --------------------------------------------------------

# MySQL database backup
#
# Generated: Friday 3. March 2017 07:55 PHT
# Hostname: localhost
# Database: `alumni`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `admin`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `auditlog`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `feedbacks`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `graduates`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `users`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webaboutus`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webannouncements`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webbanner`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webcontactus`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webjobs`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webmenu`
# --------------------------------------------------------


#
# Delete any existing table `webmenu`
#

DROP TABLE IF EXISTS `webmenu`;


#
# Table structure of table `webmenu`
#

CREATE TABLE `webmenu` (
  `menu_id` int(11) NOT NULL AUTO_INCREMENT,
  `menu_title` varchar(50) NOT NULL,
  `menu_link` varchar(255) NOT NULL,
  `menu_status` tinyint(1) NOT NULL DEFAULT '1',
  `menu_position` tinyint(4) NOT NULL,
  `menu_date_modified` datetime NOT NULL,
  `menu_date_added` datetime NOT NULL,
  PRIMARY KEY (`menu_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1 ;

#
# Data contents of table webmenu (5 records)
#
 
INSERT INTO `webmenu` VALUES (1, 'Home', 'index', 1, 1, '2017-02-20 13:35:09', '2017-02-20 13:35:09') ; 
INSERT INTO `webmenu` VALUES (2, 'News', 'news', 1, 2, '2017-02-17 11:02:00', '2017-02-17 11:02:00') ; 
INSERT INTO `webmenu` VALUES (3, 'Announcements', 'announcements', 1, 3, '2017-02-17 11:02:13', '2017-02-17 11:02:13') ; 
INSERT INTO `webmenu` VALUES (4, 'About Us', 'about-us', 1, 4, '2017-02-17 11:02:25', '2017-02-17 11:02:25') ; 
INSERT INTO `webmenu` VALUES (5, 'Contact Us', 'contact-us', 1, 5, '2017-02-17 11:02:36', '2017-02-17 11:02:36') ;
#
# End of data contents of table webmenu
# --------------------------------------------------------

# MySQL database backup
#
# Generated: Friday 3. March 2017 07:55 PHT
# Hostname: localhost
# Database: `alumni`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `admin`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `auditlog`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `feedbacks`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `graduates`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `users`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webaboutus`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webannouncements`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webbanner`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webcontactus`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webjobs`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webmenu`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webnews`
# --------------------------------------------------------


#
# Delete any existing table `webnews`
#

DROP TABLE IF EXISTS `webnews`;


#
# Table structure of table `webnews`
#

CREATE TABLE `webnews` (
  `news_id` int(11) NOT NULL AUTO_INCREMENT,
  `news_title` varchar(255) NOT NULL,
  `news_description` text NOT NULL,
  `news_image` varchar(500) NOT NULL,
  `news_status` tinyint(1) NOT NULL DEFAULT '1',
  `news_poster_id` int(11) NOT NULL,
  `news_date_modified` datetime NOT NULL,
  `news_date_added` datetime NOT NULL,
  PRIMARY KEY (`news_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1 ;

#
# Data contents of table webnews (7 records)
#
 
INSERT INTO `webnews` VALUES (1, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis feugiat quam velit, vitae ornare libero pellentesque ut.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis feugiat quam velit, vitae ornare libero pellentesque ut. Ut tempus augue sit amet ipsum elementum, eget faucibus erat molestie. Praesent in eros rutrum, ornare leo vitae, interdum nibh. Suspendisse consectetur eget justo non lacinia. In fermentum luctus condimentum. Morbi a libero molestie, facilisis mauris pellentesque, fermentum orci. Vivamus eget risus lacinia, scelerisque dui in, lobortis leo. Aliquam et ultricies dui. Nunc pharetra, enim eu efficitur molestie, metus sem mattis risus, tristique fringilla libero nulla et felis. Nam id sodales elit. Nullam elementum volutpat tortor, id feugiat erat placerat eu.

Suspendisse sit amet porta orci. Nam ultricies nisi ante. Nulla vel arcu sodales, varius nisi in, porttitor orci. Sed viverra felis eget lacus faucibus hendrerit. Cras erat turpis, faucibus id porta nec, mattis vel velit. Maecenas non magna sit amet velit pretium consectetur. Proin id nulla dictum, euismod purus eget, malesuada augue. Praesent eu sapien risus. Curabitur id nisi neque.', '1.jpg', 1, 1, '2017-02-20 12:38:37', '2017-02-20 12:38:37') ; 
INSERT INTO `webnews` VALUES (2, 'Suspendisse sit amet porta orci. Nam ultricies nisi ante. Nulla vel arcu sodales, varius nisi in, porttitor orci. Sed viverra felis eget lacus faucibus hendrerit.', 'Suspendisse sit amet porta orci. Nam ultricies nisi ante. Nulla vel arcu sodales, varius nisi in, porttitor orci. Sed viverra felis eget lacus faucibus hendrerit. Cras erat turpis, faucibus id porta nec, mattis vel velit. Maecenas non magna sit amet velit pretium consectetur. Proin id nulla dictum, euismod purus eget, malesuada augue. Praesent eu sapien risus. Curabitur id nisi neque.

Sed convallis commodo quam ut scelerisque. Fusce non pharetra lectus. Maecenas euismod tincidunt orci ac efficitur. Sed lectus odio, imperdiet nec tincidunt a, varius eget metus. Fusce ullamcorper tempor aliquet. Sed tempus efficitur sapien, in tempor metus aliquam non. Ut dapibus risus sit amet nisi scelerisque, sed faucibus tellus feugiat. Proin facilisis erat magna, eu molestie mi venenatis id. Praesent eleifend ante eget massa dignissim, nec vulputate orci suscipit.', '2.jpg', 1, 1, '2017-02-20 12:40:27', '2017-02-20 12:40:27') ; 
INSERT INTO `webnews` VALUES (3, 'Sed convallis commodo quam ut scelerisque. Fusce non pharetra lectus. Maecenas euismod tincidunt orci ac efficitur.', 'Sed convallis commodo quam ut scelerisque. Fusce non pharetra lectus. Maecenas euismod tincidunt orci ac efficitur. Sed lectus odio, imperdiet nec tincidunt a, varius eget metus. Fusce ullamcorper tempor aliquet. Sed tempus efficitur sapien, in tempor metus aliquam non. Ut dapibus risus sit amet nisi scelerisque, sed faucibus tellus feugiat. Proin facilisis erat magna, eu molestie mi venenatis id. Praesent eleifend ante eget massa dignissim, nec vulputate orci suscipit.

Nullam accumsan est vitae ante imperdiet, volutpat porttitor odio condimentum. Suspendisse condimentum eget purus non fermentum. In elit nunc, blandit in augue at, volutpat tincidunt nibh. Donec vestibulum, lorem eget pretium hendrerit, lacus enim bibendum nisl, quis pulvinar quam ex et dolor. Donec sed leo lobortis, eleifend leo ac, dignissim magna. Suspendisse mattis sapien tincidunt, gravida augue id, rhoncus tellus. Sed eu auctor lorem. Etiam id turpis urna. Donec at posuere nunc, id auctor orci. Nam sapien eros, egestas vitae risus nec, commodo consequat urna. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Praesent fringilla neque eros, tristique convallis felis laoreet non. Aliquam in nibh in libero lacinia faucibus a id justo. Interdum et malesuada fames ac ante ipsum primis in faucibus.', '3.jpg', 1, 1, '2017-02-20 12:40:49', '2017-02-20 12:40:49') ; 
INSERT INTO `webnews` VALUES (4, 'Nullam accumsan est vitae ante imperdiet, volutpat porttitor odio condimentum. Suspendisse condimentum eget purus non fermentum. ', 'Nullam accumsan est vitae ante imperdiet, volutpat porttitor odio condimentum. Suspendisse condimentum eget purus non fermentum. In elit nunc, blandit in augue at, volutpat tincidunt nibh. Donec vestibulum, lorem eget pretium hendrerit, lacus enim bibendum nisl, quis pulvinar quam ex et dolor. Donec sed leo lobortis, eleifend leo ac, dignissim magna. Suspendisse mattis sapien tincidunt, gravida augue id, rhoncus tellus. Sed eu auctor lorem. Etiam id turpis urna. Donec at posuere nunc, id auctor orci. Nam sapien eros, egestas vitae risus nec, commodo consequat urna. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Praesent fringilla neque eros, tristique convallis felis laoreet non. Aliquam in nibh in libero lacinia faucibus a id justo. Interdum et malesuada fames ac ante ipsum primis in faucibus.', '4.jpg', 1, 1, '2017-02-20 12:41:06', '2017-02-20 12:41:06') ; 
INSERT INTO `webnews` VALUES (5, 'Aaaliquam id dui pulvinar, mattis sem in, maximus elit. Cras convallis lobortis quam. Etiam tristique, est id blandit imperdiet, sapien nulla vestibulum ligula, ut rhoncus ligula libero a felis.', 'Aliquam id dui pulvinar, mattis sem in, maximus elit. Cras convallis lobortis quam. Etiam tristique, est id blandit imperdiet, sapien nulla vestibulum ligula, ut rhoncus ligula libero a felis. Morbi tincidunt felis sit amet urna pellentesque lacinia. Maecenas urna elit, posuere quis libero porttitor, placerat aliquet justo. In hac habitasse platea dictumst. Suspendisse elementum vel neque sed aliquet. Curabitur nec cursus mi. Proin id pretium magna, ac tempus sapien. Nam ornare vulputate gravida. Aenean ut tristique lacus. Donec suscipit, ex sed consectetur imperdiet, ex eros pellentesque massa, et scelerisque felis eros non elit. Nulla diam mi, iaculis nec ex quis, accumsan euismod augue.

Vestibulum a ornare est. Vivamus fermentum laoreet dui id tristique. Donec pulvinar tempor mi, ac cursus nibh tempor sit amet. Ut sagittis arcu enim, nec luctus quam vestibulum a. Proin non interdum metus. Vivamus ornare lorem nec justo consequat, in sagittis libero sodales. Donec ullamcorper tristique ligula non consectetur. Vivamus cursus nec lacus nec convallis. Pellentesque eu consectetur nibh. Donec volutpat sodales accumsan. Nullam commodo mattis semper. Donec auctor eu nisi in volutpat. Vivamus sit amet lorem mattis, condimentum augue eu, accumsan lorem. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Quisque lacinia efficitur massa at bibendum. Suspendisse iaculis elit ante.', '5.jpg', 1, 1, '2017-02-20 12:42:21', '2017-02-20 12:41:29') ; 
INSERT INTO `webnews` VALUES (6, 'Vestibulum a ornare est. Vivamus fermentum laoreet dui id tristique. Donec pulvinar tempor mi, ac cursus nibh tempor sit amet. Ut sagittis arcu enim, nec luctus quam vestibulum a.', 'Vestibulum a ornare est. Vivamus fermentum laoreet dui id tristique. Donec pulvinar tempor mi, ac cursus nibh tempor sit amet. Ut sagittis arcu enim, nec luctus quam vestibulum a. Proin non interdum metus. Vivamus ornare lorem nec justo consequat, in sagittis libero sodales. Donec ullamcorper tristique ligula non consectetur. Vivamus cursus nec lacus nec convallis. Pellentesque eu consectetur nibh. Donec volutpat sodales accumsan. Nullam commodo mattis semper. Donec auctor eu nisi in volutpat. Vivamus sit amet lorem mattis, condimentum augue eu, accumsan lorem. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Quisque lacinia efficitur massa at bibendum. Suspendisse iaculis elit ante.', '6.jpg', 1, 1, '2017-02-20 12:42:49', '2017-02-20 12:42:49') ; 
INSERT INTO `webnews` VALUES (7, 'Integer eu fermentum erat. Sed sollicitudin sollicitudin est, at molestie augue sagittis quis. Suspendisse pellentesque non lorem vitae vehicula. Donec pellentesque ligula vitae risus pulvinar dictum. ', 'Integer eu fermentum erat. Sed sollicitudin sollicitudin est, at molestie augue sagittis quis. Suspendisse pellentesque non lorem vitae vehicula. Donec pellentesque ligula vitae risus pulvinar dictum. Ut commodo mollis quam, quis tempus neque scelerisque at. Vivamus porta risus justo, sit amet luctus felis eleifend ut. Suspendisse id dui metus. Mauris varius quam ante, eget cursus arcu congue in. Quisque ut urna accumsan, efficitur purus vitae, varius libero. Etiam a velit odio. Duis malesuada purus luctus consequat rhoncus. Nulla dapibus neque et lacus fringilla, eu semper dolor tincidunt. In sagittis tortor et nisi sagittis finibus. Pellentesque iaculis ligula nec erat bibendum tincidunt.

Maecenas at tortor sem. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut cursus, enim ac varius commodo, tellus ligula cursus velit, quis sodales augue lorem id arcu. Etiam sit amet pellentesque ipsum. Pellentesque venenatis lorem et ligula euismod, nec commodo felis tristique. Proin libero quam, bibendum vitae mi sagittis, tempor elementum velit. Nulla convallis tempor nisi, semper molestie eros tempus vitae. Ut viverra ligula tempus lorem eleifend, at sagittis purus malesuada. Pellentesque vehicula tincidunt metus a porta.', '6_2.jpg', 1, 1, '2017-02-20 12:43:08', '2017-02-20 12:43:08') ;
#
# End of data contents of table webnews
# --------------------------------------------------------

# MySQL database backup
#
# Generated: Friday 3. March 2017 07:55 PHT
# Hostname: localhost
# Database: `alumni`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `admin`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `auditlog`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `feedbacks`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `graduates`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `users`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webaboutus`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webannouncements`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webbanner`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webcontactus`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webjobs`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webmenu`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webnews`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webslider`
# --------------------------------------------------------


#
# Delete any existing table `webslider`
#

DROP TABLE IF EXISTS `webslider`;


#
# Table structure of table `webslider`
#

CREATE TABLE `webslider` (
  `slider_id` int(11) NOT NULL AUTO_INCREMENT,
  `slider_image` varchar(255) NOT NULL,
  `slider_caption` text NOT NULL,
  `slider_title` varchar(255) NOT NULL,
  `slider_status` tinyint(1) NOT NULL DEFAULT '1',
  `slider_poster_id` int(11) NOT NULL,
  `slider_date_modified` datetime NOT NULL,
  `slider_date_added` datetime NOT NULL,
  PRIMARY KEY (`slider_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ;

#
# Data contents of table webslider (0 records)
#

#
# End of data contents of table webslider
# --------------------------------------------------------

# MySQL database backup
#
# Generated: Friday 3. March 2017 07:55 PHT
# Hostname: localhost
# Database: `alumni`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `admin`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `auditlog`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `feedbacks`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `graduates`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `users`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webaboutus`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webannouncements`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webbanner`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webcontactus`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webjobs`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webmenu`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webnews`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webslider`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `websubmenu`
# --------------------------------------------------------


#
# Delete any existing table `websubmenu`
#

DROP TABLE IF EXISTS `websubmenu`;


#
# Table structure of table `websubmenu`
#

CREATE TABLE `websubmenu` (
  `submenu_id` int(11) NOT NULL AUTO_INCREMENT,
  `submenu_menu_id` int(11) NOT NULL,
  `submenu_title` varchar(50) NOT NULL,
  `submenu_link` varchar(255) NOT NULL,
  `submenu_status` tinyint(1) NOT NULL DEFAULT '1',
  `submenu_position` tinyint(4) NOT NULL,
  `submenu_date_modified` datetime NOT NULL,
  `submenu_date_added` datetime NOT NULL,
  PRIMARY KEY (`submenu_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1 ;

#
# Data contents of table websubmenu (1 records)
#
 
INSERT INTO `websubmenu` VALUES (1, 1, 'dfddd', 'ddddd', 2, 0, '2017-02-20 13:35:23', '2017-02-20 13:35:15') ;
#
# End of data contents of table websubmenu
# --------------------------------------------------------

# MySQL database backup
#
# Generated: Friday 3. March 2017 07:56 PHT
# Hostname: localhost
# Database: `alumni`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `admin`
# --------------------------------------------------------


#
# Delete any existing table `admin`
#

DROP TABLE IF EXISTS `admin`;


#
# Table structure of table `admin`
#

CREATE TABLE `admin` (
  `admin_id` int(11) NOT NULL AUTO_INCREMENT,
  `admin_fname` varchar(50) NOT NULL,
  `admin_mname` varchar(50) NOT NULL,
  `admin_lname` varchar(50) NOT NULL,
  `admin_email` varchar(100) NOT NULL,
  `admin_username` varchar(50) NOT NULL,
  `admin_salt` varchar(50) NOT NULL,
  `admin_password` varchar(100) NOT NULL,
  `admin_level` tinyint(1) NOT NULL COMMENT '1=sysad; 2=moderator; 3=viewing;',
  `admin_status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '0=not active; 1=active; 2=disabled;',
  `admin_date_modified` datetime NOT NULL,
  `admin_date_added` datetime NOT NULL,
  PRIMARY KEY (`admin_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1 ;

#
# Data contents of table admin (1 records)
#
 
INSERT INTO `admin` VALUES (1, 'juan', 'santos', 'dela cruz', 'juan23@mail.com', 'admin', '³W÷þdaÂí±ÂùF®9ïÐ0Ÿ€‘ƒÈn·0¢Ã#üå¨', '3640daa0c1fc63a0be23f357f05202ab732697f6bd5bfb93ef00d947cc133461', 1, 1, '2017-02-08 00:00:00', '2017-02-08 00:00:00') ;
#
# End of data contents of table admin
# --------------------------------------------------------

# MySQL database backup
#
# Generated: Friday 3. March 2017 07:56 PHT
# Hostname: localhost
# Database: `alumni`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `admin`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `auditlog`
# --------------------------------------------------------


#
# Delete any existing table `auditlog`
#

DROP TABLE IF EXISTS `auditlog`;


#
# Table structure of table `auditlog`
#

CREATE TABLE `auditlog` (
  `audit_id` int(11) NOT NULL AUTO_INCREMENT,
  `audit_table_affected` varchar(100) NOT NULL,
  `audit_action` varchar(255) NOT NULL,
  `audit_admin_id` int(11) NOT NULL,
  `audit_datetime` datetime NOT NULL,
  PRIMARY KEY (`audit_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ;

#
# Data contents of table auditlog (0 records)
#

#
# End of data contents of table auditlog
# --------------------------------------------------------

# MySQL database backup
#
# Generated: Friday 3. March 2017 07:56 PHT
# Hostname: localhost
# Database: `alumni`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `admin`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `auditlog`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `feedbacks`
# --------------------------------------------------------


#
# Delete any existing table `feedbacks`
#

DROP TABLE IF EXISTS `feedbacks`;


#
# Table structure of table `feedbacks`
#

CREATE TABLE `feedbacks` (
  `fb_id` int(11) NOT NULL AUTO_INCREMENT,
  `fb_name` varchar(150) NOT NULL,
  `fb_email` varchar(150) NOT NULL,
  `fb_subject` varchar(500) NOT NULL,
  `fb_message` text NOT NULL,
  `fb_date_added` datetime NOT NULL,
  PRIMARY KEY (`fb_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1 ;

#
# Data contents of table feedbacks (1 records)
#
 
INSERT INTO `feedbacks` VALUES (1, 'sdfsdfs', 'dfssdf@asdasd.asd', 'asdasd', 'asdasdasdasd', '2017-02-20 15:18:19') ;
#
# End of data contents of table feedbacks
# --------------------------------------------------------

# MySQL database backup
#
# Generated: Friday 3. March 2017 07:56 PHT
# Hostname: localhost
# Database: `alumni`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `admin`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `auditlog`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `feedbacks`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `graduates`
# --------------------------------------------------------


#
# Delete any existing table `graduates`
#

DROP TABLE IF EXISTS `graduates`;


#
# Table structure of table `graduates`
#

CREATE TABLE `graduates` (
  `grad_id` int(11) NOT NULL AUTO_INCREMENT,
  `grad_fname` varchar(50) NOT NULL,
  `grad_mname` varchar(50) NOT NULL,
  `grad_lname` varchar(50) NOT NULL,
  `grad_gender` tinyint(1) NOT NULL COMMENT '1=male; 2=female',
  `grad_birthday` date NOT NULL,
  `grad_student_id` varchar(11) NOT NULL,
  `grad_course` varchar(100) NOT NULL,
  `grad_dept` varchar(100) NOT NULL,
  `grad_year_graduated` year(4) NOT NULL,
  `grad_so_number` varchar(50) NOT NULL,
  PRIMARY KEY (`grad_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ;

#
# Data contents of table graduates (0 records)
#

#
# End of data contents of table graduates
# --------------------------------------------------------

# MySQL database backup
#
# Generated: Friday 3. March 2017 07:56 PHT
# Hostname: localhost
# Database: `alumni`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `admin`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `auditlog`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `feedbacks`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `graduates`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `users`
# --------------------------------------------------------


#
# Delete any existing table `users`
#

DROP TABLE IF EXISTS `users`;


#
# Table structure of table `users`
#

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_grad_id` int(11) NOT NULL,
  `user_email` varchar(100) NOT NULL,
  `user_contact` varchar(50) NOT NULL,
  `user_address` varchar(255) NOT NULL,
  `user_username` varchar(50) NOT NULL,
  `user_salt` varchar(100) NOT NULL,
  `user_password` varchar(100) NOT NULL,
  `user_status` tinyint(1) NOT NULL DEFAULT '1',
  `user_employed` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0=not employed; 1=employed;',
  `user_company` varchar(155) NOT NULL,
  `user_position` varchar(100) NOT NULL,
  `user_job_level` varchar(100) NOT NULL,
  `user_date_modified` datetime NOT NULL,
  `user_date_added` datetime NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ;

#
# Data contents of table users (0 records)
#

#
# End of data contents of table users
# --------------------------------------------------------

# MySQL database backup
#
# Generated: Friday 3. March 2017 07:56 PHT
# Hostname: localhost
# Database: `alumni`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `admin`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `auditlog`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `feedbacks`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `graduates`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `users`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webaboutus`
# --------------------------------------------------------


#
# Delete any existing table `webaboutus`
#

DROP TABLE IF EXISTS `webaboutus`;


#
# Table structure of table `webaboutus`
#

CREATE TABLE `webaboutus` (
  `about_id` int(11) NOT NULL AUTO_INCREMENT,
  `about_mission` text NOT NULL,
  `about_vision` text NOT NULL,
  `about_history` text NOT NULL,
  `about_date_modified` datetime NOT NULL,
  `about_date_added` datetime NOT NULL,
  PRIMARY KEY (`about_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ;

#
# Data contents of table webaboutus (0 records)
#

#
# End of data contents of table webaboutus
# --------------------------------------------------------

# MySQL database backup
#
# Generated: Friday 3. March 2017 07:56 PHT
# Hostname: localhost
# Database: `alumni`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `admin`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `auditlog`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `feedbacks`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `graduates`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `users`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webaboutus`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webannouncements`
# --------------------------------------------------------


#
# Delete any existing table `webannouncements`
#

DROP TABLE IF EXISTS `webannouncements`;


#
# Table structure of table `webannouncements`
#

CREATE TABLE `webannouncements` (
  `announ_id` int(11) NOT NULL AUTO_INCREMENT,
  `announ_title` varchar(255) NOT NULL,
  `announ_description` text NOT NULL,
  `announ_status` tinyint(1) NOT NULL DEFAULT '1',
  `announ_poster_id` int(11) NOT NULL,
  `announ_date_modified` datetime NOT NULL,
  `announ_date_added` datetime NOT NULL,
  PRIMARY KEY (`announ_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1 ;

#
# Data contents of table webannouncements (7 records)
#
 
INSERT INTO `webannouncements` VALUES (1, 'Maecenas at tortor sem. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut cursus, enim ac varius commodo, tellus ligula cursus velit, quis sodales augue lorem id arcu. Etiam sit amet pellentesque ipsum.', 'Maecenas at tortor sem. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut cursus, enim ac varius commodo, tellus ligula cursus velit, quis sodales augue lorem id arcu. Etiam sit amet pellentesque ipsum. Pellentesque venenatis lorem et ligula euismod, nec commodo felis tristique. Proin libero quam, bibendum vitae mi sagittis, tempor elementum velit. Nulla convallis tempor nisi, semper molestie eros tempus vitae. Ut viverra ligula tempus lorem eleifend, at sagittis purus malesuada. Pellentesque vehicula tincidunt metus a porta.', 1, 1, '2017-02-20 12:43:49', '2017-02-20 12:43:49') ; 
INSERT INTO `webannouncements` VALUES (2, 'Pellentesque eu ultricies leo. Nulla ullamcorper sem mauris, sit amet congue nisi sollicitudin non. Sed venenatis euismod pretium. ', 'Pellentesque eu ultricies leo. Nulla ullamcorper sem mauris, sit amet congue nisi sollicitudin non. Sed venenatis euismod pretium. Vivamus sit amet erat vehicula, semper arcu ut, mattis purus. Nunc at semper sem, sit amet facilisis risus. Fusce interdum egestas finibus. Proin ac tempus nulla. Nullam id ipsum enim. Vivamus sollicitudin blandit pharetra. Donec dictum ligula nisi, non ornare diam venenatis a. In pharetra turpis id elit fermentum sodales. Integer euismod nisl sed facilisis laoreet. Aenean lobortis ullamcorper dapibus. Pellentesque volutpat laoreet hendrerit.

Suspendisse potenti. Donec sed laoreet ipsum. Donec non diam placerat, porta lectus eget, pulvinar quam. Nullam at nulla at dolor consequat dictum. Proin a scelerisque nisi. Ut rhoncus facilisis nibh feugiat tempor. Aliquam erat volutpat.', 1, 1, '2017-02-20 12:44:01', '2017-02-20 12:44:01') ; 
INSERT INTO `webannouncements` VALUES (3, 'Suspendisse potenti. Donec sed laoreet ipsum. Donec non diam placerat, porta lectus eget, pulvinar quam. Nullam at nulla at dolor consequat dictum.', 'Suspendisse potenti. Donec sed laoreet ipsum. Donec non diam placerat, porta lectus eget, pulvinar quam. Nullam at nulla at dolor consequat dictum. Proin a scelerisque nisi. Ut rhoncus facilisis nibh feugiat tempor. Aliquam erat volutpat.

Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Sed in nulla purus. Aliquam lacinia, eros vel volutpat mattis, purus massa sagittis erat, vitae ultrices nisi odio a libero. Praesent bibendum convallis porttitor. Curabitur augue elit, pretium at risus vitae, interdum porta lacus. Integer quis condimentum lectus, nec tempus sem. Maecenas eleifend dui tempor condimentum mollis. Vivamus ut lorem id ipsum sodales efficitur. Donec magna dolor, vulputate non ante vel, tincidunt rutrum nulla. Vivamus pulvinar felis eros, quis pellentesque quam suscipit non. Vestibulum neque orci, convallis sed enim sit amet, rutrum bibendum risus. Curabitur eu ultrices elit. Pellentesque lectus tellus, volutpat sit amet pharetra quis, gravida vitae lacus. Sed euismod enim ut mauris elementum, nec congue neque facilisis. Phasellus eu molestie nulla, dictum sodales nisl.', 1, 1, '2017-02-20 12:44:14', '2017-02-20 12:44:14') ; 
INSERT INTO `webannouncements` VALUES (4, 'Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos.', 'Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Sed in nulla purus. Aliquam lacinia, eros vel volutpat mattis, purus massa sagittis erat, vitae ultrices nisi odio a libero. Praesent bibendum convallis porttitor. Curabitur augue elit, pretium at risus vitae, interdum porta lacus. Integer quis condimentum lectus, nec tempus sem. Maecenas eleifend dui tempor condimentum mollis. Vivamus ut lorem id ipsum sodales efficitur. Donec magna dolor, vulputate non ante vel, tincidunt rutrum nulla. Vivamus pulvinar felis eros, quis pellentesque quam suscipit non. Vestibulum neque orci, convallis sed enim sit amet, rutrum bibendum risus. Curabitur eu ultrices elit. Pellentesque lectus tellus, volutpat sit amet pharetra quis, gravida vitae lacus. Sed euismod enim ut mauris elementum, nec congue neque facilisis. Phasellus eu molestie nulla, dictum sodales nisl.', 1, 1, '2017-02-20 12:44:29', '2017-02-20 12:44:29') ; 
INSERT INTO `webannouncements` VALUES (5, 'Nam neque mauris, consectetur in varius id, elementum vel dolor. Sed vitae massa quis magna fermentum convallis sed venenatis diam. ', 'Nam neque mauris, consectetur in varius id, elementum vel dolor. Sed vitae massa quis magna fermentum convallis sed venenatis diam. Curabitur facilisis, lorem a ornare convallis, neque ligula facilisis nulla, a ultricies odio diam a mi. Phasellus lobortis gravida ligula in vulputate. Duis pellentesque pulvinar viverra. Etiam id suscipit velit, vitae placerat tortor. Ut faucibus ante ipsum, quis ultrices nisi hendrerit vel. Sed euismod velit a neque scelerisque aliquet. Vestibulum dictum eget ante id aliquam.

Nunc rutrum, libero ac dignissim lobortis, odio lacus laoreet urna, non vulputate ex libero in odio. In quis hendrerit velit. Suspendisse cursus justo augue, ut tempus est facilisis non. Donec ac lectus ut felis bibendum malesuada blandit vitae nisi. Nulla facilisi. Praesent facilisis elementum sem a venenatis. Sed accumsan eros vel felis auctor vestibulum. Pellentesque vitae massa ac diam ullamcorper eleifend mattis at quam. Suspendisse non ante efficitur, congue diam ut, placerat dolor. Sed aliquam dolor nibh, a scelerisque tellus pharetra eu. Morbi convallis, erat viverra malesuada fermentum, felis leo tincidunt lacus, ut mollis sem arcu eu odio. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae;', 1, 1, '2017-02-20 12:44:43', '2017-02-20 12:44:43') ; 
INSERT INTO `webannouncements` VALUES (6, 'Nunc rutrum, libero ac dignissim lobortis, odio lacus laoreet urna, non vulputate ex libero in odio. In quis hendrerit velit.', 'Nunc rutrum, libero ac dignissim lobortis, odio lacus laoreet urna, non vulputate ex libero in odio. In quis hendrerit velit. Suspendisse cursus justo augue, ut tempus est facilisis non. Donec ac lectus ut felis bibendum malesuada blandit vitae nisi. Nulla facilisi. Praesent facilisis elementum sem a venenatis. Sed accumsan eros vel felis auctor vestibulum. Pellentesque vitae massa ac diam ullamcorper eleifend mattis at quam. Suspendisse non ante efficitur, congue diam ut, placerat dolor. Sed aliquam dolor nibh, a scelerisque tellus pharetra eu. Morbi convallis, erat viverra malesuada fermentum, felis leo tincidunt lacus, ut mollis sem arcu eu odio. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae;', 1, 1, '2017-02-20 12:44:55', '2017-02-20 12:44:55') ; 
INSERT INTO `webannouncements` VALUES (7, 'Nulla convallis nisl a ante facilisis suscipit. Morbi sit amet imperdiet tortor. Duis posuere gravida nisl, sit amet posuere tortor dictum blandit.', 'Nulla convallis nisl a ante facilisis suscipit. Morbi sit amet imperdiet tortor. Duis posuere gravida nisl, sit amet posuere tortor dictum blandit. Cras ultricies iaculis vulputate. Fusce non turpis porttitor, ornare diam at, cursus ante. Donec at velit magna. Nunc est leo, pretium at dolor a, commodo malesuada neque. Maecenas ultrices in ex ac laoreet. Cras accumsan mi vitae augue consequat, vitae scelerisque est fermentum. Donec vehicula risus ut libero aliquet ultricies. Nulla facilisi.

Integer tortor est, aliquet nec sapien sit amet, commodo consectetur arcu. Curabitur bibendum erat rutrum lorem semper, id blandit diam luctus. Sed suscipit est non risus viverra, in viverra quam hendrerit. Aliquam elit risus, vulputate vel nulla vulputate, consequat venenatis ex. Suspendisse potenti. Cras aliquet metus vitae turpis vestibulum viverra. Donec scelerisque dolor ultricies purus malesuada euismod. Cras eleifend porta elementum. Quisque malesuada leo dolor. Cras consequat leo quis imperdiet suscipit. Vestibulum laoreet risus a nunc ullamcorper viverra. Maecenas hendrerit ante id justo porta, ut ornare mi hendrerit.', 1, 1, '2017-02-20 12:47:17', '2017-02-20 12:45:10') ;
#
# End of data contents of table webannouncements
# --------------------------------------------------------

# MySQL database backup
#
# Generated: Friday 3. March 2017 07:56 PHT
# Hostname: localhost
# Database: `alumni`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `admin`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `auditlog`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `feedbacks`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `graduates`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `users`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webaboutus`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webannouncements`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webbanner`
# --------------------------------------------------------


#
# Delete any existing table `webbanner`
#

DROP TABLE IF EXISTS `webbanner`;


#
# Table structure of table `webbanner`
#

CREATE TABLE `webbanner` (
  `banner_id` int(11) NOT NULL AUTO_INCREMENT,
  `banner_image` varchar(255) NOT NULL,
  `banner_title` varchar(100) NOT NULL,
  `banner_status` tinyint(1) NOT NULL DEFAULT '1',
  `banner_poster_id` int(11) NOT NULL,
  `banner_date_modified` datetime NOT NULL,
  `banner_date_added` datetime NOT NULL,
  PRIMARY KEY (`banner_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1 ;

#
# Data contents of table webbanner (1 records)
#
 
INSERT INTO `webbanner` VALUES (1, 'raffle.jpg', 'CCA Alumni First Fund Raising Event', 1, 1, '2017-02-20 12:47:58', '2017-02-13 20:32:15') ;
#
# End of data contents of table webbanner
# --------------------------------------------------------

# MySQL database backup
#
# Generated: Friday 3. March 2017 07:56 PHT
# Hostname: localhost
# Database: `alumni`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `admin`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `auditlog`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `feedbacks`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `graduates`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `users`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webaboutus`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webannouncements`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webbanner`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webcontactus`
# --------------------------------------------------------


#
# Delete any existing table `webcontactus`
#

DROP TABLE IF EXISTS `webcontactus`;


#
# Table structure of table `webcontactus`
#

CREATE TABLE `webcontactus` (
  `contact_id` int(11) NOT NULL AUTO_INCREMENT,
  `contact_phone` varchar(30) NOT NULL,
  `contact_mobile` varchar(30) NOT NULL,
  `contact_email` varchar(100) NOT NULL,
  `contact_address` varchar(255) NOT NULL,
  `contact_fax` varchar(30) NOT NULL,
  `contact_date_modified` datetime NOT NULL,
  `contact_date_added` datetime NOT NULL,
  PRIMARY KEY (`contact_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ;

#
# Data contents of table webcontactus (0 records)
#

#
# End of data contents of table webcontactus
# --------------------------------------------------------

# MySQL database backup
#
# Generated: Friday 3. March 2017 07:56 PHT
# Hostname: localhost
# Database: `alumni`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `admin`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `auditlog`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `feedbacks`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `graduates`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `users`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webaboutus`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webannouncements`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webbanner`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webcontactus`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webjobs`
# --------------------------------------------------------


#
# Delete any existing table `webjobs`
#

DROP TABLE IF EXISTS `webjobs`;


#
# Table structure of table `webjobs`
#

CREATE TABLE `webjobs` (
  `job_id` int(11) NOT NULL AUTO_INCREMENT,
  `job_title` varchar(500) NOT NULL,
  `job_company` varchar(255) NOT NULL,
  `job_positions` varchar(500) NOT NULL,
  `job_vacancy` varchar(500) NOT NULL,
  `job_description` text NOT NULL,
  `job_poster_id` int(11) NOT NULL,
  `job_status` tinyint(1) NOT NULL DEFAULT '1',
  `job_date_modified` datetime NOT NULL,
  `job_date_added` datetime NOT NULL,
  PRIMARY KEY (`job_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1 ;

#
# Data contents of table webjobs (1 records)
#
 
INSERT INTO `webjobs` VALUES (1, 'Litigation Lawyer', 'Global Estate Resorts, Inc. (a subsidiary of Megaworld Corporation)', 'Litigation Lawyer', '5', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#039;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 1, 1, '2017-02-20 13:23:25', '2017-02-20 13:13:27') ;
#
# End of data contents of table webjobs
# --------------------------------------------------------

# MySQL database backup
#
# Generated: Friday 3. March 2017 07:56 PHT
# Hostname: localhost
# Database: `alumni`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `admin`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `auditlog`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `feedbacks`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `graduates`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `users`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webaboutus`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webannouncements`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webbanner`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webcontactus`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webjobs`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webmenu`
# --------------------------------------------------------


#
# Delete any existing table `webmenu`
#

DROP TABLE IF EXISTS `webmenu`;


#
# Table structure of table `webmenu`
#

CREATE TABLE `webmenu` (
  `menu_id` int(11) NOT NULL AUTO_INCREMENT,
  `menu_title` varchar(50) NOT NULL,
  `menu_link` varchar(255) NOT NULL,
  `menu_status` tinyint(1) NOT NULL DEFAULT '1',
  `menu_position` tinyint(4) NOT NULL,
  `menu_date_modified` datetime NOT NULL,
  `menu_date_added` datetime NOT NULL,
  PRIMARY KEY (`menu_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1 ;

#
# Data contents of table webmenu (5 records)
#
 
INSERT INTO `webmenu` VALUES (1, 'Home', 'index', 1, 1, '2017-02-20 13:35:09', '2017-02-20 13:35:09') ; 
INSERT INTO `webmenu` VALUES (2, 'News', 'news', 1, 2, '2017-02-17 11:02:00', '2017-02-17 11:02:00') ; 
INSERT INTO `webmenu` VALUES (3, 'Announcements', 'announcements', 1, 3, '2017-02-17 11:02:13', '2017-02-17 11:02:13') ; 
INSERT INTO `webmenu` VALUES (4, 'About Us', 'about-us', 1, 4, '2017-02-17 11:02:25', '2017-02-17 11:02:25') ; 
INSERT INTO `webmenu` VALUES (5, 'Contact Us', 'contact-us', 1, 5, '2017-02-17 11:02:36', '2017-02-17 11:02:36') ;
#
# End of data contents of table webmenu
# --------------------------------------------------------

# MySQL database backup
#
# Generated: Friday 3. March 2017 07:56 PHT
# Hostname: localhost
# Database: `alumni`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `admin`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `auditlog`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `feedbacks`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `graduates`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `users`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webaboutus`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webannouncements`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webbanner`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webcontactus`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webjobs`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webmenu`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webnews`
# --------------------------------------------------------


#
# Delete any existing table `webnews`
#

DROP TABLE IF EXISTS `webnews`;


#
# Table structure of table `webnews`
#

CREATE TABLE `webnews` (
  `news_id` int(11) NOT NULL AUTO_INCREMENT,
  `news_title` varchar(255) NOT NULL,
  `news_description` text NOT NULL,
  `news_image` varchar(500) NOT NULL,
  `news_status` tinyint(1) NOT NULL DEFAULT '1',
  `news_poster_id` int(11) NOT NULL,
  `news_date_modified` datetime NOT NULL,
  `news_date_added` datetime NOT NULL,
  PRIMARY KEY (`news_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1 ;

#
# Data contents of table webnews (7 records)
#
 
INSERT INTO `webnews` VALUES (1, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis feugiat quam velit, vitae ornare libero pellentesque ut.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis feugiat quam velit, vitae ornare libero pellentesque ut. Ut tempus augue sit amet ipsum elementum, eget faucibus erat molestie. Praesent in eros rutrum, ornare leo vitae, interdum nibh. Suspendisse consectetur eget justo non lacinia. In fermentum luctus condimentum. Morbi a libero molestie, facilisis mauris pellentesque, fermentum orci. Vivamus eget risus lacinia, scelerisque dui in, lobortis leo. Aliquam et ultricies dui. Nunc pharetra, enim eu efficitur molestie, metus sem mattis risus, tristique fringilla libero nulla et felis. Nam id sodales elit. Nullam elementum volutpat tortor, id feugiat erat placerat eu.

Suspendisse sit amet porta orci. Nam ultricies nisi ante. Nulla vel arcu sodales, varius nisi in, porttitor orci. Sed viverra felis eget lacus faucibus hendrerit. Cras erat turpis, faucibus id porta nec, mattis vel velit. Maecenas non magna sit amet velit pretium consectetur. Proin id nulla dictum, euismod purus eget, malesuada augue. Praesent eu sapien risus. Curabitur id nisi neque.', '1.jpg', 1, 1, '2017-02-20 12:38:37', '2017-02-20 12:38:37') ; 
INSERT INTO `webnews` VALUES (2, 'Suspendisse sit amet porta orci. Nam ultricies nisi ante. Nulla vel arcu sodales, varius nisi in, porttitor orci. Sed viverra felis eget lacus faucibus hendrerit.', 'Suspendisse sit amet porta orci. Nam ultricies nisi ante. Nulla vel arcu sodales, varius nisi in, porttitor orci. Sed viverra felis eget lacus faucibus hendrerit. Cras erat turpis, faucibus id porta nec, mattis vel velit. Maecenas non magna sit amet velit pretium consectetur. Proin id nulla dictum, euismod purus eget, malesuada augue. Praesent eu sapien risus. Curabitur id nisi neque.

Sed convallis commodo quam ut scelerisque. Fusce non pharetra lectus. Maecenas euismod tincidunt orci ac efficitur. Sed lectus odio, imperdiet nec tincidunt a, varius eget metus. Fusce ullamcorper tempor aliquet. Sed tempus efficitur sapien, in tempor metus aliquam non. Ut dapibus risus sit amet nisi scelerisque, sed faucibus tellus feugiat. Proin facilisis erat magna, eu molestie mi venenatis id. Praesent eleifend ante eget massa dignissim, nec vulputate orci suscipit.', '2.jpg', 1, 1, '2017-02-20 12:40:27', '2017-02-20 12:40:27') ; 
INSERT INTO `webnews` VALUES (3, 'Sed convallis commodo quam ut scelerisque. Fusce non pharetra lectus. Maecenas euismod tincidunt orci ac efficitur.', 'Sed convallis commodo quam ut scelerisque. Fusce non pharetra lectus. Maecenas euismod tincidunt orci ac efficitur. Sed lectus odio, imperdiet nec tincidunt a, varius eget metus. Fusce ullamcorper tempor aliquet. Sed tempus efficitur sapien, in tempor metus aliquam non. Ut dapibus risus sit amet nisi scelerisque, sed faucibus tellus feugiat. Proin facilisis erat magna, eu molestie mi venenatis id. Praesent eleifend ante eget massa dignissim, nec vulputate orci suscipit.

Nullam accumsan est vitae ante imperdiet, volutpat porttitor odio condimentum. Suspendisse condimentum eget purus non fermentum. In elit nunc, blandit in augue at, volutpat tincidunt nibh. Donec vestibulum, lorem eget pretium hendrerit, lacus enim bibendum nisl, quis pulvinar quam ex et dolor. Donec sed leo lobortis, eleifend leo ac, dignissim magna. Suspendisse mattis sapien tincidunt, gravida augue id, rhoncus tellus. Sed eu auctor lorem. Etiam id turpis urna. Donec at posuere nunc, id auctor orci. Nam sapien eros, egestas vitae risus nec, commodo consequat urna. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Praesent fringilla neque eros, tristique convallis felis laoreet non. Aliquam in nibh in libero lacinia faucibus a id justo. Interdum et malesuada fames ac ante ipsum primis in faucibus.', '3.jpg', 1, 1, '2017-02-20 12:40:49', '2017-02-20 12:40:49') ; 
INSERT INTO `webnews` VALUES (4, 'Nullam accumsan est vitae ante imperdiet, volutpat porttitor odio condimentum. Suspendisse condimentum eget purus non fermentum. ', 'Nullam accumsan est vitae ante imperdiet, volutpat porttitor odio condimentum. Suspendisse condimentum eget purus non fermentum. In elit nunc, blandit in augue at, volutpat tincidunt nibh. Donec vestibulum, lorem eget pretium hendrerit, lacus enim bibendum nisl, quis pulvinar quam ex et dolor. Donec sed leo lobortis, eleifend leo ac, dignissim magna. Suspendisse mattis sapien tincidunt, gravida augue id, rhoncus tellus. Sed eu auctor lorem. Etiam id turpis urna. Donec at posuere nunc, id auctor orci. Nam sapien eros, egestas vitae risus nec, commodo consequat urna. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Praesent fringilla neque eros, tristique convallis felis laoreet non. Aliquam in nibh in libero lacinia faucibus a id justo. Interdum et malesuada fames ac ante ipsum primis in faucibus.', '4.jpg', 1, 1, '2017-02-20 12:41:06', '2017-02-20 12:41:06') ; 
INSERT INTO `webnews` VALUES (5, 'Aaaliquam id dui pulvinar, mattis sem in, maximus elit. Cras convallis lobortis quam. Etiam tristique, est id blandit imperdiet, sapien nulla vestibulum ligula, ut rhoncus ligula libero a felis.', 'Aliquam id dui pulvinar, mattis sem in, maximus elit. Cras convallis lobortis quam. Etiam tristique, est id blandit imperdiet, sapien nulla vestibulum ligula, ut rhoncus ligula libero a felis. Morbi tincidunt felis sit amet urna pellentesque lacinia. Maecenas urna elit, posuere quis libero porttitor, placerat aliquet justo. In hac habitasse platea dictumst. Suspendisse elementum vel neque sed aliquet. Curabitur nec cursus mi. Proin id pretium magna, ac tempus sapien. Nam ornare vulputate gravida. Aenean ut tristique lacus. Donec suscipit, ex sed consectetur imperdiet, ex eros pellentesque massa, et scelerisque felis eros non elit. Nulla diam mi, iaculis nec ex quis, accumsan euismod augue.

Vestibulum a ornare est. Vivamus fermentum laoreet dui id tristique. Donec pulvinar tempor mi, ac cursus nibh tempor sit amet. Ut sagittis arcu enim, nec luctus quam vestibulum a. Proin non interdum metus. Vivamus ornare lorem nec justo consequat, in sagittis libero sodales. Donec ullamcorper tristique ligula non consectetur. Vivamus cursus nec lacus nec convallis. Pellentesque eu consectetur nibh. Donec volutpat sodales accumsan. Nullam commodo mattis semper. Donec auctor eu nisi in volutpat. Vivamus sit amet lorem mattis, condimentum augue eu, accumsan lorem. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Quisque lacinia efficitur massa at bibendum. Suspendisse iaculis elit ante.', '5.jpg', 1, 1, '2017-02-20 12:42:21', '2017-02-20 12:41:29') ; 
INSERT INTO `webnews` VALUES (6, 'Vestibulum a ornare est. Vivamus fermentum laoreet dui id tristique. Donec pulvinar tempor mi, ac cursus nibh tempor sit amet. Ut sagittis arcu enim, nec luctus quam vestibulum a.', 'Vestibulum a ornare est. Vivamus fermentum laoreet dui id tristique. Donec pulvinar tempor mi, ac cursus nibh tempor sit amet. Ut sagittis arcu enim, nec luctus quam vestibulum a. Proin non interdum metus. Vivamus ornare lorem nec justo consequat, in sagittis libero sodales. Donec ullamcorper tristique ligula non consectetur. Vivamus cursus nec lacus nec convallis. Pellentesque eu consectetur nibh. Donec volutpat sodales accumsan. Nullam commodo mattis semper. Donec auctor eu nisi in volutpat. Vivamus sit amet lorem mattis, condimentum augue eu, accumsan lorem. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Quisque lacinia efficitur massa at bibendum. Suspendisse iaculis elit ante.', '6.jpg', 1, 1, '2017-02-20 12:42:49', '2017-02-20 12:42:49') ; 
INSERT INTO `webnews` VALUES (7, 'Integer eu fermentum erat. Sed sollicitudin sollicitudin est, at molestie augue sagittis quis. Suspendisse pellentesque non lorem vitae vehicula. Donec pellentesque ligula vitae risus pulvinar dictum. ', 'Integer eu fermentum erat. Sed sollicitudin sollicitudin est, at molestie augue sagittis quis. Suspendisse pellentesque non lorem vitae vehicula. Donec pellentesque ligula vitae risus pulvinar dictum. Ut commodo mollis quam, quis tempus neque scelerisque at. Vivamus porta risus justo, sit amet luctus felis eleifend ut. Suspendisse id dui metus. Mauris varius quam ante, eget cursus arcu congue in. Quisque ut urna accumsan, efficitur purus vitae, varius libero. Etiam a velit odio. Duis malesuada purus luctus consequat rhoncus. Nulla dapibus neque et lacus fringilla, eu semper dolor tincidunt. In sagittis tortor et nisi sagittis finibus. Pellentesque iaculis ligula nec erat bibendum tincidunt.

Maecenas at tortor sem. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut cursus, enim ac varius commodo, tellus ligula cursus velit, quis sodales augue lorem id arcu. Etiam sit amet pellentesque ipsum. Pellentesque venenatis lorem et ligula euismod, nec commodo felis tristique. Proin libero quam, bibendum vitae mi sagittis, tempor elementum velit. Nulla convallis tempor nisi, semper molestie eros tempus vitae. Ut viverra ligula tempus lorem eleifend, at sagittis purus malesuada. Pellentesque vehicula tincidunt metus a porta.', '6_2.jpg', 1, 1, '2017-02-20 12:43:08', '2017-02-20 12:43:08') ;
#
# End of data contents of table webnews
# --------------------------------------------------------

# MySQL database backup
#
# Generated: Friday 3. March 2017 07:56 PHT
# Hostname: localhost
# Database: `alumni`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `admin`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `auditlog`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `feedbacks`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `graduates`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `users`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webaboutus`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webannouncements`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webbanner`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webcontactus`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webjobs`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webmenu`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webnews`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webslider`
# --------------------------------------------------------


#
# Delete any existing table `webslider`
#

DROP TABLE IF EXISTS `webslider`;


#
# Table structure of table `webslider`
#

CREATE TABLE `webslider` (
  `slider_id` int(11) NOT NULL AUTO_INCREMENT,
  `slider_image` varchar(255) NOT NULL,
  `slider_caption` text NOT NULL,
  `slider_title` varchar(255) NOT NULL,
  `slider_status` tinyint(1) NOT NULL DEFAULT '1',
  `slider_poster_id` int(11) NOT NULL,
  `slider_date_modified` datetime NOT NULL,
  `slider_date_added` datetime NOT NULL,
  PRIMARY KEY (`slider_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ;

#
# Data contents of table webslider (0 records)
#

#
# End of data contents of table webslider
# --------------------------------------------------------

# MySQL database backup
#
# Generated: Friday 3. March 2017 07:56 PHT
# Hostname: localhost
# Database: `alumni`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `admin`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `auditlog`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `feedbacks`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `graduates`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `users`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webaboutus`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webannouncements`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webbanner`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webcontactus`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webjobs`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webmenu`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webnews`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webslider`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `websubmenu`
# --------------------------------------------------------


#
# Delete any existing table `websubmenu`
#

DROP TABLE IF EXISTS `websubmenu`;


#
# Table structure of table `websubmenu`
#

CREATE TABLE `websubmenu` (
  `submenu_id` int(11) NOT NULL AUTO_INCREMENT,
  `submenu_menu_id` int(11) NOT NULL,
  `submenu_title` varchar(50) NOT NULL,
  `submenu_link` varchar(255) NOT NULL,
  `submenu_status` tinyint(1) NOT NULL DEFAULT '1',
  `submenu_position` tinyint(4) NOT NULL,
  `submenu_date_modified` datetime NOT NULL,
  `submenu_date_added` datetime NOT NULL,
  PRIMARY KEY (`submenu_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1 ;

#
# Data contents of table websubmenu (1 records)
#
 
INSERT INTO `websubmenu` VALUES (1, 1, 'dfddd', 'ddddd', 2, 0, '2017-02-20 13:35:23', '2017-02-20 13:35:15') ;
#
# End of data contents of table websubmenu
# --------------------------------------------------------

# MySQL database backup
#
# Generated: Friday 3. March 2017 07:58 PHT
# Hostname: localhost
# Database: `alumni`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `admin`
# --------------------------------------------------------


#
# Delete any existing table `admin`
#

DROP TABLE IF EXISTS `admin`;


#
# Table structure of table `admin`
#

CREATE TABLE `admin` (
  `admin_id` int(11) NOT NULL AUTO_INCREMENT,
  `admin_fname` varchar(50) NOT NULL,
  `admin_mname` varchar(50) NOT NULL,
  `admin_lname` varchar(50) NOT NULL,
  `admin_email` varchar(100) NOT NULL,
  `admin_username` varchar(50) NOT NULL,
  `admin_salt` varchar(50) NOT NULL,
  `admin_password` varchar(100) NOT NULL,
  `admin_level` tinyint(1) NOT NULL COMMENT '1=sysad; 2=moderator; 3=viewing;',
  `admin_status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '0=not active; 1=active; 2=disabled;',
  `admin_date_modified` datetime NOT NULL,
  `admin_date_added` datetime NOT NULL,
  PRIMARY KEY (`admin_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1 ;

#
# Data contents of table admin (1 records)
#
 
INSERT INTO `admin` VALUES (1, 'juan', 'santos', 'dela cruz', 'juan23@mail.com', 'admin', '³W÷þdaÂí±ÂùF®9ïÐ0Ÿ€‘ƒÈn·0¢Ã#üå¨', '3640daa0c1fc63a0be23f357f05202ab732697f6bd5bfb93ef00d947cc133461', 1, 1, '2017-02-08 00:00:00', '2017-02-08 00:00:00') ;
#
# End of data contents of table admin
# --------------------------------------------------------

# MySQL database backup
#
# Generated: Friday 3. March 2017 07:58 PHT
# Hostname: localhost
# Database: `alumni`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `admin`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `auditlog`
# --------------------------------------------------------


#
# Delete any existing table `auditlog`
#

DROP TABLE IF EXISTS `auditlog`;


#
# Table structure of table `auditlog`
#

CREATE TABLE `auditlog` (
  `audit_id` int(11) NOT NULL AUTO_INCREMENT,
  `audit_table_affected` varchar(100) NOT NULL,
  `audit_action` varchar(255) NOT NULL,
  `audit_admin_id` int(11) NOT NULL,
  `audit_datetime` datetime NOT NULL,
  PRIMARY KEY (`audit_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ;

#
# Data contents of table auditlog (0 records)
#

#
# End of data contents of table auditlog
# --------------------------------------------------------

# MySQL database backup
#
# Generated: Friday 3. March 2017 07:58 PHT
# Hostname: localhost
# Database: `alumni`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `admin`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `auditlog`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `feedbacks`
# --------------------------------------------------------


#
# Delete any existing table `feedbacks`
#

DROP TABLE IF EXISTS `feedbacks`;


#
# Table structure of table `feedbacks`
#

CREATE TABLE `feedbacks` (
  `fb_id` int(11) NOT NULL AUTO_INCREMENT,
  `fb_name` varchar(150) NOT NULL,
  `fb_email` varchar(150) NOT NULL,
  `fb_subject` varchar(500) NOT NULL,
  `fb_message` text NOT NULL,
  `fb_date_added` datetime NOT NULL,
  PRIMARY KEY (`fb_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1 ;

#
# Data contents of table feedbacks (1 records)
#
 
INSERT INTO `feedbacks` VALUES (1, 'sdfsdfs', 'dfssdf@asdasd.asd', 'asdasd', 'asdasdasdasd', '2017-02-20 15:18:19') ;
#
# End of data contents of table feedbacks
# --------------------------------------------------------

# MySQL database backup
#
# Generated: Friday 3. March 2017 07:58 PHT
# Hostname: localhost
# Database: `alumni`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `admin`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `auditlog`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `feedbacks`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `graduates`
# --------------------------------------------------------


#
# Delete any existing table `graduates`
#

DROP TABLE IF EXISTS `graduates`;


#
# Table structure of table `graduates`
#

CREATE TABLE `graduates` (
  `grad_id` int(11) NOT NULL AUTO_INCREMENT,
  `grad_fname` varchar(50) NOT NULL,
  `grad_mname` varchar(50) NOT NULL,
  `grad_lname` varchar(50) NOT NULL,
  `grad_gender` tinyint(1) NOT NULL COMMENT '1=male; 2=female',
  `grad_birthday` date NOT NULL,
  `grad_student_id` varchar(11) NOT NULL,
  `grad_course` varchar(100) NOT NULL,
  `grad_dept` varchar(100) NOT NULL,
  `grad_year_graduated` year(4) NOT NULL,
  `grad_so_number` varchar(50) NOT NULL,
  PRIMARY KEY (`grad_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ;

#
# Data contents of table graduates (0 records)
#

#
# End of data contents of table graduates
# --------------------------------------------------------

# MySQL database backup
#
# Generated: Friday 3. March 2017 07:58 PHT
# Hostname: localhost
# Database: `alumni`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `admin`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `auditlog`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `feedbacks`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `graduates`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `users`
# --------------------------------------------------------


#
# Delete any existing table `users`
#

DROP TABLE IF EXISTS `users`;


#
# Table structure of table `users`
#

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_grad_id` int(11) NOT NULL,
  `user_email` varchar(100) NOT NULL,
  `user_contact` varchar(50) NOT NULL,
  `user_address` varchar(255) NOT NULL,
  `user_username` varchar(50) NOT NULL,
  `user_salt` varchar(100) NOT NULL,
  `user_password` varchar(100) NOT NULL,
  `user_status` tinyint(1) NOT NULL DEFAULT '1',
  `user_employed` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0=not employed; 1=employed;',
  `user_company` varchar(155) NOT NULL,
  `user_position` varchar(100) NOT NULL,
  `user_job_level` varchar(100) NOT NULL,
  `user_date_modified` datetime NOT NULL,
  `user_date_added` datetime NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ;

#
# Data contents of table users (0 records)
#

#
# End of data contents of table users
# --------------------------------------------------------

# MySQL database backup
#
# Generated: Friday 3. March 2017 07:58 PHT
# Hostname: localhost
# Database: `alumni`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `admin`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `auditlog`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `feedbacks`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `graduates`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `users`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webaboutus`
# --------------------------------------------------------


#
# Delete any existing table `webaboutus`
#

DROP TABLE IF EXISTS `webaboutus`;


#
# Table structure of table `webaboutus`
#

CREATE TABLE `webaboutus` (
  `about_id` int(11) NOT NULL AUTO_INCREMENT,
  `about_mission` text NOT NULL,
  `about_vision` text NOT NULL,
  `about_history` text NOT NULL,
  `about_date_modified` datetime NOT NULL,
  `about_date_added` datetime NOT NULL,
  PRIMARY KEY (`about_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ;

#
# Data contents of table webaboutus (0 records)
#

#
# End of data contents of table webaboutus
# --------------------------------------------------------

# MySQL database backup
#
# Generated: Friday 3. March 2017 07:58 PHT
# Hostname: localhost
# Database: `alumni`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `admin`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `auditlog`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `feedbacks`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `graduates`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `users`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webaboutus`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webannouncements`
# --------------------------------------------------------


#
# Delete any existing table `webannouncements`
#

DROP TABLE IF EXISTS `webannouncements`;


#
# Table structure of table `webannouncements`
#

CREATE TABLE `webannouncements` (
  `announ_id` int(11) NOT NULL AUTO_INCREMENT,
  `announ_title` varchar(255) NOT NULL,
  `announ_description` text NOT NULL,
  `announ_status` tinyint(1) NOT NULL DEFAULT '1',
  `announ_poster_id` int(11) NOT NULL,
  `announ_date_modified` datetime NOT NULL,
  `announ_date_added` datetime NOT NULL,
  PRIMARY KEY (`announ_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1 ;

#
# Data contents of table webannouncements (7 records)
#
 
INSERT INTO `webannouncements` VALUES (1, 'Maecenas at tortor sem. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut cursus, enim ac varius commodo, tellus ligula cursus velit, quis sodales augue lorem id arcu. Etiam sit amet pellentesque ipsum.', 'Maecenas at tortor sem. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut cursus, enim ac varius commodo, tellus ligula cursus velit, quis sodales augue lorem id arcu. Etiam sit amet pellentesque ipsum. Pellentesque venenatis lorem et ligula euismod, nec commodo felis tristique. Proin libero quam, bibendum vitae mi sagittis, tempor elementum velit. Nulla convallis tempor nisi, semper molestie eros tempus vitae. Ut viverra ligula tempus lorem eleifend, at sagittis purus malesuada. Pellentesque vehicula tincidunt metus a porta.', 1, 1, '2017-02-20 12:43:49', '2017-02-20 12:43:49') ; 
INSERT INTO `webannouncements` VALUES (2, 'Pellentesque eu ultricies leo. Nulla ullamcorper sem mauris, sit amet congue nisi sollicitudin non. Sed venenatis euismod pretium. ', 'Pellentesque eu ultricies leo. Nulla ullamcorper sem mauris, sit amet congue nisi sollicitudin non. Sed venenatis euismod pretium. Vivamus sit amet erat vehicula, semper arcu ut, mattis purus. Nunc at semper sem, sit amet facilisis risus. Fusce interdum egestas finibus. Proin ac tempus nulla. Nullam id ipsum enim. Vivamus sollicitudin blandit pharetra. Donec dictum ligula nisi, non ornare diam venenatis a. In pharetra turpis id elit fermentum sodales. Integer euismod nisl sed facilisis laoreet. Aenean lobortis ullamcorper dapibus. Pellentesque volutpat laoreet hendrerit.

Suspendisse potenti. Donec sed laoreet ipsum. Donec non diam placerat, porta lectus eget, pulvinar quam. Nullam at nulla at dolor consequat dictum. Proin a scelerisque nisi. Ut rhoncus facilisis nibh feugiat tempor. Aliquam erat volutpat.', 1, 1, '2017-02-20 12:44:01', '2017-02-20 12:44:01') ; 
INSERT INTO `webannouncements` VALUES (3, 'Suspendisse potenti. Donec sed laoreet ipsum. Donec non diam placerat, porta lectus eget, pulvinar quam. Nullam at nulla at dolor consequat dictum.', 'Suspendisse potenti. Donec sed laoreet ipsum. Donec non diam placerat, porta lectus eget, pulvinar quam. Nullam at nulla at dolor consequat dictum. Proin a scelerisque nisi. Ut rhoncus facilisis nibh feugiat tempor. Aliquam erat volutpat.

Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Sed in nulla purus. Aliquam lacinia, eros vel volutpat mattis, purus massa sagittis erat, vitae ultrices nisi odio a libero. Praesent bibendum convallis porttitor. Curabitur augue elit, pretium at risus vitae, interdum porta lacus. Integer quis condimentum lectus, nec tempus sem. Maecenas eleifend dui tempor condimentum mollis. Vivamus ut lorem id ipsum sodales efficitur. Donec magna dolor, vulputate non ante vel, tincidunt rutrum nulla. Vivamus pulvinar felis eros, quis pellentesque quam suscipit non. Vestibulum neque orci, convallis sed enim sit amet, rutrum bibendum risus. Curabitur eu ultrices elit. Pellentesque lectus tellus, volutpat sit amet pharetra quis, gravida vitae lacus. Sed euismod enim ut mauris elementum, nec congue neque facilisis. Phasellus eu molestie nulla, dictum sodales nisl.', 1, 1, '2017-02-20 12:44:14', '2017-02-20 12:44:14') ; 
INSERT INTO `webannouncements` VALUES (4, 'Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos.', 'Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Sed in nulla purus. Aliquam lacinia, eros vel volutpat mattis, purus massa sagittis erat, vitae ultrices nisi odio a libero. Praesent bibendum convallis porttitor. Curabitur augue elit, pretium at risus vitae, interdum porta lacus. Integer quis condimentum lectus, nec tempus sem. Maecenas eleifend dui tempor condimentum mollis. Vivamus ut lorem id ipsum sodales efficitur. Donec magna dolor, vulputate non ante vel, tincidunt rutrum nulla. Vivamus pulvinar felis eros, quis pellentesque quam suscipit non. Vestibulum neque orci, convallis sed enim sit amet, rutrum bibendum risus. Curabitur eu ultrices elit. Pellentesque lectus tellus, volutpat sit amet pharetra quis, gravida vitae lacus. Sed euismod enim ut mauris elementum, nec congue neque facilisis. Phasellus eu molestie nulla, dictum sodales nisl.', 1, 1, '2017-02-20 12:44:29', '2017-02-20 12:44:29') ; 
INSERT INTO `webannouncements` VALUES (5, 'Nam neque mauris, consectetur in varius id, elementum vel dolor. Sed vitae massa quis magna fermentum convallis sed venenatis diam. ', 'Nam neque mauris, consectetur in varius id, elementum vel dolor. Sed vitae massa quis magna fermentum convallis sed venenatis diam. Curabitur facilisis, lorem a ornare convallis, neque ligula facilisis nulla, a ultricies odio diam a mi. Phasellus lobortis gravida ligula in vulputate. Duis pellentesque pulvinar viverra. Etiam id suscipit velit, vitae placerat tortor. Ut faucibus ante ipsum, quis ultrices nisi hendrerit vel. Sed euismod velit a neque scelerisque aliquet. Vestibulum dictum eget ante id aliquam.

Nunc rutrum, libero ac dignissim lobortis, odio lacus laoreet urna, non vulputate ex libero in odio. In quis hendrerit velit. Suspendisse cursus justo augue, ut tempus est facilisis non. Donec ac lectus ut felis bibendum malesuada blandit vitae nisi. Nulla facilisi. Praesent facilisis elementum sem a venenatis. Sed accumsan eros vel felis auctor vestibulum. Pellentesque vitae massa ac diam ullamcorper eleifend mattis at quam. Suspendisse non ante efficitur, congue diam ut, placerat dolor. Sed aliquam dolor nibh, a scelerisque tellus pharetra eu. Morbi convallis, erat viverra malesuada fermentum, felis leo tincidunt lacus, ut mollis sem arcu eu odio. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae;', 1, 1, '2017-02-20 12:44:43', '2017-02-20 12:44:43') ; 
INSERT INTO `webannouncements` VALUES (6, 'Nunc rutrum, libero ac dignissim lobortis, odio lacus laoreet urna, non vulputate ex libero in odio. In quis hendrerit velit.', 'Nunc rutrum, libero ac dignissim lobortis, odio lacus laoreet urna, non vulputate ex libero in odio. In quis hendrerit velit. Suspendisse cursus justo augue, ut tempus est facilisis non. Donec ac lectus ut felis bibendum malesuada blandit vitae nisi. Nulla facilisi. Praesent facilisis elementum sem a venenatis. Sed accumsan eros vel felis auctor vestibulum. Pellentesque vitae massa ac diam ullamcorper eleifend mattis at quam. Suspendisse non ante efficitur, congue diam ut, placerat dolor. Sed aliquam dolor nibh, a scelerisque tellus pharetra eu. Morbi convallis, erat viverra malesuada fermentum, felis leo tincidunt lacus, ut mollis sem arcu eu odio. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae;', 1, 1, '2017-02-20 12:44:55', '2017-02-20 12:44:55') ; 
INSERT INTO `webannouncements` VALUES (7, 'Nulla convallis nisl a ante facilisis suscipit. Morbi sit amet imperdiet tortor. Duis posuere gravida nisl, sit amet posuere tortor dictum blandit.', 'Nulla convallis nisl a ante facilisis suscipit. Morbi sit amet imperdiet tortor. Duis posuere gravida nisl, sit amet posuere tortor dictum blandit. Cras ultricies iaculis vulputate. Fusce non turpis porttitor, ornare diam at, cursus ante. Donec at velit magna. Nunc est leo, pretium at dolor a, commodo malesuada neque. Maecenas ultrices in ex ac laoreet. Cras accumsan mi vitae augue consequat, vitae scelerisque est fermentum. Donec vehicula risus ut libero aliquet ultricies. Nulla facilisi.

Integer tortor est, aliquet nec sapien sit amet, commodo consectetur arcu. Curabitur bibendum erat rutrum lorem semper, id blandit diam luctus. Sed suscipit est non risus viverra, in viverra quam hendrerit. Aliquam elit risus, vulputate vel nulla vulputate, consequat venenatis ex. Suspendisse potenti. Cras aliquet metus vitae turpis vestibulum viverra. Donec scelerisque dolor ultricies purus malesuada euismod. Cras eleifend porta elementum. Quisque malesuada leo dolor. Cras consequat leo quis imperdiet suscipit. Vestibulum laoreet risus a nunc ullamcorper viverra. Maecenas hendrerit ante id justo porta, ut ornare mi hendrerit.', 1, 1, '2017-02-20 12:47:17', '2017-02-20 12:45:10') ;
#
# End of data contents of table webannouncements
# --------------------------------------------------------

# MySQL database backup
#
# Generated: Friday 3. March 2017 07:58 PHT
# Hostname: localhost
# Database: `alumni`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `admin`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `auditlog`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `feedbacks`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `graduates`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `users`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webaboutus`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webannouncements`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webbanner`
# --------------------------------------------------------


#
# Delete any existing table `webbanner`
#

DROP TABLE IF EXISTS `webbanner`;


#
# Table structure of table `webbanner`
#

CREATE TABLE `webbanner` (
  `banner_id` int(11) NOT NULL AUTO_INCREMENT,
  `banner_image` varchar(255) NOT NULL,
  `banner_title` varchar(100) NOT NULL,
  `banner_status` tinyint(1) NOT NULL DEFAULT '1',
  `banner_poster_id` int(11) NOT NULL,
  `banner_date_modified` datetime NOT NULL,
  `banner_date_added` datetime NOT NULL,
  PRIMARY KEY (`banner_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1 ;

#
# Data contents of table webbanner (1 records)
#
 
INSERT INTO `webbanner` VALUES (1, 'raffle.jpg', 'CCA Alumni First Fund Raising Event', 1, 1, '2017-02-20 12:47:58', '2017-02-13 20:32:15') ;
#
# End of data contents of table webbanner
# --------------------------------------------------------

# MySQL database backup
#
# Generated: Friday 3. March 2017 07:58 PHT
# Hostname: localhost
# Database: `alumni`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `admin`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `auditlog`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `feedbacks`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `graduates`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `users`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webaboutus`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webannouncements`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webbanner`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webcontactus`
# --------------------------------------------------------


#
# Delete any existing table `webcontactus`
#

DROP TABLE IF EXISTS `webcontactus`;


#
# Table structure of table `webcontactus`
#

CREATE TABLE `webcontactus` (
  `contact_id` int(11) NOT NULL AUTO_INCREMENT,
  `contact_phone` varchar(30) NOT NULL,
  `contact_mobile` varchar(30) NOT NULL,
  `contact_email` varchar(100) NOT NULL,
  `contact_address` varchar(255) NOT NULL,
  `contact_fax` varchar(30) NOT NULL,
  `contact_date_modified` datetime NOT NULL,
  `contact_date_added` datetime NOT NULL,
  PRIMARY KEY (`contact_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ;

#
# Data contents of table webcontactus (0 records)
#

#
# End of data contents of table webcontactus
# --------------------------------------------------------

# MySQL database backup
#
# Generated: Friday 3. March 2017 07:58 PHT
# Hostname: localhost
# Database: `alumni`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `admin`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `auditlog`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `feedbacks`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `graduates`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `users`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webaboutus`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webannouncements`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webbanner`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webcontactus`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webjobs`
# --------------------------------------------------------


#
# Delete any existing table `webjobs`
#

DROP TABLE IF EXISTS `webjobs`;


#
# Table structure of table `webjobs`
#

CREATE TABLE `webjobs` (
  `job_id` int(11) NOT NULL AUTO_INCREMENT,
  `job_title` varchar(500) NOT NULL,
  `job_company` varchar(255) NOT NULL,
  `job_positions` varchar(500) NOT NULL,
  `job_vacancy` varchar(500) NOT NULL,
  `job_description` text NOT NULL,
  `job_poster_id` int(11) NOT NULL,
  `job_status` tinyint(1) NOT NULL DEFAULT '1',
  `job_date_modified` datetime NOT NULL,
  `job_date_added` datetime NOT NULL,
  PRIMARY KEY (`job_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1 ;

#
# Data contents of table webjobs (1 records)
#
 
INSERT INTO `webjobs` VALUES (1, 'Litigation Lawyer', 'Global Estate Resorts, Inc. (a subsidiary of Megaworld Corporation)', 'Litigation Lawyer', '5', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#039;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 1, 1, '2017-02-20 13:23:25', '2017-02-20 13:13:27') ;
#
# End of data contents of table webjobs
# --------------------------------------------------------

# MySQL database backup
#
# Generated: Friday 3. March 2017 07:58 PHT
# Hostname: localhost
# Database: `alumni`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `admin`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `auditlog`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `feedbacks`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `graduates`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `users`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webaboutus`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webannouncements`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webbanner`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webcontactus`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webjobs`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webmenu`
# --------------------------------------------------------


#
# Delete any existing table `webmenu`
#

DROP TABLE IF EXISTS `webmenu`;


#
# Table structure of table `webmenu`
#

CREATE TABLE `webmenu` (
  `menu_id` int(11) NOT NULL AUTO_INCREMENT,
  `menu_title` varchar(50) NOT NULL,
  `menu_link` varchar(255) NOT NULL,
  `menu_status` tinyint(1) NOT NULL DEFAULT '1',
  `menu_position` tinyint(4) NOT NULL,
  `menu_date_modified` datetime NOT NULL,
  `menu_date_added` datetime NOT NULL,
  PRIMARY KEY (`menu_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1 ;

#
# Data contents of table webmenu (5 records)
#
 
INSERT INTO `webmenu` VALUES (1, 'Home', 'index', 1, 1, '2017-02-20 13:35:09', '2017-02-20 13:35:09') ; 
INSERT INTO `webmenu` VALUES (2, 'News', 'news', 1, 2, '2017-02-17 11:02:00', '2017-02-17 11:02:00') ; 
INSERT INTO `webmenu` VALUES (3, 'Announcements', 'announcements', 1, 3, '2017-02-17 11:02:13', '2017-02-17 11:02:13') ; 
INSERT INTO `webmenu` VALUES (4, 'About Us', 'about-us', 1, 4, '2017-02-17 11:02:25', '2017-02-17 11:02:25') ; 
INSERT INTO `webmenu` VALUES (5, 'Contact Us', 'contact-us', 1, 5, '2017-02-17 11:02:36', '2017-02-17 11:02:36') ;
#
# End of data contents of table webmenu
# --------------------------------------------------------

# MySQL database backup
#
# Generated: Friday 3. March 2017 07:58 PHT
# Hostname: localhost
# Database: `alumni`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `admin`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `auditlog`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `feedbacks`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `graduates`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `users`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webaboutus`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webannouncements`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webbanner`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webcontactus`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webjobs`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webmenu`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webnews`
# --------------------------------------------------------


#
# Delete any existing table `webnews`
#

DROP TABLE IF EXISTS `webnews`;


#
# Table structure of table `webnews`
#

CREATE TABLE `webnews` (
  `news_id` int(11) NOT NULL AUTO_INCREMENT,
  `news_title` varchar(255) NOT NULL,
  `news_description` text NOT NULL,
  `news_image` varchar(500) NOT NULL,
  `news_status` tinyint(1) NOT NULL DEFAULT '1',
  `news_poster_id` int(11) NOT NULL,
  `news_date_modified` datetime NOT NULL,
  `news_date_added` datetime NOT NULL,
  PRIMARY KEY (`news_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1 ;

#
# Data contents of table webnews (7 records)
#
 
INSERT INTO `webnews` VALUES (1, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis feugiat quam velit, vitae ornare libero pellentesque ut.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis feugiat quam velit, vitae ornare libero pellentesque ut. Ut tempus augue sit amet ipsum elementum, eget faucibus erat molestie. Praesent in eros rutrum, ornare leo vitae, interdum nibh. Suspendisse consectetur eget justo non lacinia. In fermentum luctus condimentum. Morbi a libero molestie, facilisis mauris pellentesque, fermentum orci. Vivamus eget risus lacinia, scelerisque dui in, lobortis leo. Aliquam et ultricies dui. Nunc pharetra, enim eu efficitur molestie, metus sem mattis risus, tristique fringilla libero nulla et felis. Nam id sodales elit. Nullam elementum volutpat tortor, id feugiat erat placerat eu.

Suspendisse sit amet porta orci. Nam ultricies nisi ante. Nulla vel arcu sodales, varius nisi in, porttitor orci. Sed viverra felis eget lacus faucibus hendrerit. Cras erat turpis, faucibus id porta nec, mattis vel velit. Maecenas non magna sit amet velit pretium consectetur. Proin id nulla dictum, euismod purus eget, malesuada augue. Praesent eu sapien risus. Curabitur id nisi neque.', '1.jpg', 1, 1, '2017-02-20 12:38:37', '2017-02-20 12:38:37') ; 
INSERT INTO `webnews` VALUES (2, 'Suspendisse sit amet porta orci. Nam ultricies nisi ante. Nulla vel arcu sodales, varius nisi in, porttitor orci. Sed viverra felis eget lacus faucibus hendrerit.', 'Suspendisse sit amet porta orci. Nam ultricies nisi ante. Nulla vel arcu sodales, varius nisi in, porttitor orci. Sed viverra felis eget lacus faucibus hendrerit. Cras erat turpis, faucibus id porta nec, mattis vel velit. Maecenas non magna sit amet velit pretium consectetur. Proin id nulla dictum, euismod purus eget, malesuada augue. Praesent eu sapien risus. Curabitur id nisi neque.

Sed convallis commodo quam ut scelerisque. Fusce non pharetra lectus. Maecenas euismod tincidunt orci ac efficitur. Sed lectus odio, imperdiet nec tincidunt a, varius eget metus. Fusce ullamcorper tempor aliquet. Sed tempus efficitur sapien, in tempor metus aliquam non. Ut dapibus risus sit amet nisi scelerisque, sed faucibus tellus feugiat. Proin facilisis erat magna, eu molestie mi venenatis id. Praesent eleifend ante eget massa dignissim, nec vulputate orci suscipit.', '2.jpg', 1, 1, '2017-02-20 12:40:27', '2017-02-20 12:40:27') ; 
INSERT INTO `webnews` VALUES (3, 'Sed convallis commodo quam ut scelerisque. Fusce non pharetra lectus. Maecenas euismod tincidunt orci ac efficitur.', 'Sed convallis commodo quam ut scelerisque. Fusce non pharetra lectus. Maecenas euismod tincidunt orci ac efficitur. Sed lectus odio, imperdiet nec tincidunt a, varius eget metus. Fusce ullamcorper tempor aliquet. Sed tempus efficitur sapien, in tempor metus aliquam non. Ut dapibus risus sit amet nisi scelerisque, sed faucibus tellus feugiat. Proin facilisis erat magna, eu molestie mi venenatis id. Praesent eleifend ante eget massa dignissim, nec vulputate orci suscipit.

Nullam accumsan est vitae ante imperdiet, volutpat porttitor odio condimentum. Suspendisse condimentum eget purus non fermentum. In elit nunc, blandit in augue at, volutpat tincidunt nibh. Donec vestibulum, lorem eget pretium hendrerit, lacus enim bibendum nisl, quis pulvinar quam ex et dolor. Donec sed leo lobortis, eleifend leo ac, dignissim magna. Suspendisse mattis sapien tincidunt, gravida augue id, rhoncus tellus. Sed eu auctor lorem. Etiam id turpis urna. Donec at posuere nunc, id auctor orci. Nam sapien eros, egestas vitae risus nec, commodo consequat urna. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Praesent fringilla neque eros, tristique convallis felis laoreet non. Aliquam in nibh in libero lacinia faucibus a id justo. Interdum et malesuada fames ac ante ipsum primis in faucibus.', '3.jpg', 1, 1, '2017-02-20 12:40:49', '2017-02-20 12:40:49') ; 
INSERT INTO `webnews` VALUES (4, 'Nullam accumsan est vitae ante imperdiet, volutpat porttitor odio condimentum. Suspendisse condimentum eget purus non fermentum. ', 'Nullam accumsan est vitae ante imperdiet, volutpat porttitor odio condimentum. Suspendisse condimentum eget purus non fermentum. In elit nunc, blandit in augue at, volutpat tincidunt nibh. Donec vestibulum, lorem eget pretium hendrerit, lacus enim bibendum nisl, quis pulvinar quam ex et dolor. Donec sed leo lobortis, eleifend leo ac, dignissim magna. Suspendisse mattis sapien tincidunt, gravida augue id, rhoncus tellus. Sed eu auctor lorem. Etiam id turpis urna. Donec at posuere nunc, id auctor orci. Nam sapien eros, egestas vitae risus nec, commodo consequat urna. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Praesent fringilla neque eros, tristique convallis felis laoreet non. Aliquam in nibh in libero lacinia faucibus a id justo. Interdum et malesuada fames ac ante ipsum primis in faucibus.', '4.jpg', 1, 1, '2017-02-20 12:41:06', '2017-02-20 12:41:06') ; 
INSERT INTO `webnews` VALUES (5, 'Aaaliquam id dui pulvinar, mattis sem in, maximus elit. Cras convallis lobortis quam. Etiam tristique, est id blandit imperdiet, sapien nulla vestibulum ligula, ut rhoncus ligula libero a felis.', 'Aliquam id dui pulvinar, mattis sem in, maximus elit. Cras convallis lobortis quam. Etiam tristique, est id blandit imperdiet, sapien nulla vestibulum ligula, ut rhoncus ligula libero a felis. Morbi tincidunt felis sit amet urna pellentesque lacinia. Maecenas urna elit, posuere quis libero porttitor, placerat aliquet justo. In hac habitasse platea dictumst. Suspendisse elementum vel neque sed aliquet. Curabitur nec cursus mi. Proin id pretium magna, ac tempus sapien. Nam ornare vulputate gravida. Aenean ut tristique lacus. Donec suscipit, ex sed consectetur imperdiet, ex eros pellentesque massa, et scelerisque felis eros non elit. Nulla diam mi, iaculis nec ex quis, accumsan euismod augue.

Vestibulum a ornare est. Vivamus fermentum laoreet dui id tristique. Donec pulvinar tempor mi, ac cursus nibh tempor sit amet. Ut sagittis arcu enim, nec luctus quam vestibulum a. Proin non interdum metus. Vivamus ornare lorem nec justo consequat, in sagittis libero sodales. Donec ullamcorper tristique ligula non consectetur. Vivamus cursus nec lacus nec convallis. Pellentesque eu consectetur nibh. Donec volutpat sodales accumsan. Nullam commodo mattis semper. Donec auctor eu nisi in volutpat. Vivamus sit amet lorem mattis, condimentum augue eu, accumsan lorem. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Quisque lacinia efficitur massa at bibendum. Suspendisse iaculis elit ante.', '5.jpg', 1, 1, '2017-02-20 12:42:21', '2017-02-20 12:41:29') ; 
INSERT INTO `webnews` VALUES (6, 'Vestibulum a ornare est. Vivamus fermentum laoreet dui id tristique. Donec pulvinar tempor mi, ac cursus nibh tempor sit amet. Ut sagittis arcu enim, nec luctus quam vestibulum a.', 'Vestibulum a ornare est. Vivamus fermentum laoreet dui id tristique. Donec pulvinar tempor mi, ac cursus nibh tempor sit amet. Ut sagittis arcu enim, nec luctus quam vestibulum a. Proin non interdum metus. Vivamus ornare lorem nec justo consequat, in sagittis libero sodales. Donec ullamcorper tristique ligula non consectetur. Vivamus cursus nec lacus nec convallis. Pellentesque eu consectetur nibh. Donec volutpat sodales accumsan. Nullam commodo mattis semper. Donec auctor eu nisi in volutpat. Vivamus sit amet lorem mattis, condimentum augue eu, accumsan lorem. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Quisque lacinia efficitur massa at bibendum. Suspendisse iaculis elit ante.', '6.jpg', 1, 1, '2017-02-20 12:42:49', '2017-02-20 12:42:49') ; 
INSERT INTO `webnews` VALUES (7, 'Integer eu fermentum erat. Sed sollicitudin sollicitudin est, at molestie augue sagittis quis. Suspendisse pellentesque non lorem vitae vehicula. Donec pellentesque ligula vitae risus pulvinar dictum. ', 'Integer eu fermentum erat. Sed sollicitudin sollicitudin est, at molestie augue sagittis quis. Suspendisse pellentesque non lorem vitae vehicula. Donec pellentesque ligula vitae risus pulvinar dictum. Ut commodo mollis quam, quis tempus neque scelerisque at. Vivamus porta risus justo, sit amet luctus felis eleifend ut. Suspendisse id dui metus. Mauris varius quam ante, eget cursus arcu congue in. Quisque ut urna accumsan, efficitur purus vitae, varius libero. Etiam a velit odio. Duis malesuada purus luctus consequat rhoncus. Nulla dapibus neque et lacus fringilla, eu semper dolor tincidunt. In sagittis tortor et nisi sagittis finibus. Pellentesque iaculis ligula nec erat bibendum tincidunt.

Maecenas at tortor sem. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut cursus, enim ac varius commodo, tellus ligula cursus velit, quis sodales augue lorem id arcu. Etiam sit amet pellentesque ipsum. Pellentesque venenatis lorem et ligula euismod, nec commodo felis tristique. Proin libero quam, bibendum vitae mi sagittis, tempor elementum velit. Nulla convallis tempor nisi, semper molestie eros tempus vitae. Ut viverra ligula tempus lorem eleifend, at sagittis purus malesuada. Pellentesque vehicula tincidunt metus a porta.', '6_2.jpg', 1, 1, '2017-02-20 12:43:08', '2017-02-20 12:43:08') ;
#
# End of data contents of table webnews
# --------------------------------------------------------

# MySQL database backup
#
# Generated: Friday 3. March 2017 07:58 PHT
# Hostname: localhost
# Database: `alumni`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `admin`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `auditlog`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `feedbacks`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `graduates`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `users`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webaboutus`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webannouncements`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webbanner`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webcontactus`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webjobs`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webmenu`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webnews`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webslider`
# --------------------------------------------------------


#
# Delete any existing table `webslider`
#

DROP TABLE IF EXISTS `webslider`;


#
# Table structure of table `webslider`
#

CREATE TABLE `webslider` (
  `slider_id` int(11) NOT NULL AUTO_INCREMENT,
  `slider_image` varchar(255) NOT NULL,
  `slider_caption` text NOT NULL,
  `slider_title` varchar(255) NOT NULL,
  `slider_status` tinyint(1) NOT NULL DEFAULT '1',
  `slider_poster_id` int(11) NOT NULL,
  `slider_date_modified` datetime NOT NULL,
  `slider_date_added` datetime NOT NULL,
  PRIMARY KEY (`slider_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ;

#
# Data contents of table webslider (0 records)
#

#
# End of data contents of table webslider
# --------------------------------------------------------

# MySQL database backup
#
# Generated: Friday 3. March 2017 07:58 PHT
# Hostname: localhost
# Database: `alumni`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `admin`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `auditlog`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `feedbacks`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `graduates`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `users`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webaboutus`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webannouncements`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webbanner`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webcontactus`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webjobs`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webmenu`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webnews`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webslider`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `websubmenu`
# --------------------------------------------------------


#
# Delete any existing table `websubmenu`
#

DROP TABLE IF EXISTS `websubmenu`;


#
# Table structure of table `websubmenu`
#

CREATE TABLE `websubmenu` (
  `submenu_id` int(11) NOT NULL AUTO_INCREMENT,
  `submenu_menu_id` int(11) NOT NULL,
  `submenu_title` varchar(50) NOT NULL,
  `submenu_link` varchar(255) NOT NULL,
  `submenu_status` tinyint(1) NOT NULL DEFAULT '1',
  `submenu_position` tinyint(4) NOT NULL,
  `submenu_date_modified` datetime NOT NULL,
  `submenu_date_added` datetime NOT NULL,
  PRIMARY KEY (`submenu_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1 ;

#
# Data contents of table websubmenu (1 records)
#
 
INSERT INTO `websubmenu` VALUES (1, 1, 'dfddd', 'ddddd', 2, 0, '2017-02-20 13:35:23', '2017-02-20 13:35:15') ;
#
# End of data contents of table websubmenu
# --------------------------------------------------------

# MySQL database backup
#
# Generated: Friday 3. March 2017 08:00 PHT
# Hostname: localhost
# Database: `alumni`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `admin`
# --------------------------------------------------------


#
# Delete any existing table `admin`
#

DROP TABLE IF EXISTS `admin`;


#
# Table structure of table `admin`
#

CREATE TABLE `admin` (
  `admin_id` int(11) NOT NULL AUTO_INCREMENT,
  `admin_fname` varchar(50) NOT NULL,
  `admin_mname` varchar(50) NOT NULL,
  `admin_lname` varchar(50) NOT NULL,
  `admin_email` varchar(100) NOT NULL,
  `admin_username` varchar(50) NOT NULL,
  `admin_salt` varchar(50) NOT NULL,
  `admin_password` varchar(100) NOT NULL,
  `admin_level` tinyint(1) NOT NULL COMMENT '1=sysad; 2=moderator; 3=viewing;',
  `admin_status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '0=not active; 1=active; 2=disabled;',
  `admin_date_modified` datetime NOT NULL,
  `admin_date_added` datetime NOT NULL,
  PRIMARY KEY (`admin_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1 ;

#
# Data contents of table admin (1 records)
#
 
INSERT INTO `admin` VALUES (1, 'juan', 'santos', 'dela cruz', 'juan23@mail.com', 'admin', '³W÷þdaÂí±ÂùF®9ïÐ0Ÿ€‘ƒÈn·0¢Ã#üå¨', '3640daa0c1fc63a0be23f357f05202ab732697f6bd5bfb93ef00d947cc133461', 1, 1, '2017-02-08 00:00:00', '2017-02-08 00:00:00') ;
#
# End of data contents of table admin
# --------------------------------------------------------

# MySQL database backup
#
# Generated: Friday 3. March 2017 08:00 PHT
# Hostname: localhost
# Database: `alumni`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `admin`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `auditlog`
# --------------------------------------------------------


#
# Delete any existing table `auditlog`
#

DROP TABLE IF EXISTS `auditlog`;


#
# Table structure of table `auditlog`
#

CREATE TABLE `auditlog` (
  `audit_id` int(11) NOT NULL AUTO_INCREMENT,
  `audit_table_affected` varchar(100) NOT NULL,
  `audit_action` varchar(255) NOT NULL,
  `audit_admin_id` int(11) NOT NULL,
  `audit_datetime` datetime NOT NULL,
  PRIMARY KEY (`audit_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ;

#
# Data contents of table auditlog (0 records)
#

#
# End of data contents of table auditlog
# --------------------------------------------------------

# MySQL database backup
#
# Generated: Friday 3. March 2017 08:00 PHT
# Hostname: localhost
# Database: `alumni`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `admin`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `auditlog`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `feedbacks`
# --------------------------------------------------------


#
# Delete any existing table `feedbacks`
#

DROP TABLE IF EXISTS `feedbacks`;


#
# Table structure of table `feedbacks`
#

CREATE TABLE `feedbacks` (
  `fb_id` int(11) NOT NULL AUTO_INCREMENT,
  `fb_name` varchar(150) NOT NULL,
  `fb_email` varchar(150) NOT NULL,
  `fb_subject` varchar(500) NOT NULL,
  `fb_message` text NOT NULL,
  `fb_date_added` datetime NOT NULL,
  PRIMARY KEY (`fb_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1 ;

#
# Data contents of table feedbacks (1 records)
#
 
INSERT INTO `feedbacks` VALUES (1, 'sdfsdfs', 'dfssdf@asdasd.asd', 'asdasd', 'asdasdasdasd', '2017-02-20 15:18:19') ;
#
# End of data contents of table feedbacks
# --------------------------------------------------------

# MySQL database backup
#
# Generated: Friday 3. March 2017 08:00 PHT
# Hostname: localhost
# Database: `alumni`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `admin`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `auditlog`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `feedbacks`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `graduates`
# --------------------------------------------------------


#
# Delete any existing table `graduates`
#

DROP TABLE IF EXISTS `graduates`;


#
# Table structure of table `graduates`
#

CREATE TABLE `graduates` (
  `grad_id` int(11) NOT NULL AUTO_INCREMENT,
  `grad_fname` varchar(50) NOT NULL,
  `grad_mname` varchar(50) NOT NULL,
  `grad_lname` varchar(50) NOT NULL,
  `grad_gender` tinyint(1) NOT NULL COMMENT '1=male; 2=female',
  `grad_birthday` date NOT NULL,
  `grad_student_id` varchar(11) NOT NULL,
  `grad_course` varchar(100) NOT NULL,
  `grad_dept` varchar(100) NOT NULL,
  `grad_year_graduated` year(4) NOT NULL,
  `grad_so_number` varchar(50) NOT NULL,
  PRIMARY KEY (`grad_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ;

#
# Data contents of table graduates (0 records)
#

#
# End of data contents of table graduates
# --------------------------------------------------------

# MySQL database backup
#
# Generated: Friday 3. March 2017 08:00 PHT
# Hostname: localhost
# Database: `alumni`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `admin`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `auditlog`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `feedbacks`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `graduates`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `users`
# --------------------------------------------------------


#
# Delete any existing table `users`
#

DROP TABLE IF EXISTS `users`;


#
# Table structure of table `users`
#

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_grad_id` int(11) NOT NULL,
  `user_email` varchar(100) NOT NULL,
  `user_contact` varchar(50) NOT NULL,
  `user_address` varchar(255) NOT NULL,
  `user_username` varchar(50) NOT NULL,
  `user_salt` varchar(100) NOT NULL,
  `user_password` varchar(100) NOT NULL,
  `user_status` tinyint(1) NOT NULL DEFAULT '1',
  `user_employed` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0=not employed; 1=employed;',
  `user_company` varchar(155) NOT NULL,
  `user_position` varchar(100) NOT NULL,
  `user_job_level` varchar(100) NOT NULL,
  `user_date_modified` datetime NOT NULL,
  `user_date_added` datetime NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ;

#
# Data contents of table users (0 records)
#

#
# End of data contents of table users
# --------------------------------------------------------

# MySQL database backup
#
# Generated: Friday 3. March 2017 08:00 PHT
# Hostname: localhost
# Database: `alumni`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `admin`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `auditlog`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `feedbacks`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `graduates`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `users`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webaboutus`
# --------------------------------------------------------


#
# Delete any existing table `webaboutus`
#

DROP TABLE IF EXISTS `webaboutus`;


#
# Table structure of table `webaboutus`
#

CREATE TABLE `webaboutus` (
  `about_id` int(11) NOT NULL AUTO_INCREMENT,
  `about_mission` text NOT NULL,
  `about_vision` text NOT NULL,
  `about_history` text NOT NULL,
  `about_date_modified` datetime NOT NULL,
  `about_date_added` datetime NOT NULL,
  PRIMARY KEY (`about_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ;

#
# Data contents of table webaboutus (0 records)
#

#
# End of data contents of table webaboutus
# --------------------------------------------------------

# MySQL database backup
#
# Generated: Friday 3. March 2017 08:00 PHT
# Hostname: localhost
# Database: `alumni`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `admin`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `auditlog`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `feedbacks`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `graduates`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `users`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webaboutus`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webannouncements`
# --------------------------------------------------------


#
# Delete any existing table `webannouncements`
#

DROP TABLE IF EXISTS `webannouncements`;


#
# Table structure of table `webannouncements`
#

CREATE TABLE `webannouncements` (
  `announ_id` int(11) NOT NULL AUTO_INCREMENT,
  `announ_title` varchar(255) NOT NULL,
  `announ_description` text NOT NULL,
  `announ_status` tinyint(1) NOT NULL DEFAULT '1',
  `announ_poster_id` int(11) NOT NULL,
  `announ_date_modified` datetime NOT NULL,
  `announ_date_added` datetime NOT NULL,
  PRIMARY KEY (`announ_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1 ;

#
# Data contents of table webannouncements (7 records)
#
 
INSERT INTO `webannouncements` VALUES (1, 'Maecenas at tortor sem. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut cursus, enim ac varius commodo, tellus ligula cursus velit, quis sodales augue lorem id arcu. Etiam sit amet pellentesque ipsum.', 'Maecenas at tortor sem. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut cursus, enim ac varius commodo, tellus ligula cursus velit, quis sodales augue lorem id arcu. Etiam sit amet pellentesque ipsum. Pellentesque venenatis lorem et ligula euismod, nec commodo felis tristique. Proin libero quam, bibendum vitae mi sagittis, tempor elementum velit. Nulla convallis tempor nisi, semper molestie eros tempus vitae. Ut viverra ligula tempus lorem eleifend, at sagittis purus malesuada. Pellentesque vehicula tincidunt metus a porta.', 1, 1, '2017-02-20 12:43:49', '2017-02-20 12:43:49') ; 
INSERT INTO `webannouncements` VALUES (2, 'Pellentesque eu ultricies leo. Nulla ullamcorper sem mauris, sit amet congue nisi sollicitudin non. Sed venenatis euismod pretium. ', 'Pellentesque eu ultricies leo. Nulla ullamcorper sem mauris, sit amet congue nisi sollicitudin non. Sed venenatis euismod pretium. Vivamus sit amet erat vehicula, semper arcu ut, mattis purus. Nunc at semper sem, sit amet facilisis risus. Fusce interdum egestas finibus. Proin ac tempus nulla. Nullam id ipsum enim. Vivamus sollicitudin blandit pharetra. Donec dictum ligula nisi, non ornare diam venenatis a. In pharetra turpis id elit fermentum sodales. Integer euismod nisl sed facilisis laoreet. Aenean lobortis ullamcorper dapibus. Pellentesque volutpat laoreet hendrerit.

Suspendisse potenti. Donec sed laoreet ipsum. Donec non diam placerat, porta lectus eget, pulvinar quam. Nullam at nulla at dolor consequat dictum. Proin a scelerisque nisi. Ut rhoncus facilisis nibh feugiat tempor. Aliquam erat volutpat.', 1, 1, '2017-02-20 12:44:01', '2017-02-20 12:44:01') ; 
INSERT INTO `webannouncements` VALUES (3, 'Suspendisse potenti. Donec sed laoreet ipsum. Donec non diam placerat, porta lectus eget, pulvinar quam. Nullam at nulla at dolor consequat dictum.', 'Suspendisse potenti. Donec sed laoreet ipsum. Donec non diam placerat, porta lectus eget, pulvinar quam. Nullam at nulla at dolor consequat dictum. Proin a scelerisque nisi. Ut rhoncus facilisis nibh feugiat tempor. Aliquam erat volutpat.

Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Sed in nulla purus. Aliquam lacinia, eros vel volutpat mattis, purus massa sagittis erat, vitae ultrices nisi odio a libero. Praesent bibendum convallis porttitor. Curabitur augue elit, pretium at risus vitae, interdum porta lacus. Integer quis condimentum lectus, nec tempus sem. Maecenas eleifend dui tempor condimentum mollis. Vivamus ut lorem id ipsum sodales efficitur. Donec magna dolor, vulputate non ante vel, tincidunt rutrum nulla. Vivamus pulvinar felis eros, quis pellentesque quam suscipit non. Vestibulum neque orci, convallis sed enim sit amet, rutrum bibendum risus. Curabitur eu ultrices elit. Pellentesque lectus tellus, volutpat sit amet pharetra quis, gravida vitae lacus. Sed euismod enim ut mauris elementum, nec congue neque facilisis. Phasellus eu molestie nulla, dictum sodales nisl.', 1, 1, '2017-02-20 12:44:14', '2017-02-20 12:44:14') ; 
INSERT INTO `webannouncements` VALUES (4, 'Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos.', 'Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Sed in nulla purus. Aliquam lacinia, eros vel volutpat mattis, purus massa sagittis erat, vitae ultrices nisi odio a libero. Praesent bibendum convallis porttitor. Curabitur augue elit, pretium at risus vitae, interdum porta lacus. Integer quis condimentum lectus, nec tempus sem. Maecenas eleifend dui tempor condimentum mollis. Vivamus ut lorem id ipsum sodales efficitur. Donec magna dolor, vulputate non ante vel, tincidunt rutrum nulla. Vivamus pulvinar felis eros, quis pellentesque quam suscipit non. Vestibulum neque orci, convallis sed enim sit amet, rutrum bibendum risus. Curabitur eu ultrices elit. Pellentesque lectus tellus, volutpat sit amet pharetra quis, gravida vitae lacus. Sed euismod enim ut mauris elementum, nec congue neque facilisis. Phasellus eu molestie nulla, dictum sodales nisl.', 1, 1, '2017-02-20 12:44:29', '2017-02-20 12:44:29') ; 
INSERT INTO `webannouncements` VALUES (5, 'Nam neque mauris, consectetur in varius id, elementum vel dolor. Sed vitae massa quis magna fermentum convallis sed venenatis diam. ', 'Nam neque mauris, consectetur in varius id, elementum vel dolor. Sed vitae massa quis magna fermentum convallis sed venenatis diam. Curabitur facilisis, lorem a ornare convallis, neque ligula facilisis nulla, a ultricies odio diam a mi. Phasellus lobortis gravida ligula in vulputate. Duis pellentesque pulvinar viverra. Etiam id suscipit velit, vitae placerat tortor. Ut faucibus ante ipsum, quis ultrices nisi hendrerit vel. Sed euismod velit a neque scelerisque aliquet. Vestibulum dictum eget ante id aliquam.

Nunc rutrum, libero ac dignissim lobortis, odio lacus laoreet urna, non vulputate ex libero in odio. In quis hendrerit velit. Suspendisse cursus justo augue, ut tempus est facilisis non. Donec ac lectus ut felis bibendum malesuada blandit vitae nisi. Nulla facilisi. Praesent facilisis elementum sem a venenatis. Sed accumsan eros vel felis auctor vestibulum. Pellentesque vitae massa ac diam ullamcorper eleifend mattis at quam. Suspendisse non ante efficitur, congue diam ut, placerat dolor. Sed aliquam dolor nibh, a scelerisque tellus pharetra eu. Morbi convallis, erat viverra malesuada fermentum, felis leo tincidunt lacus, ut mollis sem arcu eu odio. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae;', 1, 1, '2017-02-20 12:44:43', '2017-02-20 12:44:43') ; 
INSERT INTO `webannouncements` VALUES (6, 'Nunc rutrum, libero ac dignissim lobortis, odio lacus laoreet urna, non vulputate ex libero in odio. In quis hendrerit velit.', 'Nunc rutrum, libero ac dignissim lobortis, odio lacus laoreet urna, non vulputate ex libero in odio. In quis hendrerit velit. Suspendisse cursus justo augue, ut tempus est facilisis non. Donec ac lectus ut felis bibendum malesuada blandit vitae nisi. Nulla facilisi. Praesent facilisis elementum sem a venenatis. Sed accumsan eros vel felis auctor vestibulum. Pellentesque vitae massa ac diam ullamcorper eleifend mattis at quam. Suspendisse non ante efficitur, congue diam ut, placerat dolor. Sed aliquam dolor nibh, a scelerisque tellus pharetra eu. Morbi convallis, erat viverra malesuada fermentum, felis leo tincidunt lacus, ut mollis sem arcu eu odio. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae;', 1, 1, '2017-02-20 12:44:55', '2017-02-20 12:44:55') ; 
INSERT INTO `webannouncements` VALUES (7, 'Nulla convallis nisl a ante facilisis suscipit. Morbi sit amet imperdiet tortor. Duis posuere gravida nisl, sit amet posuere tortor dictum blandit.', 'Nulla convallis nisl a ante facilisis suscipit. Morbi sit amet imperdiet tortor. Duis posuere gravida nisl, sit amet posuere tortor dictum blandit. Cras ultricies iaculis vulputate. Fusce non turpis porttitor, ornare diam at, cursus ante. Donec at velit magna. Nunc est leo, pretium at dolor a, commodo malesuada neque. Maecenas ultrices in ex ac laoreet. Cras accumsan mi vitae augue consequat, vitae scelerisque est fermentum. Donec vehicula risus ut libero aliquet ultricies. Nulla facilisi.

Integer tortor est, aliquet nec sapien sit amet, commodo consectetur arcu. Curabitur bibendum erat rutrum lorem semper, id blandit diam luctus. Sed suscipit est non risus viverra, in viverra quam hendrerit. Aliquam elit risus, vulputate vel nulla vulputate, consequat venenatis ex. Suspendisse potenti. Cras aliquet metus vitae turpis vestibulum viverra. Donec scelerisque dolor ultricies purus malesuada euismod. Cras eleifend porta elementum. Quisque malesuada leo dolor. Cras consequat leo quis imperdiet suscipit. Vestibulum laoreet risus a nunc ullamcorper viverra. Maecenas hendrerit ante id justo porta, ut ornare mi hendrerit.', 1, 1, '2017-02-20 12:47:17', '2017-02-20 12:45:10') ;
#
# End of data contents of table webannouncements
# --------------------------------------------------------

# MySQL database backup
#
# Generated: Friday 3. March 2017 08:00 PHT
# Hostname: localhost
# Database: `alumni`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `admin`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `auditlog`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `feedbacks`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `graduates`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `users`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webaboutus`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webannouncements`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webbanner`
# --------------------------------------------------------


#
# Delete any existing table `webbanner`
#

DROP TABLE IF EXISTS `webbanner`;


#
# Table structure of table `webbanner`
#

CREATE TABLE `webbanner` (
  `banner_id` int(11) NOT NULL AUTO_INCREMENT,
  `banner_image` varchar(255) NOT NULL,
  `banner_title` varchar(100) NOT NULL,
  `banner_status` tinyint(1) NOT NULL DEFAULT '1',
  `banner_poster_id` int(11) NOT NULL,
  `banner_date_modified` datetime NOT NULL,
  `banner_date_added` datetime NOT NULL,
  PRIMARY KEY (`banner_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1 ;

#
# Data contents of table webbanner (1 records)
#
 
INSERT INTO `webbanner` VALUES (1, 'raffle.jpg', 'CCA Alumni First Fund Raising Event', 1, 1, '2017-02-20 12:47:58', '2017-02-13 20:32:15') ;
#
# End of data contents of table webbanner
# --------------------------------------------------------

# MySQL database backup
#
# Generated: Friday 3. March 2017 08:00 PHT
# Hostname: localhost
# Database: `alumni`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `admin`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `auditlog`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `feedbacks`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `graduates`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `users`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webaboutus`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webannouncements`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webbanner`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webcontactus`
# --------------------------------------------------------


#
# Delete any existing table `webcontactus`
#

DROP TABLE IF EXISTS `webcontactus`;


#
# Table structure of table `webcontactus`
#

CREATE TABLE `webcontactus` (
  `contact_id` int(11) NOT NULL AUTO_INCREMENT,
  `contact_phone` varchar(30) NOT NULL,
  `contact_mobile` varchar(30) NOT NULL,
  `contact_email` varchar(100) NOT NULL,
  `contact_address` varchar(255) NOT NULL,
  `contact_fax` varchar(30) NOT NULL,
  `contact_date_modified` datetime NOT NULL,
  `contact_date_added` datetime NOT NULL,
  PRIMARY KEY (`contact_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ;

#
# Data contents of table webcontactus (0 records)
#

#
# End of data contents of table webcontactus
# --------------------------------------------------------

# MySQL database backup
#
# Generated: Friday 3. March 2017 08:00 PHT
# Hostname: localhost
# Database: `alumni`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `admin`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `auditlog`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `feedbacks`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `graduates`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `users`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webaboutus`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webannouncements`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webbanner`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webcontactus`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webjobs`
# --------------------------------------------------------


#
# Delete any existing table `webjobs`
#

DROP TABLE IF EXISTS `webjobs`;


#
# Table structure of table `webjobs`
#

CREATE TABLE `webjobs` (
  `job_id` int(11) NOT NULL AUTO_INCREMENT,
  `job_title` varchar(500) NOT NULL,
  `job_company` varchar(255) NOT NULL,
  `job_positions` varchar(500) NOT NULL,
  `job_vacancy` varchar(500) NOT NULL,
  `job_description` text NOT NULL,
  `job_poster_id` int(11) NOT NULL,
  `job_status` tinyint(1) NOT NULL DEFAULT '1',
  `job_date_modified` datetime NOT NULL,
  `job_date_added` datetime NOT NULL,
  PRIMARY KEY (`job_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1 ;

#
# Data contents of table webjobs (1 records)
#
 
INSERT INTO `webjobs` VALUES (1, 'Litigation Lawyer', 'Global Estate Resorts, Inc. (a subsidiary of Megaworld Corporation)', 'Litigation Lawyer', '5', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#039;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 1, 1, '2017-02-20 13:23:25', '2017-02-20 13:13:27') ;
#
# End of data contents of table webjobs
# --------------------------------------------------------

# MySQL database backup
#
# Generated: Friday 3. March 2017 08:00 PHT
# Hostname: localhost
# Database: `alumni`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `admin`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `auditlog`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `feedbacks`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `graduates`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `users`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webaboutus`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webannouncements`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webbanner`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webcontactus`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webjobs`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webmenu`
# --------------------------------------------------------


#
# Delete any existing table `webmenu`
#

DROP TABLE IF EXISTS `webmenu`;


#
# Table structure of table `webmenu`
#

CREATE TABLE `webmenu` (
  `menu_id` int(11) NOT NULL AUTO_INCREMENT,
  `menu_title` varchar(50) NOT NULL,
  `menu_link` varchar(255) NOT NULL,
  `menu_status` tinyint(1) NOT NULL DEFAULT '1',
  `menu_position` tinyint(4) NOT NULL,
  `menu_date_modified` datetime NOT NULL,
  `menu_date_added` datetime NOT NULL,
  PRIMARY KEY (`menu_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1 ;

#
# Data contents of table webmenu (5 records)
#
 
INSERT INTO `webmenu` VALUES (1, 'Home', 'index', 1, 1, '2017-02-20 13:35:09', '2017-02-20 13:35:09') ; 
INSERT INTO `webmenu` VALUES (2, 'News', 'news', 1, 2, '2017-02-17 11:02:00', '2017-02-17 11:02:00') ; 
INSERT INTO `webmenu` VALUES (3, 'Announcements', 'announcements', 1, 3, '2017-02-17 11:02:13', '2017-02-17 11:02:13') ; 
INSERT INTO `webmenu` VALUES (4, 'About Us', 'about-us', 1, 4, '2017-02-17 11:02:25', '2017-02-17 11:02:25') ; 
INSERT INTO `webmenu` VALUES (5, 'Contact Us', 'contact-us', 1, 5, '2017-02-17 11:02:36', '2017-02-17 11:02:36') ;
#
# End of data contents of table webmenu
# --------------------------------------------------------

# MySQL database backup
#
# Generated: Friday 3. March 2017 08:00 PHT
# Hostname: localhost
# Database: `alumni`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `admin`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `auditlog`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `feedbacks`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `graduates`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `users`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webaboutus`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webannouncements`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webbanner`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webcontactus`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webjobs`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webmenu`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webnews`
# --------------------------------------------------------


#
# Delete any existing table `webnews`
#

DROP TABLE IF EXISTS `webnews`;


#
# Table structure of table `webnews`
#

CREATE TABLE `webnews` (
  `news_id` int(11) NOT NULL AUTO_INCREMENT,
  `news_title` varchar(255) NOT NULL,
  `news_description` text NOT NULL,
  `news_image` varchar(500) NOT NULL,
  `news_status` tinyint(1) NOT NULL DEFAULT '1',
  `news_poster_id` int(11) NOT NULL,
  `news_date_modified` datetime NOT NULL,
  `news_date_added` datetime NOT NULL,
  PRIMARY KEY (`news_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1 ;

#
# Data contents of table webnews (7 records)
#
 
INSERT INTO `webnews` VALUES (1, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis feugiat quam velit, vitae ornare libero pellentesque ut.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis feugiat quam velit, vitae ornare libero pellentesque ut. Ut tempus augue sit amet ipsum elementum, eget faucibus erat molestie. Praesent in eros rutrum, ornare leo vitae, interdum nibh. Suspendisse consectetur eget justo non lacinia. In fermentum luctus condimentum. Morbi a libero molestie, facilisis mauris pellentesque, fermentum orci. Vivamus eget risus lacinia, scelerisque dui in, lobortis leo. Aliquam et ultricies dui. Nunc pharetra, enim eu efficitur molestie, metus sem mattis risus, tristique fringilla libero nulla et felis. Nam id sodales elit. Nullam elementum volutpat tortor, id feugiat erat placerat eu.

Suspendisse sit amet porta orci. Nam ultricies nisi ante. Nulla vel arcu sodales, varius nisi in, porttitor orci. Sed viverra felis eget lacus faucibus hendrerit. Cras erat turpis, faucibus id porta nec, mattis vel velit. Maecenas non magna sit amet velit pretium consectetur. Proin id nulla dictum, euismod purus eget, malesuada augue. Praesent eu sapien risus. Curabitur id nisi neque.', '1.jpg', 1, 1, '2017-02-20 12:38:37', '2017-02-20 12:38:37') ; 
INSERT INTO `webnews` VALUES (2, 'Suspendisse sit amet porta orci. Nam ultricies nisi ante. Nulla vel arcu sodales, varius nisi in, porttitor orci. Sed viverra felis eget lacus faucibus hendrerit.', 'Suspendisse sit amet porta orci. Nam ultricies nisi ante. Nulla vel arcu sodales, varius nisi in, porttitor orci. Sed viverra felis eget lacus faucibus hendrerit. Cras erat turpis, faucibus id porta nec, mattis vel velit. Maecenas non magna sit amet velit pretium consectetur. Proin id nulla dictum, euismod purus eget, malesuada augue. Praesent eu sapien risus. Curabitur id nisi neque.

Sed convallis commodo quam ut scelerisque. Fusce non pharetra lectus. Maecenas euismod tincidunt orci ac efficitur. Sed lectus odio, imperdiet nec tincidunt a, varius eget metus. Fusce ullamcorper tempor aliquet. Sed tempus efficitur sapien, in tempor metus aliquam non. Ut dapibus risus sit amet nisi scelerisque, sed faucibus tellus feugiat. Proin facilisis erat magna, eu molestie mi venenatis id. Praesent eleifend ante eget massa dignissim, nec vulputate orci suscipit.', '2.jpg', 1, 1, '2017-02-20 12:40:27', '2017-02-20 12:40:27') ; 
INSERT INTO `webnews` VALUES (3, 'Sed convallis commodo quam ut scelerisque. Fusce non pharetra lectus. Maecenas euismod tincidunt orci ac efficitur.', 'Sed convallis commodo quam ut scelerisque. Fusce non pharetra lectus. Maecenas euismod tincidunt orci ac efficitur. Sed lectus odio, imperdiet nec tincidunt a, varius eget metus. Fusce ullamcorper tempor aliquet. Sed tempus efficitur sapien, in tempor metus aliquam non. Ut dapibus risus sit amet nisi scelerisque, sed faucibus tellus feugiat. Proin facilisis erat magna, eu molestie mi venenatis id. Praesent eleifend ante eget massa dignissim, nec vulputate orci suscipit.

Nullam accumsan est vitae ante imperdiet, volutpat porttitor odio condimentum. Suspendisse condimentum eget purus non fermentum. In elit nunc, blandit in augue at, volutpat tincidunt nibh. Donec vestibulum, lorem eget pretium hendrerit, lacus enim bibendum nisl, quis pulvinar quam ex et dolor. Donec sed leo lobortis, eleifend leo ac, dignissim magna. Suspendisse mattis sapien tincidunt, gravida augue id, rhoncus tellus. Sed eu auctor lorem. Etiam id turpis urna. Donec at posuere nunc, id auctor orci. Nam sapien eros, egestas vitae risus nec, commodo consequat urna. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Praesent fringilla neque eros, tristique convallis felis laoreet non. Aliquam in nibh in libero lacinia faucibus a id justo. Interdum et malesuada fames ac ante ipsum primis in faucibus.', '3.jpg', 1, 1, '2017-02-20 12:40:49', '2017-02-20 12:40:49') ; 
INSERT INTO `webnews` VALUES (4, 'Nullam accumsan est vitae ante imperdiet, volutpat porttitor odio condimentum. Suspendisse condimentum eget purus non fermentum. ', 'Nullam accumsan est vitae ante imperdiet, volutpat porttitor odio condimentum. Suspendisse condimentum eget purus non fermentum. In elit nunc, blandit in augue at, volutpat tincidunt nibh. Donec vestibulum, lorem eget pretium hendrerit, lacus enim bibendum nisl, quis pulvinar quam ex et dolor. Donec sed leo lobortis, eleifend leo ac, dignissim magna. Suspendisse mattis sapien tincidunt, gravida augue id, rhoncus tellus. Sed eu auctor lorem. Etiam id turpis urna. Donec at posuere nunc, id auctor orci. Nam sapien eros, egestas vitae risus nec, commodo consequat urna. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Praesent fringilla neque eros, tristique convallis felis laoreet non. Aliquam in nibh in libero lacinia faucibus a id justo. Interdum et malesuada fames ac ante ipsum primis in faucibus.', '4.jpg', 1, 1, '2017-02-20 12:41:06', '2017-02-20 12:41:06') ; 
INSERT INTO `webnews` VALUES (5, 'Aaaliquam id dui pulvinar, mattis sem in, maximus elit. Cras convallis lobortis quam. Etiam tristique, est id blandit imperdiet, sapien nulla vestibulum ligula, ut rhoncus ligula libero a felis.', 'Aliquam id dui pulvinar, mattis sem in, maximus elit. Cras convallis lobortis quam. Etiam tristique, est id blandit imperdiet, sapien nulla vestibulum ligula, ut rhoncus ligula libero a felis. Morbi tincidunt felis sit amet urna pellentesque lacinia. Maecenas urna elit, posuere quis libero porttitor, placerat aliquet justo. In hac habitasse platea dictumst. Suspendisse elementum vel neque sed aliquet. Curabitur nec cursus mi. Proin id pretium magna, ac tempus sapien. Nam ornare vulputate gravida. Aenean ut tristique lacus. Donec suscipit, ex sed consectetur imperdiet, ex eros pellentesque massa, et scelerisque felis eros non elit. Nulla diam mi, iaculis nec ex quis, accumsan euismod augue.

Vestibulum a ornare est. Vivamus fermentum laoreet dui id tristique. Donec pulvinar tempor mi, ac cursus nibh tempor sit amet. Ut sagittis arcu enim, nec luctus quam vestibulum a. Proin non interdum metus. Vivamus ornare lorem nec justo consequat, in sagittis libero sodales. Donec ullamcorper tristique ligula non consectetur. Vivamus cursus nec lacus nec convallis. Pellentesque eu consectetur nibh. Donec volutpat sodales accumsan. Nullam commodo mattis semper. Donec auctor eu nisi in volutpat. Vivamus sit amet lorem mattis, condimentum augue eu, accumsan lorem. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Quisque lacinia efficitur massa at bibendum. Suspendisse iaculis elit ante.', '5.jpg', 1, 1, '2017-02-20 12:42:21', '2017-02-20 12:41:29') ; 
INSERT INTO `webnews` VALUES (6, 'Vestibulum a ornare est. Vivamus fermentum laoreet dui id tristique. Donec pulvinar tempor mi, ac cursus nibh tempor sit amet. Ut sagittis arcu enim, nec luctus quam vestibulum a.', 'Vestibulum a ornare est. Vivamus fermentum laoreet dui id tristique. Donec pulvinar tempor mi, ac cursus nibh tempor sit amet. Ut sagittis arcu enim, nec luctus quam vestibulum a. Proin non interdum metus. Vivamus ornare lorem nec justo consequat, in sagittis libero sodales. Donec ullamcorper tristique ligula non consectetur. Vivamus cursus nec lacus nec convallis. Pellentesque eu consectetur nibh. Donec volutpat sodales accumsan. Nullam commodo mattis semper. Donec auctor eu nisi in volutpat. Vivamus sit amet lorem mattis, condimentum augue eu, accumsan lorem. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Quisque lacinia efficitur massa at bibendum. Suspendisse iaculis elit ante.', '6.jpg', 1, 1, '2017-02-20 12:42:49', '2017-02-20 12:42:49') ; 
INSERT INTO `webnews` VALUES (7, 'Integer eu fermentum erat. Sed sollicitudin sollicitudin est, at molestie augue sagittis quis. Suspendisse pellentesque non lorem vitae vehicula. Donec pellentesque ligula vitae risus pulvinar dictum. ', 'Integer eu fermentum erat. Sed sollicitudin sollicitudin est, at molestie augue sagittis quis. Suspendisse pellentesque non lorem vitae vehicula. Donec pellentesque ligula vitae risus pulvinar dictum. Ut commodo mollis quam, quis tempus neque scelerisque at. Vivamus porta risus justo, sit amet luctus felis eleifend ut. Suspendisse id dui metus. Mauris varius quam ante, eget cursus arcu congue in. Quisque ut urna accumsan, efficitur purus vitae, varius libero. Etiam a velit odio. Duis malesuada purus luctus consequat rhoncus. Nulla dapibus neque et lacus fringilla, eu semper dolor tincidunt. In sagittis tortor et nisi sagittis finibus. Pellentesque iaculis ligula nec erat bibendum tincidunt.

Maecenas at tortor sem. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut cursus, enim ac varius commodo, tellus ligula cursus velit, quis sodales augue lorem id arcu. Etiam sit amet pellentesque ipsum. Pellentesque venenatis lorem et ligula euismod, nec commodo felis tristique. Proin libero quam, bibendum vitae mi sagittis, tempor elementum velit. Nulla convallis tempor nisi, semper molestie eros tempus vitae. Ut viverra ligula tempus lorem eleifend, at sagittis purus malesuada. Pellentesque vehicula tincidunt metus a porta.', '6_2.jpg', 1, 1, '2017-02-20 12:43:08', '2017-02-20 12:43:08') ;
#
# End of data contents of table webnews
# --------------------------------------------------------

# MySQL database backup
#
# Generated: Friday 3. March 2017 08:00 PHT
# Hostname: localhost
# Database: `alumni`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `admin`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `auditlog`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `feedbacks`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `graduates`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `users`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webaboutus`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webannouncements`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webbanner`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webcontactus`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webjobs`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webmenu`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webnews`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webslider`
# --------------------------------------------------------


#
# Delete any existing table `webslider`
#

DROP TABLE IF EXISTS `webslider`;


#
# Table structure of table `webslider`
#

CREATE TABLE `webslider` (
  `slider_id` int(11) NOT NULL AUTO_INCREMENT,
  `slider_image` varchar(255) NOT NULL,
  `slider_caption` text NOT NULL,
  `slider_title` varchar(255) NOT NULL,
  `slider_status` tinyint(1) NOT NULL DEFAULT '1',
  `slider_poster_id` int(11) NOT NULL,
  `slider_date_modified` datetime NOT NULL,
  `slider_date_added` datetime NOT NULL,
  PRIMARY KEY (`slider_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ;

#
# Data contents of table webslider (0 records)
#

#
# End of data contents of table webslider
# --------------------------------------------------------

# MySQL database backup
#
# Generated: Friday 3. March 2017 08:00 PHT
# Hostname: localhost
# Database: `alumni`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `admin`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `auditlog`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `feedbacks`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `graduates`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `users`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webaboutus`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webannouncements`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webbanner`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webcontactus`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webjobs`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webmenu`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webnews`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webslider`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `websubmenu`
# --------------------------------------------------------


#
# Delete any existing table `websubmenu`
#

DROP TABLE IF EXISTS `websubmenu`;


#
# Table structure of table `websubmenu`
#

CREATE TABLE `websubmenu` (
  `submenu_id` int(11) NOT NULL AUTO_INCREMENT,
  `submenu_menu_id` int(11) NOT NULL,
  `submenu_title` varchar(50) NOT NULL,
  `submenu_link` varchar(255) NOT NULL,
  `submenu_status` tinyint(1) NOT NULL DEFAULT '1',
  `submenu_position` tinyint(4) NOT NULL,
  `submenu_date_modified` datetime NOT NULL,
  `submenu_date_added` datetime NOT NULL,
  PRIMARY KEY (`submenu_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1 ;

#
# Data contents of table websubmenu (1 records)
#
 
INSERT INTO `websubmenu` VALUES (1, 1, 'dfddd', 'ddddd', 2, 0, '2017-02-20 13:35:23', '2017-02-20 13:35:15') ;
#
# End of data contents of table websubmenu
# --------------------------------------------------------

# MySQL database backup
#
# Generated: Friday 3. March 2017 08:01 PHT
# Hostname: localhost
# Database: `alumni`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `admin`
# --------------------------------------------------------


#
# Delete any existing table `admin`
#

DROP TABLE IF EXISTS `admin`;


#
# Table structure of table `admin`
#

CREATE TABLE `admin` (
  `admin_id` int(11) NOT NULL AUTO_INCREMENT,
  `admin_fname` varchar(50) NOT NULL,
  `admin_mname` varchar(50) NOT NULL,
  `admin_lname` varchar(50) NOT NULL,
  `admin_email` varchar(100) NOT NULL,
  `admin_username` varchar(50) NOT NULL,
  `admin_salt` varchar(50) NOT NULL,
  `admin_password` varchar(100) NOT NULL,
  `admin_level` tinyint(1) NOT NULL COMMENT '1=sysad; 2=moderator; 3=viewing;',
  `admin_status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '0=not active; 1=active; 2=disabled;',
  `admin_date_modified` datetime NOT NULL,
  `admin_date_added` datetime NOT NULL,
  PRIMARY KEY (`admin_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1 ;

#
# Data contents of table admin (1 records)
#
 
INSERT INTO `admin` VALUES (1, 'juan', 'santos', 'dela cruz', 'juan23@mail.com', 'admin', '³W÷þdaÂí±ÂùF®9ïÐ0Ÿ€‘ƒÈn·0¢Ã#üå¨', '3640daa0c1fc63a0be23f357f05202ab732697f6bd5bfb93ef00d947cc133461', 1, 1, '2017-02-08 00:00:00', '2017-02-08 00:00:00') ;
#
# End of data contents of table admin
# --------------------------------------------------------

# MySQL database backup
#
# Generated: Friday 3. March 2017 08:01 PHT
# Hostname: localhost
# Database: `alumni`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `admin`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `auditlog`
# --------------------------------------------------------


#
# Delete any existing table `auditlog`
#

DROP TABLE IF EXISTS `auditlog`;


#
# Table structure of table `auditlog`
#

CREATE TABLE `auditlog` (
  `audit_id` int(11) NOT NULL AUTO_INCREMENT,
  `audit_table_affected` varchar(100) NOT NULL,
  `audit_action` varchar(255) NOT NULL,
  `audit_admin_id` int(11) NOT NULL,
  `audit_datetime` datetime NOT NULL,
  PRIMARY KEY (`audit_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ;

#
# Data contents of table auditlog (0 records)
#

#
# End of data contents of table auditlog
# --------------------------------------------------------

# MySQL database backup
#
# Generated: Friday 3. March 2017 08:01 PHT
# Hostname: localhost
# Database: `alumni`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `admin`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `auditlog`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `feedbacks`
# --------------------------------------------------------


#
# Delete any existing table `feedbacks`
#

DROP TABLE IF EXISTS `feedbacks`;


#
# Table structure of table `feedbacks`
#

CREATE TABLE `feedbacks` (
  `fb_id` int(11) NOT NULL AUTO_INCREMENT,
  `fb_name` varchar(150) NOT NULL,
  `fb_email` varchar(150) NOT NULL,
  `fb_subject` varchar(500) NOT NULL,
  `fb_message` text NOT NULL,
  `fb_date_added` datetime NOT NULL,
  PRIMARY KEY (`fb_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1 ;

#
# Data contents of table feedbacks (1 records)
#
 
INSERT INTO `feedbacks` VALUES (1, 'sdfsdfs', 'dfssdf@asdasd.asd', 'asdasd', 'asdasdasdasd', '2017-02-20 15:18:19') ;
#
# End of data contents of table feedbacks
# --------------------------------------------------------

# MySQL database backup
#
# Generated: Friday 3. March 2017 08:01 PHT
# Hostname: localhost
# Database: `alumni`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `admin`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `auditlog`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `feedbacks`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `graduates`
# --------------------------------------------------------


#
# Delete any existing table `graduates`
#

DROP TABLE IF EXISTS `graduates`;


#
# Table structure of table `graduates`
#

CREATE TABLE `graduates` (
  `grad_id` int(11) NOT NULL AUTO_INCREMENT,
  `grad_fname` varchar(50) NOT NULL,
  `grad_mname` varchar(50) NOT NULL,
  `grad_lname` varchar(50) NOT NULL,
  `grad_gender` tinyint(1) NOT NULL COMMENT '1=male; 2=female',
  `grad_birthday` date NOT NULL,
  `grad_student_id` varchar(11) NOT NULL,
  `grad_course` varchar(100) NOT NULL,
  `grad_dept` varchar(100) NOT NULL,
  `grad_year_graduated` year(4) NOT NULL,
  `grad_so_number` varchar(50) NOT NULL,
  PRIMARY KEY (`grad_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ;

#
# Data contents of table graduates (0 records)
#

#
# End of data contents of table graduates
# --------------------------------------------------------

# MySQL database backup
#
# Generated: Friday 3. March 2017 08:01 PHT
# Hostname: localhost
# Database: `alumni`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `admin`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `auditlog`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `feedbacks`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `graduates`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `users`
# --------------------------------------------------------


#
# Delete any existing table `users`
#

DROP TABLE IF EXISTS `users`;


#
# Table structure of table `users`
#

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_grad_id` int(11) NOT NULL,
  `user_email` varchar(100) NOT NULL,
  `user_contact` varchar(50) NOT NULL,
  `user_address` varchar(255) NOT NULL,
  `user_username` varchar(50) NOT NULL,
  `user_salt` varchar(100) NOT NULL,
  `user_password` varchar(100) NOT NULL,
  `user_status` tinyint(1) NOT NULL DEFAULT '1',
  `user_employed` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0=not employed; 1=employed;',
  `user_company` varchar(155) NOT NULL,
  `user_position` varchar(100) NOT NULL,
  `user_job_level` varchar(100) NOT NULL,
  `user_date_modified` datetime NOT NULL,
  `user_date_added` datetime NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ;

#
# Data contents of table users (0 records)
#

#
# End of data contents of table users
# --------------------------------------------------------

# MySQL database backup
#
# Generated: Friday 3. March 2017 08:01 PHT
# Hostname: localhost
# Database: `alumni`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `admin`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `auditlog`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `feedbacks`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `graduates`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `users`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webaboutus`
# --------------------------------------------------------


#
# Delete any existing table `webaboutus`
#

DROP TABLE IF EXISTS `webaboutus`;


#
# Table structure of table `webaboutus`
#

CREATE TABLE `webaboutus` (
  `about_id` int(11) NOT NULL AUTO_INCREMENT,
  `about_mission` text NOT NULL,
  `about_vision` text NOT NULL,
  `about_history` text NOT NULL,
  `about_date_modified` datetime NOT NULL,
  `about_date_added` datetime NOT NULL,
  PRIMARY KEY (`about_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ;

#
# Data contents of table webaboutus (0 records)
#

#
# End of data contents of table webaboutus
# --------------------------------------------------------

# MySQL database backup
#
# Generated: Friday 3. March 2017 08:01 PHT
# Hostname: localhost
# Database: `alumni`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `admin`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `auditlog`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `feedbacks`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `graduates`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `users`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webaboutus`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webannouncements`
# --------------------------------------------------------


#
# Delete any existing table `webannouncements`
#

DROP TABLE IF EXISTS `webannouncements`;


#
# Table structure of table `webannouncements`
#

CREATE TABLE `webannouncements` (
  `announ_id` int(11) NOT NULL AUTO_INCREMENT,
  `announ_title` varchar(255) NOT NULL,
  `announ_description` text NOT NULL,
  `announ_status` tinyint(1) NOT NULL DEFAULT '1',
  `announ_poster_id` int(11) NOT NULL,
  `announ_date_modified` datetime NOT NULL,
  `announ_date_added` datetime NOT NULL,
  PRIMARY KEY (`announ_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1 ;

#
# Data contents of table webannouncements (7 records)
#
 
INSERT INTO `webannouncements` VALUES (1, 'Maecenas at tortor sem. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut cursus, enim ac varius commodo, tellus ligula cursus velit, quis sodales augue lorem id arcu. Etiam sit amet pellentesque ipsum.', 'Maecenas at tortor sem. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut cursus, enim ac varius commodo, tellus ligula cursus velit, quis sodales augue lorem id arcu. Etiam sit amet pellentesque ipsum. Pellentesque venenatis lorem et ligula euismod, nec commodo felis tristique. Proin libero quam, bibendum vitae mi sagittis, tempor elementum velit. Nulla convallis tempor nisi, semper molestie eros tempus vitae. Ut viverra ligula tempus lorem eleifend, at sagittis purus malesuada. Pellentesque vehicula tincidunt metus a porta.', 1, 1, '2017-02-20 12:43:49', '2017-02-20 12:43:49') ; 
INSERT INTO `webannouncements` VALUES (2, 'Pellentesque eu ultricies leo. Nulla ullamcorper sem mauris, sit amet congue nisi sollicitudin non. Sed venenatis euismod pretium. ', 'Pellentesque eu ultricies leo. Nulla ullamcorper sem mauris, sit amet congue nisi sollicitudin non. Sed venenatis euismod pretium. Vivamus sit amet erat vehicula, semper arcu ut, mattis purus. Nunc at semper sem, sit amet facilisis risus. Fusce interdum egestas finibus. Proin ac tempus nulla. Nullam id ipsum enim. Vivamus sollicitudin blandit pharetra. Donec dictum ligula nisi, non ornare diam venenatis a. In pharetra turpis id elit fermentum sodales. Integer euismod nisl sed facilisis laoreet. Aenean lobortis ullamcorper dapibus. Pellentesque volutpat laoreet hendrerit.

Suspendisse potenti. Donec sed laoreet ipsum. Donec non diam placerat, porta lectus eget, pulvinar quam. Nullam at nulla at dolor consequat dictum. Proin a scelerisque nisi. Ut rhoncus facilisis nibh feugiat tempor. Aliquam erat volutpat.', 1, 1, '2017-02-20 12:44:01', '2017-02-20 12:44:01') ; 
INSERT INTO `webannouncements` VALUES (3, 'Suspendisse potenti. Donec sed laoreet ipsum. Donec non diam placerat, porta lectus eget, pulvinar quam. Nullam at nulla at dolor consequat dictum.', 'Suspendisse potenti. Donec sed laoreet ipsum. Donec non diam placerat, porta lectus eget, pulvinar quam. Nullam at nulla at dolor consequat dictum. Proin a scelerisque nisi. Ut rhoncus facilisis nibh feugiat tempor. Aliquam erat volutpat.

Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Sed in nulla purus. Aliquam lacinia, eros vel volutpat mattis, purus massa sagittis erat, vitae ultrices nisi odio a libero. Praesent bibendum convallis porttitor. Curabitur augue elit, pretium at risus vitae, interdum porta lacus. Integer quis condimentum lectus, nec tempus sem. Maecenas eleifend dui tempor condimentum mollis. Vivamus ut lorem id ipsum sodales efficitur. Donec magna dolor, vulputate non ante vel, tincidunt rutrum nulla. Vivamus pulvinar felis eros, quis pellentesque quam suscipit non. Vestibulum neque orci, convallis sed enim sit amet, rutrum bibendum risus. Curabitur eu ultrices elit. Pellentesque lectus tellus, volutpat sit amet pharetra quis, gravida vitae lacus. Sed euismod enim ut mauris elementum, nec congue neque facilisis. Phasellus eu molestie nulla, dictum sodales nisl.', 1, 1, '2017-02-20 12:44:14', '2017-02-20 12:44:14') ; 
INSERT INTO `webannouncements` VALUES (4, 'Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos.', 'Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Sed in nulla purus. Aliquam lacinia, eros vel volutpat mattis, purus massa sagittis erat, vitae ultrices nisi odio a libero. Praesent bibendum convallis porttitor. Curabitur augue elit, pretium at risus vitae, interdum porta lacus. Integer quis condimentum lectus, nec tempus sem. Maecenas eleifend dui tempor condimentum mollis. Vivamus ut lorem id ipsum sodales efficitur. Donec magna dolor, vulputate non ante vel, tincidunt rutrum nulla. Vivamus pulvinar felis eros, quis pellentesque quam suscipit non. Vestibulum neque orci, convallis sed enim sit amet, rutrum bibendum risus. Curabitur eu ultrices elit. Pellentesque lectus tellus, volutpat sit amet pharetra quis, gravida vitae lacus. Sed euismod enim ut mauris elementum, nec congue neque facilisis. Phasellus eu molestie nulla, dictum sodales nisl.', 1, 1, '2017-02-20 12:44:29', '2017-02-20 12:44:29') ; 
INSERT INTO `webannouncements` VALUES (5, 'Nam neque mauris, consectetur in varius id, elementum vel dolor. Sed vitae massa quis magna fermentum convallis sed venenatis diam. ', 'Nam neque mauris, consectetur in varius id, elementum vel dolor. Sed vitae massa quis magna fermentum convallis sed venenatis diam. Curabitur facilisis, lorem a ornare convallis, neque ligula facilisis nulla, a ultricies odio diam a mi. Phasellus lobortis gravida ligula in vulputate. Duis pellentesque pulvinar viverra. Etiam id suscipit velit, vitae placerat tortor. Ut faucibus ante ipsum, quis ultrices nisi hendrerit vel. Sed euismod velit a neque scelerisque aliquet. Vestibulum dictum eget ante id aliquam.

Nunc rutrum, libero ac dignissim lobortis, odio lacus laoreet urna, non vulputate ex libero in odio. In quis hendrerit velit. Suspendisse cursus justo augue, ut tempus est facilisis non. Donec ac lectus ut felis bibendum malesuada blandit vitae nisi. Nulla facilisi. Praesent facilisis elementum sem a venenatis. Sed accumsan eros vel felis auctor vestibulum. Pellentesque vitae massa ac diam ullamcorper eleifend mattis at quam. Suspendisse non ante efficitur, congue diam ut, placerat dolor. Sed aliquam dolor nibh, a scelerisque tellus pharetra eu. Morbi convallis, erat viverra malesuada fermentum, felis leo tincidunt lacus, ut mollis sem arcu eu odio. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae;', 1, 1, '2017-02-20 12:44:43', '2017-02-20 12:44:43') ; 
INSERT INTO `webannouncements` VALUES (6, 'Nunc rutrum, libero ac dignissim lobortis, odio lacus laoreet urna, non vulputate ex libero in odio. In quis hendrerit velit.', 'Nunc rutrum, libero ac dignissim lobortis, odio lacus laoreet urna, non vulputate ex libero in odio. In quis hendrerit velit. Suspendisse cursus justo augue, ut tempus est facilisis non. Donec ac lectus ut felis bibendum malesuada blandit vitae nisi. Nulla facilisi. Praesent facilisis elementum sem a venenatis. Sed accumsan eros vel felis auctor vestibulum. Pellentesque vitae massa ac diam ullamcorper eleifend mattis at quam. Suspendisse non ante efficitur, congue diam ut, placerat dolor. Sed aliquam dolor nibh, a scelerisque tellus pharetra eu. Morbi convallis, erat viverra malesuada fermentum, felis leo tincidunt lacus, ut mollis sem arcu eu odio. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae;', 1, 1, '2017-02-20 12:44:55', '2017-02-20 12:44:55') ; 
INSERT INTO `webannouncements` VALUES (7, 'Nulla convallis nisl a ante facilisis suscipit. Morbi sit amet imperdiet tortor. Duis posuere gravida nisl, sit amet posuere tortor dictum blandit.', 'Nulla convallis nisl a ante facilisis suscipit. Morbi sit amet imperdiet tortor. Duis posuere gravida nisl, sit amet posuere tortor dictum blandit. Cras ultricies iaculis vulputate. Fusce non turpis porttitor, ornare diam at, cursus ante. Donec at velit magna. Nunc est leo, pretium at dolor a, commodo malesuada neque. Maecenas ultrices in ex ac laoreet. Cras accumsan mi vitae augue consequat, vitae scelerisque est fermentum. Donec vehicula risus ut libero aliquet ultricies. Nulla facilisi.

Integer tortor est, aliquet nec sapien sit amet, commodo consectetur arcu. Curabitur bibendum erat rutrum lorem semper, id blandit diam luctus. Sed suscipit est non risus viverra, in viverra quam hendrerit. Aliquam elit risus, vulputate vel nulla vulputate, consequat venenatis ex. Suspendisse potenti. Cras aliquet metus vitae turpis vestibulum viverra. Donec scelerisque dolor ultricies purus malesuada euismod. Cras eleifend porta elementum. Quisque malesuada leo dolor. Cras consequat leo quis imperdiet suscipit. Vestibulum laoreet risus a nunc ullamcorper viverra. Maecenas hendrerit ante id justo porta, ut ornare mi hendrerit.', 1, 1, '2017-02-20 12:47:17', '2017-02-20 12:45:10') ;
#
# End of data contents of table webannouncements
# --------------------------------------------------------

# MySQL database backup
#
# Generated: Friday 3. March 2017 08:01 PHT
# Hostname: localhost
# Database: `alumni`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `admin`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `auditlog`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `feedbacks`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `graduates`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `users`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webaboutus`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webannouncements`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webbanner`
# --------------------------------------------------------


#
# Delete any existing table `webbanner`
#

DROP TABLE IF EXISTS `webbanner`;


#
# Table structure of table `webbanner`
#

CREATE TABLE `webbanner` (
  `banner_id` int(11) NOT NULL AUTO_INCREMENT,
  `banner_image` varchar(255) NOT NULL,
  `banner_title` varchar(100) NOT NULL,
  `banner_status` tinyint(1) NOT NULL DEFAULT '1',
  `banner_poster_id` int(11) NOT NULL,
  `banner_date_modified` datetime NOT NULL,
  `banner_date_added` datetime NOT NULL,
  PRIMARY KEY (`banner_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1 ;

#
# Data contents of table webbanner (1 records)
#
 
INSERT INTO `webbanner` VALUES (1, 'raffle.jpg', 'CCA Alumni First Fund Raising Event', 1, 1, '2017-02-20 12:47:58', '2017-02-13 20:32:15') ;
#
# End of data contents of table webbanner
# --------------------------------------------------------

# MySQL database backup
#
# Generated: Friday 3. March 2017 08:01 PHT
# Hostname: localhost
# Database: `alumni`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `admin`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `auditlog`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `feedbacks`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `graduates`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `users`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webaboutus`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webannouncements`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webbanner`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webcontactus`
# --------------------------------------------------------


#
# Delete any existing table `webcontactus`
#

DROP TABLE IF EXISTS `webcontactus`;


#
# Table structure of table `webcontactus`
#

CREATE TABLE `webcontactus` (
  `contact_id` int(11) NOT NULL AUTO_INCREMENT,
  `contact_phone` varchar(30) NOT NULL,
  `contact_mobile` varchar(30) NOT NULL,
  `contact_email` varchar(100) NOT NULL,
  `contact_address` varchar(255) NOT NULL,
  `contact_fax` varchar(30) NOT NULL,
  `contact_date_modified` datetime NOT NULL,
  `contact_date_added` datetime NOT NULL,
  PRIMARY KEY (`contact_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ;

#
# Data contents of table webcontactus (0 records)
#

#
# End of data contents of table webcontactus
# --------------------------------------------------------

# MySQL database backup
#
# Generated: Friday 3. March 2017 08:01 PHT
# Hostname: localhost
# Database: `alumni`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `admin`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `auditlog`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `feedbacks`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `graduates`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `users`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webaboutus`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webannouncements`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webbanner`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webcontactus`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webjobs`
# --------------------------------------------------------


#
# Delete any existing table `webjobs`
#

DROP TABLE IF EXISTS `webjobs`;


#
# Table structure of table `webjobs`
#

CREATE TABLE `webjobs` (
  `job_id` int(11) NOT NULL AUTO_INCREMENT,
  `job_title` varchar(500) NOT NULL,
  `job_company` varchar(255) NOT NULL,
  `job_positions` varchar(500) NOT NULL,
  `job_vacancy` varchar(500) NOT NULL,
  `job_description` text NOT NULL,
  `job_poster_id` int(11) NOT NULL,
  `job_status` tinyint(1) NOT NULL DEFAULT '1',
  `job_date_modified` datetime NOT NULL,
  `job_date_added` datetime NOT NULL,
  PRIMARY KEY (`job_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1 ;

#
# Data contents of table webjobs (1 records)
#
 
INSERT INTO `webjobs` VALUES (1, 'Litigation Lawyer', 'Global Estate Resorts, Inc. (a subsidiary of Megaworld Corporation)', 'Litigation Lawyer', '5', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#039;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 1, 1, '2017-02-20 13:23:25', '2017-02-20 13:13:27') ;
#
# End of data contents of table webjobs
# --------------------------------------------------------

# MySQL database backup
#
# Generated: Friday 3. March 2017 08:01 PHT
# Hostname: localhost
# Database: `alumni`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `admin`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `auditlog`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `feedbacks`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `graduates`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `users`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webaboutus`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webannouncements`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webbanner`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webcontactus`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webjobs`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webmenu`
# --------------------------------------------------------


#
# Delete any existing table `webmenu`
#

DROP TABLE IF EXISTS `webmenu`;


#
# Table structure of table `webmenu`
#

CREATE TABLE `webmenu` (
  `menu_id` int(11) NOT NULL AUTO_INCREMENT,
  `menu_title` varchar(50) NOT NULL,
  `menu_link` varchar(255) NOT NULL,
  `menu_status` tinyint(1) NOT NULL DEFAULT '1',
  `menu_position` tinyint(4) NOT NULL,
  `menu_date_modified` datetime NOT NULL,
  `menu_date_added` datetime NOT NULL,
  PRIMARY KEY (`menu_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1 ;

#
# Data contents of table webmenu (5 records)
#
 
INSERT INTO `webmenu` VALUES (1, 'Home', 'index', 1, 1, '2017-02-20 13:35:09', '2017-02-20 13:35:09') ; 
INSERT INTO `webmenu` VALUES (2, 'News', 'news', 1, 2, '2017-02-17 11:02:00', '2017-02-17 11:02:00') ; 
INSERT INTO `webmenu` VALUES (3, 'Announcements', 'announcements', 1, 3, '2017-02-17 11:02:13', '2017-02-17 11:02:13') ; 
INSERT INTO `webmenu` VALUES (4, 'About Us', 'about-us', 1, 4, '2017-02-17 11:02:25', '2017-02-17 11:02:25') ; 
INSERT INTO `webmenu` VALUES (5, 'Contact Us', 'contact-us', 1, 5, '2017-02-17 11:02:36', '2017-02-17 11:02:36') ;
#
# End of data contents of table webmenu
# --------------------------------------------------------

# MySQL database backup
#
# Generated: Friday 3. March 2017 08:01 PHT
# Hostname: localhost
# Database: `alumni`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `admin`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `auditlog`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `feedbacks`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `graduates`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `users`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webaboutus`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webannouncements`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webbanner`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webcontactus`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webjobs`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webmenu`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webnews`
# --------------------------------------------------------


#
# Delete any existing table `webnews`
#

DROP TABLE IF EXISTS `webnews`;


#
# Table structure of table `webnews`
#

CREATE TABLE `webnews` (
  `news_id` int(11) NOT NULL AUTO_INCREMENT,
  `news_title` varchar(255) NOT NULL,
  `news_description` text NOT NULL,
  `news_image` varchar(500) NOT NULL,
  `news_status` tinyint(1) NOT NULL DEFAULT '1',
  `news_poster_id` int(11) NOT NULL,
  `news_date_modified` datetime NOT NULL,
  `news_date_added` datetime NOT NULL,
  PRIMARY KEY (`news_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1 ;

#
# Data contents of table webnews (7 records)
#
 
INSERT INTO `webnews` VALUES (1, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis feugiat quam velit, vitae ornare libero pellentesque ut.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis feugiat quam velit, vitae ornare libero pellentesque ut. Ut tempus augue sit amet ipsum elementum, eget faucibus erat molestie. Praesent in eros rutrum, ornare leo vitae, interdum nibh. Suspendisse consectetur eget justo non lacinia. In fermentum luctus condimentum. Morbi a libero molestie, facilisis mauris pellentesque, fermentum orci. Vivamus eget risus lacinia, scelerisque dui in, lobortis leo. Aliquam et ultricies dui. Nunc pharetra, enim eu efficitur molestie, metus sem mattis risus, tristique fringilla libero nulla et felis. Nam id sodales elit. Nullam elementum volutpat tortor, id feugiat erat placerat eu.

Suspendisse sit amet porta orci. Nam ultricies nisi ante. Nulla vel arcu sodales, varius nisi in, porttitor orci. Sed viverra felis eget lacus faucibus hendrerit. Cras erat turpis, faucibus id porta nec, mattis vel velit. Maecenas non magna sit amet velit pretium consectetur. Proin id nulla dictum, euismod purus eget, malesuada augue. Praesent eu sapien risus. Curabitur id nisi neque.', '1.jpg', 1, 1, '2017-02-20 12:38:37', '2017-02-20 12:38:37') ; 
INSERT INTO `webnews` VALUES (2, 'Suspendisse sit amet porta orci. Nam ultricies nisi ante. Nulla vel arcu sodales, varius nisi in, porttitor orci. Sed viverra felis eget lacus faucibus hendrerit.', 'Suspendisse sit amet porta orci. Nam ultricies nisi ante. Nulla vel arcu sodales, varius nisi in, porttitor orci. Sed viverra felis eget lacus faucibus hendrerit. Cras erat turpis, faucibus id porta nec, mattis vel velit. Maecenas non magna sit amet velit pretium consectetur. Proin id nulla dictum, euismod purus eget, malesuada augue. Praesent eu sapien risus. Curabitur id nisi neque.

Sed convallis commodo quam ut scelerisque. Fusce non pharetra lectus. Maecenas euismod tincidunt orci ac efficitur. Sed lectus odio, imperdiet nec tincidunt a, varius eget metus. Fusce ullamcorper tempor aliquet. Sed tempus efficitur sapien, in tempor metus aliquam non. Ut dapibus risus sit amet nisi scelerisque, sed faucibus tellus feugiat. Proin facilisis erat magna, eu molestie mi venenatis id. Praesent eleifend ante eget massa dignissim, nec vulputate orci suscipit.', '2.jpg', 1, 1, '2017-02-20 12:40:27', '2017-02-20 12:40:27') ; 
INSERT INTO `webnews` VALUES (3, 'Sed convallis commodo quam ut scelerisque. Fusce non pharetra lectus. Maecenas euismod tincidunt orci ac efficitur.', 'Sed convallis commodo quam ut scelerisque. Fusce non pharetra lectus. Maecenas euismod tincidunt orci ac efficitur. Sed lectus odio, imperdiet nec tincidunt a, varius eget metus. Fusce ullamcorper tempor aliquet. Sed tempus efficitur sapien, in tempor metus aliquam non. Ut dapibus risus sit amet nisi scelerisque, sed faucibus tellus feugiat. Proin facilisis erat magna, eu molestie mi venenatis id. Praesent eleifend ante eget massa dignissim, nec vulputate orci suscipit.

Nullam accumsan est vitae ante imperdiet, volutpat porttitor odio condimentum. Suspendisse condimentum eget purus non fermentum. In elit nunc, blandit in augue at, volutpat tincidunt nibh. Donec vestibulum, lorem eget pretium hendrerit, lacus enim bibendum nisl, quis pulvinar quam ex et dolor. Donec sed leo lobortis, eleifend leo ac, dignissim magna. Suspendisse mattis sapien tincidunt, gravida augue id, rhoncus tellus. Sed eu auctor lorem. Etiam id turpis urna. Donec at posuere nunc, id auctor orci. Nam sapien eros, egestas vitae risus nec, commodo consequat urna. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Praesent fringilla neque eros, tristique convallis felis laoreet non. Aliquam in nibh in libero lacinia faucibus a id justo. Interdum et malesuada fames ac ante ipsum primis in faucibus.', '3.jpg', 1, 1, '2017-02-20 12:40:49', '2017-02-20 12:40:49') ; 
INSERT INTO `webnews` VALUES (4, 'Nullam accumsan est vitae ante imperdiet, volutpat porttitor odio condimentum. Suspendisse condimentum eget purus non fermentum. ', 'Nullam accumsan est vitae ante imperdiet, volutpat porttitor odio condimentum. Suspendisse condimentum eget purus non fermentum. In elit nunc, blandit in augue at, volutpat tincidunt nibh. Donec vestibulum, lorem eget pretium hendrerit, lacus enim bibendum nisl, quis pulvinar quam ex et dolor. Donec sed leo lobortis, eleifend leo ac, dignissim magna. Suspendisse mattis sapien tincidunt, gravida augue id, rhoncus tellus. Sed eu auctor lorem. Etiam id turpis urna. Donec at posuere nunc, id auctor orci. Nam sapien eros, egestas vitae risus nec, commodo consequat urna. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Praesent fringilla neque eros, tristique convallis felis laoreet non. Aliquam in nibh in libero lacinia faucibus a id justo. Interdum et malesuada fames ac ante ipsum primis in faucibus.', '4.jpg', 1, 1, '2017-02-20 12:41:06', '2017-02-20 12:41:06') ; 
INSERT INTO `webnews` VALUES (5, 'Aaaliquam id dui pulvinar, mattis sem in, maximus elit. Cras convallis lobortis quam. Etiam tristique, est id blandit imperdiet, sapien nulla vestibulum ligula, ut rhoncus ligula libero a felis.', 'Aliquam id dui pulvinar, mattis sem in, maximus elit. Cras convallis lobortis quam. Etiam tristique, est id blandit imperdiet, sapien nulla vestibulum ligula, ut rhoncus ligula libero a felis. Morbi tincidunt felis sit amet urna pellentesque lacinia. Maecenas urna elit, posuere quis libero porttitor, placerat aliquet justo. In hac habitasse platea dictumst. Suspendisse elementum vel neque sed aliquet. Curabitur nec cursus mi. Proin id pretium magna, ac tempus sapien. Nam ornare vulputate gravida. Aenean ut tristique lacus. Donec suscipit, ex sed consectetur imperdiet, ex eros pellentesque massa, et scelerisque felis eros non elit. Nulla diam mi, iaculis nec ex quis, accumsan euismod augue.

Vestibulum a ornare est. Vivamus fermentum laoreet dui id tristique. Donec pulvinar tempor mi, ac cursus nibh tempor sit amet. Ut sagittis arcu enim, nec luctus quam vestibulum a. Proin non interdum metus. Vivamus ornare lorem nec justo consequat, in sagittis libero sodales. Donec ullamcorper tristique ligula non consectetur. Vivamus cursus nec lacus nec convallis. Pellentesque eu consectetur nibh. Donec volutpat sodales accumsan. Nullam commodo mattis semper. Donec auctor eu nisi in volutpat. Vivamus sit amet lorem mattis, condimentum augue eu, accumsan lorem. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Quisque lacinia efficitur massa at bibendum. Suspendisse iaculis elit ante.', '5.jpg', 1, 1, '2017-02-20 12:42:21', '2017-02-20 12:41:29') ; 
INSERT INTO `webnews` VALUES (6, 'Vestibulum a ornare est. Vivamus fermentum laoreet dui id tristique. Donec pulvinar tempor mi, ac cursus nibh tempor sit amet. Ut sagittis arcu enim, nec luctus quam vestibulum a.', 'Vestibulum a ornare est. Vivamus fermentum laoreet dui id tristique. Donec pulvinar tempor mi, ac cursus nibh tempor sit amet. Ut sagittis arcu enim, nec luctus quam vestibulum a. Proin non interdum metus. Vivamus ornare lorem nec justo consequat, in sagittis libero sodales. Donec ullamcorper tristique ligula non consectetur. Vivamus cursus nec lacus nec convallis. Pellentesque eu consectetur nibh. Donec volutpat sodales accumsan. Nullam commodo mattis semper. Donec auctor eu nisi in volutpat. Vivamus sit amet lorem mattis, condimentum augue eu, accumsan lorem. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Quisque lacinia efficitur massa at bibendum. Suspendisse iaculis elit ante.', '6.jpg', 1, 1, '2017-02-20 12:42:49', '2017-02-20 12:42:49') ; 
INSERT INTO `webnews` VALUES (7, 'Integer eu fermentum erat. Sed sollicitudin sollicitudin est, at molestie augue sagittis quis. Suspendisse pellentesque non lorem vitae vehicula. Donec pellentesque ligula vitae risus pulvinar dictum. ', 'Integer eu fermentum erat. Sed sollicitudin sollicitudin est, at molestie augue sagittis quis. Suspendisse pellentesque non lorem vitae vehicula. Donec pellentesque ligula vitae risus pulvinar dictum. Ut commodo mollis quam, quis tempus neque scelerisque at. Vivamus porta risus justo, sit amet luctus felis eleifend ut. Suspendisse id dui metus. Mauris varius quam ante, eget cursus arcu congue in. Quisque ut urna accumsan, efficitur purus vitae, varius libero. Etiam a velit odio. Duis malesuada purus luctus consequat rhoncus. Nulla dapibus neque et lacus fringilla, eu semper dolor tincidunt. In sagittis tortor et nisi sagittis finibus. Pellentesque iaculis ligula nec erat bibendum tincidunt.

Maecenas at tortor sem. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut cursus, enim ac varius commodo, tellus ligula cursus velit, quis sodales augue lorem id arcu. Etiam sit amet pellentesque ipsum. Pellentesque venenatis lorem et ligula euismod, nec commodo felis tristique. Proin libero quam, bibendum vitae mi sagittis, tempor elementum velit. Nulla convallis tempor nisi, semper molestie eros tempus vitae. Ut viverra ligula tempus lorem eleifend, at sagittis purus malesuada. Pellentesque vehicula tincidunt metus a porta.', '6_2.jpg', 1, 1, '2017-02-20 12:43:08', '2017-02-20 12:43:08') ;
#
# End of data contents of table webnews
# --------------------------------------------------------

# MySQL database backup
#
# Generated: Friday 3. March 2017 08:01 PHT
# Hostname: localhost
# Database: `alumni`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `admin`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `auditlog`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `feedbacks`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `graduates`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `users`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webaboutus`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webannouncements`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webbanner`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webcontactus`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webjobs`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webmenu`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webnews`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webslider`
# --------------------------------------------------------


#
# Delete any existing table `webslider`
#

DROP TABLE IF EXISTS `webslider`;


#
# Table structure of table `webslider`
#

CREATE TABLE `webslider` (
  `slider_id` int(11) NOT NULL AUTO_INCREMENT,
  `slider_image` varchar(255) NOT NULL,
  `slider_caption` text NOT NULL,
  `slider_title` varchar(255) NOT NULL,
  `slider_status` tinyint(1) NOT NULL DEFAULT '1',
  `slider_poster_id` int(11) NOT NULL,
  `slider_date_modified` datetime NOT NULL,
  `slider_date_added` datetime NOT NULL,
  PRIMARY KEY (`slider_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ;

#
# Data contents of table webslider (0 records)
#

#
# End of data contents of table webslider
# --------------------------------------------------------

# MySQL database backup
#
# Generated: Friday 3. March 2017 08:01 PHT
# Hostname: localhost
# Database: `alumni`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `admin`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `auditlog`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `feedbacks`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `graduates`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `users`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webaboutus`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webannouncements`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webbanner`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webcontactus`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webjobs`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webmenu`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webnews`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webslider`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `websubmenu`
# --------------------------------------------------------


#
# Delete any existing table `websubmenu`
#

DROP TABLE IF EXISTS `websubmenu`;


#
# Table structure of table `websubmenu`
#

CREATE TABLE `websubmenu` (
  `submenu_id` int(11) NOT NULL AUTO_INCREMENT,
  `submenu_menu_id` int(11) NOT NULL,
  `submenu_title` varchar(50) NOT NULL,
  `submenu_link` varchar(255) NOT NULL,
  `submenu_status` tinyint(1) NOT NULL DEFAULT '1',
  `submenu_position` tinyint(4) NOT NULL,
  `submenu_date_modified` datetime NOT NULL,
  `submenu_date_added` datetime NOT NULL,
  PRIMARY KEY (`submenu_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1 ;

#
# Data contents of table websubmenu (1 records)
#
 
INSERT INTO `websubmenu` VALUES (1, 1, 'dfddd', 'ddddd', 2, 0, '2017-02-20 13:35:23', '2017-02-20 13:35:15') ;
#
# End of data contents of table websubmenu
# --------------------------------------------------------

# MySQL database backup
#
# Generated: Friday 3. March 2017 08:02 PHT
# Hostname: localhost
# Database: `alumni`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `admin`
# --------------------------------------------------------


#
# Delete any existing table `admin`
#

DROP TABLE IF EXISTS `admin`;


#
# Table structure of table `admin`
#

CREATE TABLE `admin` (
  `admin_id` int(11) NOT NULL AUTO_INCREMENT,
  `admin_fname` varchar(50) NOT NULL,
  `admin_mname` varchar(50) NOT NULL,
  `admin_lname` varchar(50) NOT NULL,
  `admin_email` varchar(100) NOT NULL,
  `admin_username` varchar(50) NOT NULL,
  `admin_salt` varchar(50) NOT NULL,
  `admin_password` varchar(100) NOT NULL,
  `admin_level` tinyint(1) NOT NULL COMMENT '1=sysad; 2=moderator; 3=viewing;',
  `admin_status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '0=not active; 1=active; 2=disabled;',
  `admin_date_modified` datetime NOT NULL,
  `admin_date_added` datetime NOT NULL,
  PRIMARY KEY (`admin_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1 ;

#
# Data contents of table admin (1 records)
#
 
INSERT INTO `admin` VALUES (1, 'juan', 'santos', 'dela cruz', 'juan23@mail.com', 'admin', '³W÷þdaÂí±ÂùF®9ïÐ0Ÿ€‘ƒÈn·0¢Ã#üå¨', '3640daa0c1fc63a0be23f357f05202ab732697f6bd5bfb93ef00d947cc133461', 1, 1, '2017-02-08 00:00:00', '2017-02-08 00:00:00') ;
#
# End of data contents of table admin
# --------------------------------------------------------

# MySQL database backup
#
# Generated: Friday 3. March 2017 08:02 PHT
# Hostname: localhost
# Database: `alumni`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `admin`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `auditlog`
# --------------------------------------------------------


#
# Delete any existing table `auditlog`
#

DROP TABLE IF EXISTS `auditlog`;


#
# Table structure of table `auditlog`
#

CREATE TABLE `auditlog` (
  `audit_id` int(11) NOT NULL AUTO_INCREMENT,
  `audit_table_affected` varchar(100) NOT NULL,
  `audit_action` varchar(255) NOT NULL,
  `audit_admin_id` int(11) NOT NULL,
  `audit_datetime` datetime NOT NULL,
  PRIMARY KEY (`audit_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ;

#
# Data contents of table auditlog (0 records)
#

#
# End of data contents of table auditlog
# --------------------------------------------------------

# MySQL database backup
#
# Generated: Friday 3. March 2017 08:02 PHT
# Hostname: localhost
# Database: `alumni`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `admin`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `auditlog`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `feedbacks`
# --------------------------------------------------------


#
# Delete any existing table `feedbacks`
#

DROP TABLE IF EXISTS `feedbacks`;


#
# Table structure of table `feedbacks`
#

CREATE TABLE `feedbacks` (
  `fb_id` int(11) NOT NULL AUTO_INCREMENT,
  `fb_name` varchar(150) NOT NULL,
  `fb_email` varchar(150) NOT NULL,
  `fb_subject` varchar(500) NOT NULL,
  `fb_message` text NOT NULL,
  `fb_date_added` datetime NOT NULL,
  PRIMARY KEY (`fb_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1 ;

#
# Data contents of table feedbacks (1 records)
#
 
INSERT INTO `feedbacks` VALUES (1, 'sdfsdfs', 'dfssdf@asdasd.asd', 'asdasd', 'asdasdasdasd', '2017-02-20 15:18:19') ;
#
# End of data contents of table feedbacks
# --------------------------------------------------------

# MySQL database backup
#
# Generated: Friday 3. March 2017 08:02 PHT
# Hostname: localhost
# Database: `alumni`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `admin`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `auditlog`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `feedbacks`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `graduates`
# --------------------------------------------------------


#
# Delete any existing table `graduates`
#

DROP TABLE IF EXISTS `graduates`;


#
# Table structure of table `graduates`
#

CREATE TABLE `graduates` (
  `grad_id` int(11) NOT NULL AUTO_INCREMENT,
  `grad_fname` varchar(50) NOT NULL,
  `grad_mname` varchar(50) NOT NULL,
  `grad_lname` varchar(50) NOT NULL,
  `grad_gender` tinyint(1) NOT NULL COMMENT '1=male; 2=female',
  `grad_birthday` date NOT NULL,
  `grad_student_id` varchar(11) NOT NULL,
  `grad_course` varchar(100) NOT NULL,
  `grad_dept` varchar(100) NOT NULL,
  `grad_year_graduated` year(4) NOT NULL,
  `grad_so_number` varchar(50) NOT NULL,
  PRIMARY KEY (`grad_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ;

#
# Data contents of table graduates (0 records)
#

#
# End of data contents of table graduates
# --------------------------------------------------------

# MySQL database backup
#
# Generated: Friday 3. March 2017 08:02 PHT
# Hostname: localhost
# Database: `alumni`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `admin`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `auditlog`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `feedbacks`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `graduates`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `users`
# --------------------------------------------------------


#
# Delete any existing table `users`
#

DROP TABLE IF EXISTS `users`;


#
# Table structure of table `users`
#

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_grad_id` int(11) NOT NULL,
  `user_email` varchar(100) NOT NULL,
  `user_contact` varchar(50) NOT NULL,
  `user_address` varchar(255) NOT NULL,
  `user_username` varchar(50) NOT NULL,
  `user_salt` varchar(100) NOT NULL,
  `user_password` varchar(100) NOT NULL,
  `user_status` tinyint(1) NOT NULL DEFAULT '1',
  `user_employed` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0=not employed; 1=employed;',
  `user_company` varchar(155) NOT NULL,
  `user_position` varchar(100) NOT NULL,
  `user_job_level` varchar(100) NOT NULL,
  `user_date_modified` datetime NOT NULL,
  `user_date_added` datetime NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ;

#
# Data contents of table users (0 records)
#

#
# End of data contents of table users
# --------------------------------------------------------

# MySQL database backup
#
# Generated: Friday 3. March 2017 08:02 PHT
# Hostname: localhost
# Database: `alumni`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `admin`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `auditlog`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `feedbacks`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `graduates`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `users`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webaboutus`
# --------------------------------------------------------


#
# Delete any existing table `webaboutus`
#

DROP TABLE IF EXISTS `webaboutus`;


#
# Table structure of table `webaboutus`
#

CREATE TABLE `webaboutus` (
  `about_id` int(11) NOT NULL AUTO_INCREMENT,
  `about_mission` text NOT NULL,
  `about_vision` text NOT NULL,
  `about_history` text NOT NULL,
  `about_date_modified` datetime NOT NULL,
  `about_date_added` datetime NOT NULL,
  PRIMARY KEY (`about_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ;

#
# Data contents of table webaboutus (0 records)
#

#
# End of data contents of table webaboutus
# --------------------------------------------------------

# MySQL database backup
#
# Generated: Friday 3. March 2017 08:02 PHT
# Hostname: localhost
# Database: `alumni`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `admin`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `auditlog`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `feedbacks`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `graduates`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `users`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webaboutus`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webannouncements`
# --------------------------------------------------------


#
# Delete any existing table `webannouncements`
#

DROP TABLE IF EXISTS `webannouncements`;


#
# Table structure of table `webannouncements`
#

CREATE TABLE `webannouncements` (
  `announ_id` int(11) NOT NULL AUTO_INCREMENT,
  `announ_title` varchar(255) NOT NULL,
  `announ_description` text NOT NULL,
  `announ_status` tinyint(1) NOT NULL DEFAULT '1',
  `announ_poster_id` int(11) NOT NULL,
  `announ_date_modified` datetime NOT NULL,
  `announ_date_added` datetime NOT NULL,
  PRIMARY KEY (`announ_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1 ;

#
# Data contents of table webannouncements (7 records)
#
 
INSERT INTO `webannouncements` VALUES (1, 'Maecenas at tortor sem. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut cursus, enim ac varius commodo, tellus ligula cursus velit, quis sodales augue lorem id arcu. Etiam sit amet pellentesque ipsum.', 'Maecenas at tortor sem. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut cursus, enim ac varius commodo, tellus ligula cursus velit, quis sodales augue lorem id arcu. Etiam sit amet pellentesque ipsum. Pellentesque venenatis lorem et ligula euismod, nec commodo felis tristique. Proin libero quam, bibendum vitae mi sagittis, tempor elementum velit. Nulla convallis tempor nisi, semper molestie eros tempus vitae. Ut viverra ligula tempus lorem eleifend, at sagittis purus malesuada. Pellentesque vehicula tincidunt metus a porta.', 1, 1, '2017-02-20 12:43:49', '2017-02-20 12:43:49') ; 
INSERT INTO `webannouncements` VALUES (2, 'Pellentesque eu ultricies leo. Nulla ullamcorper sem mauris, sit amet congue nisi sollicitudin non. Sed venenatis euismod pretium. ', 'Pellentesque eu ultricies leo. Nulla ullamcorper sem mauris, sit amet congue nisi sollicitudin non. Sed venenatis euismod pretium. Vivamus sit amet erat vehicula, semper arcu ut, mattis purus. Nunc at semper sem, sit amet facilisis risus. Fusce interdum egestas finibus. Proin ac tempus nulla. Nullam id ipsum enim. Vivamus sollicitudin blandit pharetra. Donec dictum ligula nisi, non ornare diam venenatis a. In pharetra turpis id elit fermentum sodales. Integer euismod nisl sed facilisis laoreet. Aenean lobortis ullamcorper dapibus. Pellentesque volutpat laoreet hendrerit.

Suspendisse potenti. Donec sed laoreet ipsum. Donec non diam placerat, porta lectus eget, pulvinar quam. Nullam at nulla at dolor consequat dictum. Proin a scelerisque nisi. Ut rhoncus facilisis nibh feugiat tempor. Aliquam erat volutpat.', 1, 1, '2017-02-20 12:44:01', '2017-02-20 12:44:01') ; 
INSERT INTO `webannouncements` VALUES (3, 'Suspendisse potenti. Donec sed laoreet ipsum. Donec non diam placerat, porta lectus eget, pulvinar quam. Nullam at nulla at dolor consequat dictum.', 'Suspendisse potenti. Donec sed laoreet ipsum. Donec non diam placerat, porta lectus eget, pulvinar quam. Nullam at nulla at dolor consequat dictum. Proin a scelerisque nisi. Ut rhoncus facilisis nibh feugiat tempor. Aliquam erat volutpat.

Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Sed in nulla purus. Aliquam lacinia, eros vel volutpat mattis, purus massa sagittis erat, vitae ultrices nisi odio a libero. Praesent bibendum convallis porttitor. Curabitur augue elit, pretium at risus vitae, interdum porta lacus. Integer quis condimentum lectus, nec tempus sem. Maecenas eleifend dui tempor condimentum mollis. Vivamus ut lorem id ipsum sodales efficitur. Donec magna dolor, vulputate non ante vel, tincidunt rutrum nulla. Vivamus pulvinar felis eros, quis pellentesque quam suscipit non. Vestibulum neque orci, convallis sed enim sit amet, rutrum bibendum risus. Curabitur eu ultrices elit. Pellentesque lectus tellus, volutpat sit amet pharetra quis, gravida vitae lacus. Sed euismod enim ut mauris elementum, nec congue neque facilisis. Phasellus eu molestie nulla, dictum sodales nisl.', 1, 1, '2017-02-20 12:44:14', '2017-02-20 12:44:14') ; 
INSERT INTO `webannouncements` VALUES (4, 'Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos.', 'Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Sed in nulla purus. Aliquam lacinia, eros vel volutpat mattis, purus massa sagittis erat, vitae ultrices nisi odio a libero. Praesent bibendum convallis porttitor. Curabitur augue elit, pretium at risus vitae, interdum porta lacus. Integer quis condimentum lectus, nec tempus sem. Maecenas eleifend dui tempor condimentum mollis. Vivamus ut lorem id ipsum sodales efficitur. Donec magna dolor, vulputate non ante vel, tincidunt rutrum nulla. Vivamus pulvinar felis eros, quis pellentesque quam suscipit non. Vestibulum neque orci, convallis sed enim sit amet, rutrum bibendum risus. Curabitur eu ultrices elit. Pellentesque lectus tellus, volutpat sit amet pharetra quis, gravida vitae lacus. Sed euismod enim ut mauris elementum, nec congue neque facilisis. Phasellus eu molestie nulla, dictum sodales nisl.', 1, 1, '2017-02-20 12:44:29', '2017-02-20 12:44:29') ; 
INSERT INTO `webannouncements` VALUES (5, 'Nam neque mauris, consectetur in varius id, elementum vel dolor. Sed vitae massa quis magna fermentum convallis sed venenatis diam. ', 'Nam neque mauris, consectetur in varius id, elementum vel dolor. Sed vitae massa quis magna fermentum convallis sed venenatis diam. Curabitur facilisis, lorem a ornare convallis, neque ligula facilisis nulla, a ultricies odio diam a mi. Phasellus lobortis gravida ligula in vulputate. Duis pellentesque pulvinar viverra. Etiam id suscipit velit, vitae placerat tortor. Ut faucibus ante ipsum, quis ultrices nisi hendrerit vel. Sed euismod velit a neque scelerisque aliquet. Vestibulum dictum eget ante id aliquam.

Nunc rutrum, libero ac dignissim lobortis, odio lacus laoreet urna, non vulputate ex libero in odio. In quis hendrerit velit. Suspendisse cursus justo augue, ut tempus est facilisis non. Donec ac lectus ut felis bibendum malesuada blandit vitae nisi. Nulla facilisi. Praesent facilisis elementum sem a venenatis. Sed accumsan eros vel felis auctor vestibulum. Pellentesque vitae massa ac diam ullamcorper eleifend mattis at quam. Suspendisse non ante efficitur, congue diam ut, placerat dolor. Sed aliquam dolor nibh, a scelerisque tellus pharetra eu. Morbi convallis, erat viverra malesuada fermentum, felis leo tincidunt lacus, ut mollis sem arcu eu odio. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae;', 1, 1, '2017-02-20 12:44:43', '2017-02-20 12:44:43') ; 
INSERT INTO `webannouncements` VALUES (6, 'Nunc rutrum, libero ac dignissim lobortis, odio lacus laoreet urna, non vulputate ex libero in odio. In quis hendrerit velit.', 'Nunc rutrum, libero ac dignissim lobortis, odio lacus laoreet urna, non vulputate ex libero in odio. In quis hendrerit velit. Suspendisse cursus justo augue, ut tempus est facilisis non. Donec ac lectus ut felis bibendum malesuada blandit vitae nisi. Nulla facilisi. Praesent facilisis elementum sem a venenatis. Sed accumsan eros vel felis auctor vestibulum. Pellentesque vitae massa ac diam ullamcorper eleifend mattis at quam. Suspendisse non ante efficitur, congue diam ut, placerat dolor. Sed aliquam dolor nibh, a scelerisque tellus pharetra eu. Morbi convallis, erat viverra malesuada fermentum, felis leo tincidunt lacus, ut mollis sem arcu eu odio. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae;', 1, 1, '2017-02-20 12:44:55', '2017-02-20 12:44:55') ; 
INSERT INTO `webannouncements` VALUES (7, 'Nulla convallis nisl a ante facilisis suscipit. Morbi sit amet imperdiet tortor. Duis posuere gravida nisl, sit amet posuere tortor dictum blandit.', 'Nulla convallis nisl a ante facilisis suscipit. Morbi sit amet imperdiet tortor. Duis posuere gravida nisl, sit amet posuere tortor dictum blandit. Cras ultricies iaculis vulputate. Fusce non turpis porttitor, ornare diam at, cursus ante. Donec at velit magna. Nunc est leo, pretium at dolor a, commodo malesuada neque. Maecenas ultrices in ex ac laoreet. Cras accumsan mi vitae augue consequat, vitae scelerisque est fermentum. Donec vehicula risus ut libero aliquet ultricies. Nulla facilisi.

Integer tortor est, aliquet nec sapien sit amet, commodo consectetur arcu. Curabitur bibendum erat rutrum lorem semper, id blandit diam luctus. Sed suscipit est non risus viverra, in viverra quam hendrerit. Aliquam elit risus, vulputate vel nulla vulputate, consequat venenatis ex. Suspendisse potenti. Cras aliquet metus vitae turpis vestibulum viverra. Donec scelerisque dolor ultricies purus malesuada euismod. Cras eleifend porta elementum. Quisque malesuada leo dolor. Cras consequat leo quis imperdiet suscipit. Vestibulum laoreet risus a nunc ullamcorper viverra. Maecenas hendrerit ante id justo porta, ut ornare mi hendrerit.', 1, 1, '2017-02-20 12:47:17', '2017-02-20 12:45:10') ;
#
# End of data contents of table webannouncements
# --------------------------------------------------------

# MySQL database backup
#
# Generated: Friday 3. March 2017 08:02 PHT
# Hostname: localhost
# Database: `alumni`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `admin`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `auditlog`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `feedbacks`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `graduates`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `users`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webaboutus`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webannouncements`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webbanner`
# --------------------------------------------------------


#
# Delete any existing table `webbanner`
#

DROP TABLE IF EXISTS `webbanner`;


#
# Table structure of table `webbanner`
#

CREATE TABLE `webbanner` (
  `banner_id` int(11) NOT NULL AUTO_INCREMENT,
  `banner_image` varchar(255) NOT NULL,
  `banner_title` varchar(100) NOT NULL,
  `banner_status` tinyint(1) NOT NULL DEFAULT '1',
  `banner_poster_id` int(11) NOT NULL,
  `banner_date_modified` datetime NOT NULL,
  `banner_date_added` datetime NOT NULL,
  PRIMARY KEY (`banner_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1 ;

#
# Data contents of table webbanner (1 records)
#
 
INSERT INTO `webbanner` VALUES (1, 'raffle.jpg', 'CCA Alumni First Fund Raising Event', 1, 1, '2017-02-20 12:47:58', '2017-02-13 20:32:15') ;
#
# End of data contents of table webbanner
# --------------------------------------------------------

# MySQL database backup
#
# Generated: Friday 3. March 2017 08:02 PHT
# Hostname: localhost
# Database: `alumni`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `admin`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `auditlog`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `feedbacks`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `graduates`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `users`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webaboutus`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webannouncements`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webbanner`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webcontactus`
# --------------------------------------------------------


#
# Delete any existing table `webcontactus`
#

DROP TABLE IF EXISTS `webcontactus`;


#
# Table structure of table `webcontactus`
#

CREATE TABLE `webcontactus` (
  `contact_id` int(11) NOT NULL AUTO_INCREMENT,
  `contact_phone` varchar(30) NOT NULL,
  `contact_mobile` varchar(30) NOT NULL,
  `contact_email` varchar(100) NOT NULL,
  `contact_address` varchar(255) NOT NULL,
  `contact_fax` varchar(30) NOT NULL,
  `contact_date_modified` datetime NOT NULL,
  `contact_date_added` datetime NOT NULL,
  PRIMARY KEY (`contact_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ;

#
# Data contents of table webcontactus (0 records)
#

#
# End of data contents of table webcontactus
# --------------------------------------------------------

# MySQL database backup
#
# Generated: Friday 3. March 2017 08:02 PHT
# Hostname: localhost
# Database: `alumni`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `admin`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `auditlog`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `feedbacks`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `graduates`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `users`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webaboutus`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webannouncements`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webbanner`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webcontactus`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webjobs`
# --------------------------------------------------------


#
# Delete any existing table `webjobs`
#

DROP TABLE IF EXISTS `webjobs`;


#
# Table structure of table `webjobs`
#

CREATE TABLE `webjobs` (
  `job_id` int(11) NOT NULL AUTO_INCREMENT,
  `job_title` varchar(500) NOT NULL,
  `job_company` varchar(255) NOT NULL,
  `job_positions` varchar(500) NOT NULL,
  `job_vacancy` varchar(500) NOT NULL,
  `job_description` text NOT NULL,
  `job_poster_id` int(11) NOT NULL,
  `job_status` tinyint(1) NOT NULL DEFAULT '1',
  `job_date_modified` datetime NOT NULL,
  `job_date_added` datetime NOT NULL,
  PRIMARY KEY (`job_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1 ;

#
# Data contents of table webjobs (1 records)
#
 
INSERT INTO `webjobs` VALUES (1, 'Litigation Lawyer', 'Global Estate Resorts, Inc. (a subsidiary of Megaworld Corporation)', 'Litigation Lawyer', '5', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#039;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 1, 1, '2017-02-20 13:23:25', '2017-02-20 13:13:27') ;
#
# End of data contents of table webjobs
# --------------------------------------------------------

# MySQL database backup
#
# Generated: Friday 3. March 2017 08:02 PHT
# Hostname: localhost
# Database: `alumni`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `admin`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `auditlog`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `feedbacks`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `graduates`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `users`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webaboutus`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webannouncements`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webbanner`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webcontactus`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webjobs`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webmenu`
# --------------------------------------------------------


#
# Delete any existing table `webmenu`
#

DROP TABLE IF EXISTS `webmenu`;


#
# Table structure of table `webmenu`
#

CREATE TABLE `webmenu` (
  `menu_id` int(11) NOT NULL AUTO_INCREMENT,
  `menu_title` varchar(50) NOT NULL,
  `menu_link` varchar(255) NOT NULL,
  `menu_status` tinyint(1) NOT NULL DEFAULT '1',
  `menu_position` tinyint(4) NOT NULL,
  `menu_date_modified` datetime NOT NULL,
  `menu_date_added` datetime NOT NULL,
  PRIMARY KEY (`menu_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1 ;

#
# Data contents of table webmenu (5 records)
#
 
INSERT INTO `webmenu` VALUES (1, 'Home', 'index', 1, 1, '2017-02-20 13:35:09', '2017-02-20 13:35:09') ; 
INSERT INTO `webmenu` VALUES (2, 'News', 'news', 1, 2, '2017-02-17 11:02:00', '2017-02-17 11:02:00') ; 
INSERT INTO `webmenu` VALUES (3, 'Announcements', 'announcements', 1, 3, '2017-02-17 11:02:13', '2017-02-17 11:02:13') ; 
INSERT INTO `webmenu` VALUES (4, 'About Us', 'about-us', 1, 4, '2017-02-17 11:02:25', '2017-02-17 11:02:25') ; 
INSERT INTO `webmenu` VALUES (5, 'Contact Us', 'contact-us', 1, 5, '2017-02-17 11:02:36', '2017-02-17 11:02:36') ;
#
# End of data contents of table webmenu
# --------------------------------------------------------

# MySQL database backup
#
# Generated: Friday 3. March 2017 08:02 PHT
# Hostname: localhost
# Database: `alumni`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `admin`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `auditlog`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `feedbacks`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `graduates`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `users`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webaboutus`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webannouncements`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webbanner`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webcontactus`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webjobs`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webmenu`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webnews`
# --------------------------------------------------------


#
# Delete any existing table `webnews`
#

DROP TABLE IF EXISTS `webnews`;


#
# Table structure of table `webnews`
#

CREATE TABLE `webnews` (
  `news_id` int(11) NOT NULL AUTO_INCREMENT,
  `news_title` varchar(255) NOT NULL,
  `news_description` text NOT NULL,
  `news_image` varchar(500) NOT NULL,
  `news_status` tinyint(1) NOT NULL DEFAULT '1',
  `news_poster_id` int(11) NOT NULL,
  `news_date_modified` datetime NOT NULL,
  `news_date_added` datetime NOT NULL,
  PRIMARY KEY (`news_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1 ;

#
# Data contents of table webnews (7 records)
#
 
INSERT INTO `webnews` VALUES (1, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis feugiat quam velit, vitae ornare libero pellentesque ut.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis feugiat quam velit, vitae ornare libero pellentesque ut. Ut tempus augue sit amet ipsum elementum, eget faucibus erat molestie. Praesent in eros rutrum, ornare leo vitae, interdum nibh. Suspendisse consectetur eget justo non lacinia. In fermentum luctus condimentum. Morbi a libero molestie, facilisis mauris pellentesque, fermentum orci. Vivamus eget risus lacinia, scelerisque dui in, lobortis leo. Aliquam et ultricies dui. Nunc pharetra, enim eu efficitur molestie, metus sem mattis risus, tristique fringilla libero nulla et felis. Nam id sodales elit. Nullam elementum volutpat tortor, id feugiat erat placerat eu.

Suspendisse sit amet porta orci. Nam ultricies nisi ante. Nulla vel arcu sodales, varius nisi in, porttitor orci. Sed viverra felis eget lacus faucibus hendrerit. Cras erat turpis, faucibus id porta nec, mattis vel velit. Maecenas non magna sit amet velit pretium consectetur. Proin id nulla dictum, euismod purus eget, malesuada augue. Praesent eu sapien risus. Curabitur id nisi neque.', '1.jpg', 1, 1, '2017-02-20 12:38:37', '2017-02-20 12:38:37') ; 
INSERT INTO `webnews` VALUES (2, 'Suspendisse sit amet porta orci. Nam ultricies nisi ante. Nulla vel arcu sodales, varius nisi in, porttitor orci. Sed viverra felis eget lacus faucibus hendrerit.', 'Suspendisse sit amet porta orci. Nam ultricies nisi ante. Nulla vel arcu sodales, varius nisi in, porttitor orci. Sed viverra felis eget lacus faucibus hendrerit. Cras erat turpis, faucibus id porta nec, mattis vel velit. Maecenas non magna sit amet velit pretium consectetur. Proin id nulla dictum, euismod purus eget, malesuada augue. Praesent eu sapien risus. Curabitur id nisi neque.

Sed convallis commodo quam ut scelerisque. Fusce non pharetra lectus. Maecenas euismod tincidunt orci ac efficitur. Sed lectus odio, imperdiet nec tincidunt a, varius eget metus. Fusce ullamcorper tempor aliquet. Sed tempus efficitur sapien, in tempor metus aliquam non. Ut dapibus risus sit amet nisi scelerisque, sed faucibus tellus feugiat. Proin facilisis erat magna, eu molestie mi venenatis id. Praesent eleifend ante eget massa dignissim, nec vulputate orci suscipit.', '2.jpg', 1, 1, '2017-02-20 12:40:27', '2017-02-20 12:40:27') ; 
INSERT INTO `webnews` VALUES (3, 'Sed convallis commodo quam ut scelerisque. Fusce non pharetra lectus. Maecenas euismod tincidunt orci ac efficitur.', 'Sed convallis commodo quam ut scelerisque. Fusce non pharetra lectus. Maecenas euismod tincidunt orci ac efficitur. Sed lectus odio, imperdiet nec tincidunt a, varius eget metus. Fusce ullamcorper tempor aliquet. Sed tempus efficitur sapien, in tempor metus aliquam non. Ut dapibus risus sit amet nisi scelerisque, sed faucibus tellus feugiat. Proin facilisis erat magna, eu molestie mi venenatis id. Praesent eleifend ante eget massa dignissim, nec vulputate orci suscipit.

Nullam accumsan est vitae ante imperdiet, volutpat porttitor odio condimentum. Suspendisse condimentum eget purus non fermentum. In elit nunc, blandit in augue at, volutpat tincidunt nibh. Donec vestibulum, lorem eget pretium hendrerit, lacus enim bibendum nisl, quis pulvinar quam ex et dolor. Donec sed leo lobortis, eleifend leo ac, dignissim magna. Suspendisse mattis sapien tincidunt, gravida augue id, rhoncus tellus. Sed eu auctor lorem. Etiam id turpis urna. Donec at posuere nunc, id auctor orci. Nam sapien eros, egestas vitae risus nec, commodo consequat urna. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Praesent fringilla neque eros, tristique convallis felis laoreet non. Aliquam in nibh in libero lacinia faucibus a id justo. Interdum et malesuada fames ac ante ipsum primis in faucibus.', '3.jpg', 1, 1, '2017-02-20 12:40:49', '2017-02-20 12:40:49') ; 
INSERT INTO `webnews` VALUES (4, 'Nullam accumsan est vitae ante imperdiet, volutpat porttitor odio condimentum. Suspendisse condimentum eget purus non fermentum. ', 'Nullam accumsan est vitae ante imperdiet, volutpat porttitor odio condimentum. Suspendisse condimentum eget purus non fermentum. In elit nunc, blandit in augue at, volutpat tincidunt nibh. Donec vestibulum, lorem eget pretium hendrerit, lacus enim bibendum nisl, quis pulvinar quam ex et dolor. Donec sed leo lobortis, eleifend leo ac, dignissim magna. Suspendisse mattis sapien tincidunt, gravida augue id, rhoncus tellus. Sed eu auctor lorem. Etiam id turpis urna. Donec at posuere nunc, id auctor orci. Nam sapien eros, egestas vitae risus nec, commodo consequat urna. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Praesent fringilla neque eros, tristique convallis felis laoreet non. Aliquam in nibh in libero lacinia faucibus a id justo. Interdum et malesuada fames ac ante ipsum primis in faucibus.', '4.jpg', 1, 1, '2017-02-20 12:41:06', '2017-02-20 12:41:06') ; 
INSERT INTO `webnews` VALUES (5, 'Aaaliquam id dui pulvinar, mattis sem in, maximus elit. Cras convallis lobortis quam. Etiam tristique, est id blandit imperdiet, sapien nulla vestibulum ligula, ut rhoncus ligula libero a felis.', 'Aliquam id dui pulvinar, mattis sem in, maximus elit. Cras convallis lobortis quam. Etiam tristique, est id blandit imperdiet, sapien nulla vestibulum ligula, ut rhoncus ligula libero a felis. Morbi tincidunt felis sit amet urna pellentesque lacinia. Maecenas urna elit, posuere quis libero porttitor, placerat aliquet justo. In hac habitasse platea dictumst. Suspendisse elementum vel neque sed aliquet. Curabitur nec cursus mi. Proin id pretium magna, ac tempus sapien. Nam ornare vulputate gravida. Aenean ut tristique lacus. Donec suscipit, ex sed consectetur imperdiet, ex eros pellentesque massa, et scelerisque felis eros non elit. Nulla diam mi, iaculis nec ex quis, accumsan euismod augue.

Vestibulum a ornare est. Vivamus fermentum laoreet dui id tristique. Donec pulvinar tempor mi, ac cursus nibh tempor sit amet. Ut sagittis arcu enim, nec luctus quam vestibulum a. Proin non interdum metus. Vivamus ornare lorem nec justo consequat, in sagittis libero sodales. Donec ullamcorper tristique ligula non consectetur. Vivamus cursus nec lacus nec convallis. Pellentesque eu consectetur nibh. Donec volutpat sodales accumsan. Nullam commodo mattis semper. Donec auctor eu nisi in volutpat. Vivamus sit amet lorem mattis, condimentum augue eu, accumsan lorem. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Quisque lacinia efficitur massa at bibendum. Suspendisse iaculis elit ante.', '5.jpg', 1, 1, '2017-02-20 12:42:21', '2017-02-20 12:41:29') ; 
INSERT INTO `webnews` VALUES (6, 'Vestibulum a ornare est. Vivamus fermentum laoreet dui id tristique. Donec pulvinar tempor mi, ac cursus nibh tempor sit amet. Ut sagittis arcu enim, nec luctus quam vestibulum a.', 'Vestibulum a ornare est. Vivamus fermentum laoreet dui id tristique. Donec pulvinar tempor mi, ac cursus nibh tempor sit amet. Ut sagittis arcu enim, nec luctus quam vestibulum a. Proin non interdum metus. Vivamus ornare lorem nec justo consequat, in sagittis libero sodales. Donec ullamcorper tristique ligula non consectetur. Vivamus cursus nec lacus nec convallis. Pellentesque eu consectetur nibh. Donec volutpat sodales accumsan. Nullam commodo mattis semper. Donec auctor eu nisi in volutpat. Vivamus sit amet lorem mattis, condimentum augue eu, accumsan lorem. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Quisque lacinia efficitur massa at bibendum. Suspendisse iaculis elit ante.', '6.jpg', 1, 1, '2017-02-20 12:42:49', '2017-02-20 12:42:49') ; 
INSERT INTO `webnews` VALUES (7, 'Integer eu fermentum erat. Sed sollicitudin sollicitudin est, at molestie augue sagittis quis. Suspendisse pellentesque non lorem vitae vehicula. Donec pellentesque ligula vitae risus pulvinar dictum. ', 'Integer eu fermentum erat. Sed sollicitudin sollicitudin est, at molestie augue sagittis quis. Suspendisse pellentesque non lorem vitae vehicula. Donec pellentesque ligula vitae risus pulvinar dictum. Ut commodo mollis quam, quis tempus neque scelerisque at. Vivamus porta risus justo, sit amet luctus felis eleifend ut. Suspendisse id dui metus. Mauris varius quam ante, eget cursus arcu congue in. Quisque ut urna accumsan, efficitur purus vitae, varius libero. Etiam a velit odio. Duis malesuada purus luctus consequat rhoncus. Nulla dapibus neque et lacus fringilla, eu semper dolor tincidunt. In sagittis tortor et nisi sagittis finibus. Pellentesque iaculis ligula nec erat bibendum tincidunt.

Maecenas at tortor sem. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut cursus, enim ac varius commodo, tellus ligula cursus velit, quis sodales augue lorem id arcu. Etiam sit amet pellentesque ipsum. Pellentesque venenatis lorem et ligula euismod, nec commodo felis tristique. Proin libero quam, bibendum vitae mi sagittis, tempor elementum velit. Nulla convallis tempor nisi, semper molestie eros tempus vitae. Ut viverra ligula tempus lorem eleifend, at sagittis purus malesuada. Pellentesque vehicula tincidunt metus a porta.', '6_2.jpg', 1, 1, '2017-02-20 12:43:08', '2017-02-20 12:43:08') ;
#
# End of data contents of table webnews
# --------------------------------------------------------

# MySQL database backup
#
# Generated: Friday 3. March 2017 08:02 PHT
# Hostname: localhost
# Database: `alumni`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `admin`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `auditlog`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `feedbacks`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `graduates`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `users`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webaboutus`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webannouncements`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webbanner`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webcontactus`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webjobs`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webmenu`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webnews`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webslider`
# --------------------------------------------------------


#
# Delete any existing table `webslider`
#

DROP TABLE IF EXISTS `webslider`;


#
# Table structure of table `webslider`
#

CREATE TABLE `webslider` (
  `slider_id` int(11) NOT NULL AUTO_INCREMENT,
  `slider_image` varchar(255) NOT NULL,
  `slider_caption` text NOT NULL,
  `slider_title` varchar(255) NOT NULL,
  `slider_status` tinyint(1) NOT NULL DEFAULT '1',
  `slider_poster_id` int(11) NOT NULL,
  `slider_date_modified` datetime NOT NULL,
  `slider_date_added` datetime NOT NULL,
  PRIMARY KEY (`slider_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ;

#
# Data contents of table webslider (0 records)
#

#
# End of data contents of table webslider
# --------------------------------------------------------

# MySQL database backup
#
# Generated: Friday 3. March 2017 08:02 PHT
# Hostname: localhost
# Database: `alumni`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `admin`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `auditlog`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `feedbacks`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `graduates`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `users`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webaboutus`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webannouncements`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webbanner`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webcontactus`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webjobs`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webmenu`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webnews`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webslider`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `websubmenu`
# --------------------------------------------------------


#
# Delete any existing table `websubmenu`
#

DROP TABLE IF EXISTS `websubmenu`;


#
# Table structure of table `websubmenu`
#

CREATE TABLE `websubmenu` (
  `submenu_id` int(11) NOT NULL AUTO_INCREMENT,
  `submenu_menu_id` int(11) NOT NULL,
  `submenu_title` varchar(50) NOT NULL,
  `submenu_link` varchar(255) NOT NULL,
  `submenu_status` tinyint(1) NOT NULL DEFAULT '1',
  `submenu_position` tinyint(4) NOT NULL,
  `submenu_date_modified` datetime NOT NULL,
  `submenu_date_added` datetime NOT NULL,
  PRIMARY KEY (`submenu_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1 ;

#
# Data contents of table websubmenu (1 records)
#
 
INSERT INTO `websubmenu` VALUES (1, 1, 'dfddd', 'ddddd', 2, 0, '2017-02-20 13:35:23', '2017-02-20 13:35:15') ;
#
# End of data contents of table websubmenu
# --------------------------------------------------------

# MySQL database backup
#
# Generated: Friday 3. March 2017 08:03 PHT
# Hostname: localhost
# Database: `alumni`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `admin`
# --------------------------------------------------------


#
# Delete any existing table `admin`
#

DROP TABLE IF EXISTS `admin`;


#
# Table structure of table `admin`
#

CREATE TABLE `admin` (
  `admin_id` int(11) NOT NULL AUTO_INCREMENT,
  `admin_fname` varchar(50) NOT NULL,
  `admin_mname` varchar(50) NOT NULL,
  `admin_lname` varchar(50) NOT NULL,
  `admin_email` varchar(100) NOT NULL,
  `admin_username` varchar(50) NOT NULL,
  `admin_salt` varchar(50) NOT NULL,
  `admin_password` varchar(100) NOT NULL,
  `admin_level` tinyint(1) NOT NULL COMMENT '1=sysad; 2=moderator; 3=viewing;',
  `admin_status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '0=not active; 1=active; 2=disabled;',
  `admin_date_modified` datetime NOT NULL,
  `admin_date_added` datetime NOT NULL,
  PRIMARY KEY (`admin_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1 ;

#
# Data contents of table admin (1 records)
#
 
INSERT INTO `admin` VALUES (1, 'juan', 'santos', 'dela cruz', 'juan23@mail.com', 'admin', '³W÷þdaÂí±ÂùF®9ïÐ0Ÿ€‘ƒÈn·0¢Ã#üå¨', '3640daa0c1fc63a0be23f357f05202ab732697f6bd5bfb93ef00d947cc133461', 1, 1, '2017-02-08 00:00:00', '2017-02-08 00:00:00') ;
#
# End of data contents of table admin
# --------------------------------------------------------

# MySQL database backup
#
# Generated: Friday 3. March 2017 08:03 PHT
# Hostname: localhost
# Database: `alumni`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `admin`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `auditlog`
# --------------------------------------------------------


#
# Delete any existing table `auditlog`
#

DROP TABLE IF EXISTS `auditlog`;


#
# Table structure of table `auditlog`
#

CREATE TABLE `auditlog` (
  `audit_id` int(11) NOT NULL AUTO_INCREMENT,
  `audit_table_affected` varchar(100) NOT NULL,
  `audit_action` varchar(255) NOT NULL,
  `audit_admin_id` int(11) NOT NULL,
  `audit_datetime` datetime NOT NULL,
  PRIMARY KEY (`audit_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ;

#
# Data contents of table auditlog (0 records)
#

#
# End of data contents of table auditlog
# --------------------------------------------------------

# MySQL database backup
#
# Generated: Friday 3. March 2017 08:03 PHT
# Hostname: localhost
# Database: `alumni`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `admin`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `auditlog`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `feedbacks`
# --------------------------------------------------------


#
# Delete any existing table `feedbacks`
#

DROP TABLE IF EXISTS `feedbacks`;


#
# Table structure of table `feedbacks`
#

CREATE TABLE `feedbacks` (
  `fb_id` int(11) NOT NULL AUTO_INCREMENT,
  `fb_name` varchar(150) NOT NULL,
  `fb_email` varchar(150) NOT NULL,
  `fb_subject` varchar(500) NOT NULL,
  `fb_message` text NOT NULL,
  `fb_date_added` datetime NOT NULL,
  PRIMARY KEY (`fb_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1 ;

#
# Data contents of table feedbacks (1 records)
#
 
INSERT INTO `feedbacks` VALUES (1, 'sdfsdfs', 'dfssdf@asdasd.asd', 'asdasd', 'asdasdasdasd', '2017-02-20 15:18:19') ;
#
# End of data contents of table feedbacks
# --------------------------------------------------------

# MySQL database backup
#
# Generated: Friday 3. March 2017 08:03 PHT
# Hostname: localhost
# Database: `alumni`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `admin`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `auditlog`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `feedbacks`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `graduates`
# --------------------------------------------------------


#
# Delete any existing table `graduates`
#

DROP TABLE IF EXISTS `graduates`;


#
# Table structure of table `graduates`
#

CREATE TABLE `graduates` (
  `grad_id` int(11) NOT NULL AUTO_INCREMENT,
  `grad_fname` varchar(50) NOT NULL,
  `grad_mname` varchar(50) NOT NULL,
  `grad_lname` varchar(50) NOT NULL,
  `grad_gender` tinyint(1) NOT NULL COMMENT '1=male; 2=female',
  `grad_birthday` date NOT NULL,
  `grad_student_id` varchar(11) NOT NULL,
  `grad_course` varchar(100) NOT NULL,
  `grad_dept` varchar(100) NOT NULL,
  `grad_year_graduated` year(4) NOT NULL,
  `grad_so_number` varchar(50) NOT NULL,
  PRIMARY KEY (`grad_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ;

#
# Data contents of table graduates (0 records)
#

#
# End of data contents of table graduates
# --------------------------------------------------------

# MySQL database backup
#
# Generated: Friday 3. March 2017 08:03 PHT
# Hostname: localhost
# Database: `alumni`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `admin`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `auditlog`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `feedbacks`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `graduates`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `users`
# --------------------------------------------------------


#
# Delete any existing table `users`
#

DROP TABLE IF EXISTS `users`;


#
# Table structure of table `users`
#

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_grad_id` int(11) NOT NULL,
  `user_email` varchar(100) NOT NULL,
  `user_contact` varchar(50) NOT NULL,
  `user_address` varchar(255) NOT NULL,
  `user_username` varchar(50) NOT NULL,
  `user_salt` varchar(100) NOT NULL,
  `user_password` varchar(100) NOT NULL,
  `user_status` tinyint(1) NOT NULL DEFAULT '1',
  `user_employed` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0=not employed; 1=employed;',
  `user_company` varchar(155) NOT NULL,
  `user_position` varchar(100) NOT NULL,
  `user_job_level` varchar(100) NOT NULL,
  `user_date_modified` datetime NOT NULL,
  `user_date_added` datetime NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ;

#
# Data contents of table users (0 records)
#

#
# End of data contents of table users
# --------------------------------------------------------

# MySQL database backup
#
# Generated: Friday 3. March 2017 08:03 PHT
# Hostname: localhost
# Database: `alumni`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `admin`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `auditlog`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `feedbacks`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `graduates`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `users`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webaboutus`
# --------------------------------------------------------


#
# Delete any existing table `webaboutus`
#

DROP TABLE IF EXISTS `webaboutus`;


#
# Table structure of table `webaboutus`
#

CREATE TABLE `webaboutus` (
  `about_id` int(11) NOT NULL AUTO_INCREMENT,
  `about_mission` text NOT NULL,
  `about_vision` text NOT NULL,
  `about_history` text NOT NULL,
  `about_date_modified` datetime NOT NULL,
  `about_date_added` datetime NOT NULL,
  PRIMARY KEY (`about_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ;

#
# Data contents of table webaboutus (0 records)
#

#
# End of data contents of table webaboutus
# --------------------------------------------------------

# MySQL database backup
#
# Generated: Friday 3. March 2017 08:03 PHT
# Hostname: localhost
# Database: `alumni`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `admin`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `auditlog`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `feedbacks`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `graduates`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `users`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webaboutus`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webannouncements`
# --------------------------------------------------------


#
# Delete any existing table `webannouncements`
#

DROP TABLE IF EXISTS `webannouncements`;


#
# Table structure of table `webannouncements`
#

CREATE TABLE `webannouncements` (
  `announ_id` int(11) NOT NULL AUTO_INCREMENT,
  `announ_title` varchar(255) NOT NULL,
  `announ_description` text NOT NULL,
  `announ_status` tinyint(1) NOT NULL DEFAULT '1',
  `announ_poster_id` int(11) NOT NULL,
  `announ_date_modified` datetime NOT NULL,
  `announ_date_added` datetime NOT NULL,
  PRIMARY KEY (`announ_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1 ;

#
# Data contents of table webannouncements (7 records)
#
 
INSERT INTO `webannouncements` VALUES (1, 'Maecenas at tortor sem. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut cursus, enim ac varius commodo, tellus ligula cursus velit, quis sodales augue lorem id arcu. Etiam sit amet pellentesque ipsum.', 'Maecenas at tortor sem. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut cursus, enim ac varius commodo, tellus ligula cursus velit, quis sodales augue lorem id arcu. Etiam sit amet pellentesque ipsum. Pellentesque venenatis lorem et ligula euismod, nec commodo felis tristique. Proin libero quam, bibendum vitae mi sagittis, tempor elementum velit. Nulla convallis tempor nisi, semper molestie eros tempus vitae. Ut viverra ligula tempus lorem eleifend, at sagittis purus malesuada. Pellentesque vehicula tincidunt metus a porta.', 1, 1, '2017-02-20 12:43:49', '2017-02-20 12:43:49') ; 
INSERT INTO `webannouncements` VALUES (2, 'Pellentesque eu ultricies leo. Nulla ullamcorper sem mauris, sit amet congue nisi sollicitudin non. Sed venenatis euismod pretium. ', 'Pellentesque eu ultricies leo. Nulla ullamcorper sem mauris, sit amet congue nisi sollicitudin non. Sed venenatis euismod pretium. Vivamus sit amet erat vehicula, semper arcu ut, mattis purus. Nunc at semper sem, sit amet facilisis risus. Fusce interdum egestas finibus. Proin ac tempus nulla. Nullam id ipsum enim. Vivamus sollicitudin blandit pharetra. Donec dictum ligula nisi, non ornare diam venenatis a. In pharetra turpis id elit fermentum sodales. Integer euismod nisl sed facilisis laoreet. Aenean lobortis ullamcorper dapibus. Pellentesque volutpat laoreet hendrerit.

Suspendisse potenti. Donec sed laoreet ipsum. Donec non diam placerat, porta lectus eget, pulvinar quam. Nullam at nulla at dolor consequat dictum. Proin a scelerisque nisi. Ut rhoncus facilisis nibh feugiat tempor. Aliquam erat volutpat.', 1, 1, '2017-02-20 12:44:01', '2017-02-20 12:44:01') ; 
INSERT INTO `webannouncements` VALUES (3, 'Suspendisse potenti. Donec sed laoreet ipsum. Donec non diam placerat, porta lectus eget, pulvinar quam. Nullam at nulla at dolor consequat dictum.', 'Suspendisse potenti. Donec sed laoreet ipsum. Donec non diam placerat, porta lectus eget, pulvinar quam. Nullam at nulla at dolor consequat dictum. Proin a scelerisque nisi. Ut rhoncus facilisis nibh feugiat tempor. Aliquam erat volutpat.

Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Sed in nulla purus. Aliquam lacinia, eros vel volutpat mattis, purus massa sagittis erat, vitae ultrices nisi odio a libero. Praesent bibendum convallis porttitor. Curabitur augue elit, pretium at risus vitae, interdum porta lacus. Integer quis condimentum lectus, nec tempus sem. Maecenas eleifend dui tempor condimentum mollis. Vivamus ut lorem id ipsum sodales efficitur. Donec magna dolor, vulputate non ante vel, tincidunt rutrum nulla. Vivamus pulvinar felis eros, quis pellentesque quam suscipit non. Vestibulum neque orci, convallis sed enim sit amet, rutrum bibendum risus. Curabitur eu ultrices elit. Pellentesque lectus tellus, volutpat sit amet pharetra quis, gravida vitae lacus. Sed euismod enim ut mauris elementum, nec congue neque facilisis. Phasellus eu molestie nulla, dictum sodales nisl.', 1, 1, '2017-02-20 12:44:14', '2017-02-20 12:44:14') ; 
INSERT INTO `webannouncements` VALUES (4, 'Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos.', 'Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Sed in nulla purus. Aliquam lacinia, eros vel volutpat mattis, purus massa sagittis erat, vitae ultrices nisi odio a libero. Praesent bibendum convallis porttitor. Curabitur augue elit, pretium at risus vitae, interdum porta lacus. Integer quis condimentum lectus, nec tempus sem. Maecenas eleifend dui tempor condimentum mollis. Vivamus ut lorem id ipsum sodales efficitur. Donec magna dolor, vulputate non ante vel, tincidunt rutrum nulla. Vivamus pulvinar felis eros, quis pellentesque quam suscipit non. Vestibulum neque orci, convallis sed enim sit amet, rutrum bibendum risus. Curabitur eu ultrices elit. Pellentesque lectus tellus, volutpat sit amet pharetra quis, gravida vitae lacus. Sed euismod enim ut mauris elementum, nec congue neque facilisis. Phasellus eu molestie nulla, dictum sodales nisl.', 1, 1, '2017-02-20 12:44:29', '2017-02-20 12:44:29') ; 
INSERT INTO `webannouncements` VALUES (5, 'Nam neque mauris, consectetur in varius id, elementum vel dolor. Sed vitae massa quis magna fermentum convallis sed venenatis diam. ', 'Nam neque mauris, consectetur in varius id, elementum vel dolor. Sed vitae massa quis magna fermentum convallis sed venenatis diam. Curabitur facilisis, lorem a ornare convallis, neque ligula facilisis nulla, a ultricies odio diam a mi. Phasellus lobortis gravida ligula in vulputate. Duis pellentesque pulvinar viverra. Etiam id suscipit velit, vitae placerat tortor. Ut faucibus ante ipsum, quis ultrices nisi hendrerit vel. Sed euismod velit a neque scelerisque aliquet. Vestibulum dictum eget ante id aliquam.

Nunc rutrum, libero ac dignissim lobortis, odio lacus laoreet urna, non vulputate ex libero in odio. In quis hendrerit velit. Suspendisse cursus justo augue, ut tempus est facilisis non. Donec ac lectus ut felis bibendum malesuada blandit vitae nisi. Nulla facilisi. Praesent facilisis elementum sem a venenatis. Sed accumsan eros vel felis auctor vestibulum. Pellentesque vitae massa ac diam ullamcorper eleifend mattis at quam. Suspendisse non ante efficitur, congue diam ut, placerat dolor. Sed aliquam dolor nibh, a scelerisque tellus pharetra eu. Morbi convallis, erat viverra malesuada fermentum, felis leo tincidunt lacus, ut mollis sem arcu eu odio. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae;', 1, 1, '2017-02-20 12:44:43', '2017-02-20 12:44:43') ; 
INSERT INTO `webannouncements` VALUES (6, 'Nunc rutrum, libero ac dignissim lobortis, odio lacus laoreet urna, non vulputate ex libero in odio. In quis hendrerit velit.', 'Nunc rutrum, libero ac dignissim lobortis, odio lacus laoreet urna, non vulputate ex libero in odio. In quis hendrerit velit. Suspendisse cursus justo augue, ut tempus est facilisis non. Donec ac lectus ut felis bibendum malesuada blandit vitae nisi. Nulla facilisi. Praesent facilisis elementum sem a venenatis. Sed accumsan eros vel felis auctor vestibulum. Pellentesque vitae massa ac diam ullamcorper eleifend mattis at quam. Suspendisse non ante efficitur, congue diam ut, placerat dolor. Sed aliquam dolor nibh, a scelerisque tellus pharetra eu. Morbi convallis, erat viverra malesuada fermentum, felis leo tincidunt lacus, ut mollis sem arcu eu odio. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae;', 1, 1, '2017-02-20 12:44:55', '2017-02-20 12:44:55') ; 
INSERT INTO `webannouncements` VALUES (7, 'Nulla convallis nisl a ante facilisis suscipit. Morbi sit amet imperdiet tortor. Duis posuere gravida nisl, sit amet posuere tortor dictum blandit.', 'Nulla convallis nisl a ante facilisis suscipit. Morbi sit amet imperdiet tortor. Duis posuere gravida nisl, sit amet posuere tortor dictum blandit. Cras ultricies iaculis vulputate. Fusce non turpis porttitor, ornare diam at, cursus ante. Donec at velit magna. Nunc est leo, pretium at dolor a, commodo malesuada neque. Maecenas ultrices in ex ac laoreet. Cras accumsan mi vitae augue consequat, vitae scelerisque est fermentum. Donec vehicula risus ut libero aliquet ultricies. Nulla facilisi.

Integer tortor est, aliquet nec sapien sit amet, commodo consectetur arcu. Curabitur bibendum erat rutrum lorem semper, id blandit diam luctus. Sed suscipit est non risus viverra, in viverra quam hendrerit. Aliquam elit risus, vulputate vel nulla vulputate, consequat venenatis ex. Suspendisse potenti. Cras aliquet metus vitae turpis vestibulum viverra. Donec scelerisque dolor ultricies purus malesuada euismod. Cras eleifend porta elementum. Quisque malesuada leo dolor. Cras consequat leo quis imperdiet suscipit. Vestibulum laoreet risus a nunc ullamcorper viverra. Maecenas hendrerit ante id justo porta, ut ornare mi hendrerit.', 1, 1, '2017-02-20 12:47:17', '2017-02-20 12:45:10') ;
#
# End of data contents of table webannouncements
# --------------------------------------------------------

# MySQL database backup
#
# Generated: Friday 3. March 2017 08:03 PHT
# Hostname: localhost
# Database: `alumni`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `admin`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `auditlog`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `feedbacks`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `graduates`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `users`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webaboutus`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webannouncements`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webbanner`
# --------------------------------------------------------


#
# Delete any existing table `webbanner`
#

DROP TABLE IF EXISTS `webbanner`;


#
# Table structure of table `webbanner`
#

CREATE TABLE `webbanner` (
  `banner_id` int(11) NOT NULL AUTO_INCREMENT,
  `banner_image` varchar(255) NOT NULL,
  `banner_title` varchar(100) NOT NULL,
  `banner_status` tinyint(1) NOT NULL DEFAULT '1',
  `banner_poster_id` int(11) NOT NULL,
  `banner_date_modified` datetime NOT NULL,
  `banner_date_added` datetime NOT NULL,
  PRIMARY KEY (`banner_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1 ;

#
# Data contents of table webbanner (1 records)
#
 
INSERT INTO `webbanner` VALUES (1, 'raffle.jpg', 'CCA Alumni First Fund Raising Event', 1, 1, '2017-02-20 12:47:58', '2017-02-13 20:32:15') ;
#
# End of data contents of table webbanner
# --------------------------------------------------------

# MySQL database backup
#
# Generated: Friday 3. March 2017 08:03 PHT
# Hostname: localhost
# Database: `alumni`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `admin`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `auditlog`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `feedbacks`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `graduates`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `users`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webaboutus`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webannouncements`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webbanner`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webcontactus`
# --------------------------------------------------------


#
# Delete any existing table `webcontactus`
#

DROP TABLE IF EXISTS `webcontactus`;


#
# Table structure of table `webcontactus`
#

CREATE TABLE `webcontactus` (
  `contact_id` int(11) NOT NULL AUTO_INCREMENT,
  `contact_phone` varchar(30) NOT NULL,
  `contact_mobile` varchar(30) NOT NULL,
  `contact_email` varchar(100) NOT NULL,
  `contact_address` varchar(255) NOT NULL,
  `contact_fax` varchar(30) NOT NULL,
  `contact_date_modified` datetime NOT NULL,
  `contact_date_added` datetime NOT NULL,
  PRIMARY KEY (`contact_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ;

#
# Data contents of table webcontactus (0 records)
#

#
# End of data contents of table webcontactus
# --------------------------------------------------------

# MySQL database backup
#
# Generated: Friday 3. March 2017 08:03 PHT
# Hostname: localhost
# Database: `alumni`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `admin`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `auditlog`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `feedbacks`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `graduates`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `users`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webaboutus`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webannouncements`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webbanner`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webcontactus`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webjobs`
# --------------------------------------------------------


#
# Delete any existing table `webjobs`
#

DROP TABLE IF EXISTS `webjobs`;


#
# Table structure of table `webjobs`
#

CREATE TABLE `webjobs` (
  `job_id` int(11) NOT NULL AUTO_INCREMENT,
  `job_title` varchar(500) NOT NULL,
  `job_company` varchar(255) NOT NULL,
  `job_positions` varchar(500) NOT NULL,
  `job_vacancy` varchar(500) NOT NULL,
  `job_description` text NOT NULL,
  `job_poster_id` int(11) NOT NULL,
  `job_status` tinyint(1) NOT NULL DEFAULT '1',
  `job_date_modified` datetime NOT NULL,
  `job_date_added` datetime NOT NULL,
  PRIMARY KEY (`job_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1 ;

#
# Data contents of table webjobs (1 records)
#
 
INSERT INTO `webjobs` VALUES (1, 'Litigation Lawyer', 'Global Estate Resorts, Inc. (a subsidiary of Megaworld Corporation)', 'Litigation Lawyer', '5', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#039;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 1, 1, '2017-02-20 13:23:25', '2017-02-20 13:13:27') ;
#
# End of data contents of table webjobs
# --------------------------------------------------------

# MySQL database backup
#
# Generated: Friday 3. March 2017 08:03 PHT
# Hostname: localhost
# Database: `alumni`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `admin`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `auditlog`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `feedbacks`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `graduates`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `users`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webaboutus`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webannouncements`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webbanner`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webcontactus`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webjobs`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webmenu`
# --------------------------------------------------------


#
# Delete any existing table `webmenu`
#

DROP TABLE IF EXISTS `webmenu`;


#
# Table structure of table `webmenu`
#

CREATE TABLE `webmenu` (
  `menu_id` int(11) NOT NULL AUTO_INCREMENT,
  `menu_title` varchar(50) NOT NULL,
  `menu_link` varchar(255) NOT NULL,
  `menu_status` tinyint(1) NOT NULL DEFAULT '1',
  `menu_position` tinyint(4) NOT NULL,
  `menu_date_modified` datetime NOT NULL,
  `menu_date_added` datetime NOT NULL,
  PRIMARY KEY (`menu_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1 ;

#
# Data contents of table webmenu (5 records)
#
 
INSERT INTO `webmenu` VALUES (1, 'Home', 'index', 1, 1, '2017-02-20 13:35:09', '2017-02-20 13:35:09') ; 
INSERT INTO `webmenu` VALUES (2, 'News', 'news', 1, 2, '2017-02-17 11:02:00', '2017-02-17 11:02:00') ; 
INSERT INTO `webmenu` VALUES (3, 'Announcements', 'announcements', 1, 3, '2017-02-17 11:02:13', '2017-02-17 11:02:13') ; 
INSERT INTO `webmenu` VALUES (4, 'About Us', 'about-us', 1, 4, '2017-02-17 11:02:25', '2017-02-17 11:02:25') ; 
INSERT INTO `webmenu` VALUES (5, 'Contact Us', 'contact-us', 1, 5, '2017-02-17 11:02:36', '2017-02-17 11:02:36') ;
#
# End of data contents of table webmenu
# --------------------------------------------------------

# MySQL database backup
#
# Generated: Friday 3. March 2017 08:03 PHT
# Hostname: localhost
# Database: `alumni`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `admin`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `auditlog`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `feedbacks`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `graduates`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `users`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webaboutus`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webannouncements`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webbanner`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webcontactus`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webjobs`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webmenu`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webnews`
# --------------------------------------------------------


#
# Delete any existing table `webnews`
#

DROP TABLE IF EXISTS `webnews`;


#
# Table structure of table `webnews`
#

CREATE TABLE `webnews` (
  `news_id` int(11) NOT NULL AUTO_INCREMENT,
  `news_title` varchar(255) NOT NULL,
  `news_description` text NOT NULL,
  `news_image` varchar(500) NOT NULL,
  `news_status` tinyint(1) NOT NULL DEFAULT '1',
  `news_poster_id` int(11) NOT NULL,
  `news_date_modified` datetime NOT NULL,
  `news_date_added` datetime NOT NULL,
  PRIMARY KEY (`news_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1 ;

#
# Data contents of table webnews (7 records)
#
 
INSERT INTO `webnews` VALUES (1, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis feugiat quam velit, vitae ornare libero pellentesque ut.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis feugiat quam velit, vitae ornare libero pellentesque ut. Ut tempus augue sit amet ipsum elementum, eget faucibus erat molestie. Praesent in eros rutrum, ornare leo vitae, interdum nibh. Suspendisse consectetur eget justo non lacinia. In fermentum luctus condimentum. Morbi a libero molestie, facilisis mauris pellentesque, fermentum orci. Vivamus eget risus lacinia, scelerisque dui in, lobortis leo. Aliquam et ultricies dui. Nunc pharetra, enim eu efficitur molestie, metus sem mattis risus, tristique fringilla libero nulla et felis. Nam id sodales elit. Nullam elementum volutpat tortor, id feugiat erat placerat eu.

Suspendisse sit amet porta orci. Nam ultricies nisi ante. Nulla vel arcu sodales, varius nisi in, porttitor orci. Sed viverra felis eget lacus faucibus hendrerit. Cras erat turpis, faucibus id porta nec, mattis vel velit. Maecenas non magna sit amet velit pretium consectetur. Proin id nulla dictum, euismod purus eget, malesuada augue. Praesent eu sapien risus. Curabitur id nisi neque.', '1.jpg', 1, 1, '2017-02-20 12:38:37', '2017-02-20 12:38:37') ; 
INSERT INTO `webnews` VALUES (2, 'Suspendisse sit amet porta orci. Nam ultricies nisi ante. Nulla vel arcu sodales, varius nisi in, porttitor orci. Sed viverra felis eget lacus faucibus hendrerit.', 'Suspendisse sit amet porta orci. Nam ultricies nisi ante. Nulla vel arcu sodales, varius nisi in, porttitor orci. Sed viverra felis eget lacus faucibus hendrerit. Cras erat turpis, faucibus id porta nec, mattis vel velit. Maecenas non magna sit amet velit pretium consectetur. Proin id nulla dictum, euismod purus eget, malesuada augue. Praesent eu sapien risus. Curabitur id nisi neque.

Sed convallis commodo quam ut scelerisque. Fusce non pharetra lectus. Maecenas euismod tincidunt orci ac efficitur. Sed lectus odio, imperdiet nec tincidunt a, varius eget metus. Fusce ullamcorper tempor aliquet. Sed tempus efficitur sapien, in tempor metus aliquam non. Ut dapibus risus sit amet nisi scelerisque, sed faucibus tellus feugiat. Proin facilisis erat magna, eu molestie mi venenatis id. Praesent eleifend ante eget massa dignissim, nec vulputate orci suscipit.', '2.jpg', 1, 1, '2017-02-20 12:40:27', '2017-02-20 12:40:27') ; 
INSERT INTO `webnews` VALUES (3, 'Sed convallis commodo quam ut scelerisque. Fusce non pharetra lectus. Maecenas euismod tincidunt orci ac efficitur.', 'Sed convallis commodo quam ut scelerisque. Fusce non pharetra lectus. Maecenas euismod tincidunt orci ac efficitur. Sed lectus odio, imperdiet nec tincidunt a, varius eget metus. Fusce ullamcorper tempor aliquet. Sed tempus efficitur sapien, in tempor metus aliquam non. Ut dapibus risus sit amet nisi scelerisque, sed faucibus tellus feugiat. Proin facilisis erat magna, eu molestie mi venenatis id. Praesent eleifend ante eget massa dignissim, nec vulputate orci suscipit.

Nullam accumsan est vitae ante imperdiet, volutpat porttitor odio condimentum. Suspendisse condimentum eget purus non fermentum. In elit nunc, blandit in augue at, volutpat tincidunt nibh. Donec vestibulum, lorem eget pretium hendrerit, lacus enim bibendum nisl, quis pulvinar quam ex et dolor. Donec sed leo lobortis, eleifend leo ac, dignissim magna. Suspendisse mattis sapien tincidunt, gravida augue id, rhoncus tellus. Sed eu auctor lorem. Etiam id turpis urna. Donec at posuere nunc, id auctor orci. Nam sapien eros, egestas vitae risus nec, commodo consequat urna. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Praesent fringilla neque eros, tristique convallis felis laoreet non. Aliquam in nibh in libero lacinia faucibus a id justo. Interdum et malesuada fames ac ante ipsum primis in faucibus.', '3.jpg', 1, 1, '2017-02-20 12:40:49', '2017-02-20 12:40:49') ; 
INSERT INTO `webnews` VALUES (4, 'Nullam accumsan est vitae ante imperdiet, volutpat porttitor odio condimentum. Suspendisse condimentum eget purus non fermentum. ', 'Nullam accumsan est vitae ante imperdiet, volutpat porttitor odio condimentum. Suspendisse condimentum eget purus non fermentum. In elit nunc, blandit in augue at, volutpat tincidunt nibh. Donec vestibulum, lorem eget pretium hendrerit, lacus enim bibendum nisl, quis pulvinar quam ex et dolor. Donec sed leo lobortis, eleifend leo ac, dignissim magna. Suspendisse mattis sapien tincidunt, gravida augue id, rhoncus tellus. Sed eu auctor lorem. Etiam id turpis urna. Donec at posuere nunc, id auctor orci. Nam sapien eros, egestas vitae risus nec, commodo consequat urna. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Praesent fringilla neque eros, tristique convallis felis laoreet non. Aliquam in nibh in libero lacinia faucibus a id justo. Interdum et malesuada fames ac ante ipsum primis in faucibus.', '4.jpg', 1, 1, '2017-02-20 12:41:06', '2017-02-20 12:41:06') ; 
INSERT INTO `webnews` VALUES (5, 'Aaaliquam id dui pulvinar, mattis sem in, maximus elit. Cras convallis lobortis quam. Etiam tristique, est id blandit imperdiet, sapien nulla vestibulum ligula, ut rhoncus ligula libero a felis.', 'Aliquam id dui pulvinar, mattis sem in, maximus elit. Cras convallis lobortis quam. Etiam tristique, est id blandit imperdiet, sapien nulla vestibulum ligula, ut rhoncus ligula libero a felis. Morbi tincidunt felis sit amet urna pellentesque lacinia. Maecenas urna elit, posuere quis libero porttitor, placerat aliquet justo. In hac habitasse platea dictumst. Suspendisse elementum vel neque sed aliquet. Curabitur nec cursus mi. Proin id pretium magna, ac tempus sapien. Nam ornare vulputate gravida. Aenean ut tristique lacus. Donec suscipit, ex sed consectetur imperdiet, ex eros pellentesque massa, et scelerisque felis eros non elit. Nulla diam mi, iaculis nec ex quis, accumsan euismod augue.

Vestibulum a ornare est. Vivamus fermentum laoreet dui id tristique. Donec pulvinar tempor mi, ac cursus nibh tempor sit amet. Ut sagittis arcu enim, nec luctus quam vestibulum a. Proin non interdum metus. Vivamus ornare lorem nec justo consequat, in sagittis libero sodales. Donec ullamcorper tristique ligula non consectetur. Vivamus cursus nec lacus nec convallis. Pellentesque eu consectetur nibh. Donec volutpat sodales accumsan. Nullam commodo mattis semper. Donec auctor eu nisi in volutpat. Vivamus sit amet lorem mattis, condimentum augue eu, accumsan lorem. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Quisque lacinia efficitur massa at bibendum. Suspendisse iaculis elit ante.', '5.jpg', 1, 1, '2017-02-20 12:42:21', '2017-02-20 12:41:29') ; 
INSERT INTO `webnews` VALUES (6, 'Vestibulum a ornare est. Vivamus fermentum laoreet dui id tristique. Donec pulvinar tempor mi, ac cursus nibh tempor sit amet. Ut sagittis arcu enim, nec luctus quam vestibulum a.', 'Vestibulum a ornare est. Vivamus fermentum laoreet dui id tristique. Donec pulvinar tempor mi, ac cursus nibh tempor sit amet. Ut sagittis arcu enim, nec luctus quam vestibulum a. Proin non interdum metus. Vivamus ornare lorem nec justo consequat, in sagittis libero sodales. Donec ullamcorper tristique ligula non consectetur. Vivamus cursus nec lacus nec convallis. Pellentesque eu consectetur nibh. Donec volutpat sodales accumsan. Nullam commodo mattis semper. Donec auctor eu nisi in volutpat. Vivamus sit amet lorem mattis, condimentum augue eu, accumsan lorem. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Quisque lacinia efficitur massa at bibendum. Suspendisse iaculis elit ante.', '6.jpg', 1, 1, '2017-02-20 12:42:49', '2017-02-20 12:42:49') ; 
INSERT INTO `webnews` VALUES (7, 'Integer eu fermentum erat. Sed sollicitudin sollicitudin est, at molestie augue sagittis quis. Suspendisse pellentesque non lorem vitae vehicula. Donec pellentesque ligula vitae risus pulvinar dictum. ', 'Integer eu fermentum erat. Sed sollicitudin sollicitudin est, at molestie augue sagittis quis. Suspendisse pellentesque non lorem vitae vehicula. Donec pellentesque ligula vitae risus pulvinar dictum. Ut commodo mollis quam, quis tempus neque scelerisque at. Vivamus porta risus justo, sit amet luctus felis eleifend ut. Suspendisse id dui metus. Mauris varius quam ante, eget cursus arcu congue in. Quisque ut urna accumsan, efficitur purus vitae, varius libero. Etiam a velit odio. Duis malesuada purus luctus consequat rhoncus. Nulla dapibus neque et lacus fringilla, eu semper dolor tincidunt. In sagittis tortor et nisi sagittis finibus. Pellentesque iaculis ligula nec erat bibendum tincidunt.

Maecenas at tortor sem. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut cursus, enim ac varius commodo, tellus ligula cursus velit, quis sodales augue lorem id arcu. Etiam sit amet pellentesque ipsum. Pellentesque venenatis lorem et ligula euismod, nec commodo felis tristique. Proin libero quam, bibendum vitae mi sagittis, tempor elementum velit. Nulla convallis tempor nisi, semper molestie eros tempus vitae. Ut viverra ligula tempus lorem eleifend, at sagittis purus malesuada. Pellentesque vehicula tincidunt metus a porta.', '6_2.jpg', 1, 1, '2017-02-20 12:43:08', '2017-02-20 12:43:08') ;
#
# End of data contents of table webnews
# --------------------------------------------------------

# MySQL database backup
#
# Generated: Friday 3. March 2017 08:03 PHT
# Hostname: localhost
# Database: `alumni`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `admin`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `auditlog`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `feedbacks`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `graduates`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `users`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webaboutus`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webannouncements`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webbanner`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webcontactus`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webjobs`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webmenu`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webnews`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webslider`
# --------------------------------------------------------


#
# Delete any existing table `webslider`
#

DROP TABLE IF EXISTS `webslider`;


#
# Table structure of table `webslider`
#

CREATE TABLE `webslider` (
  `slider_id` int(11) NOT NULL AUTO_INCREMENT,
  `slider_image` varchar(255) NOT NULL,
  `slider_caption` text NOT NULL,
  `slider_title` varchar(255) NOT NULL,
  `slider_status` tinyint(1) NOT NULL DEFAULT '1',
  `slider_poster_id` int(11) NOT NULL,
  `slider_date_modified` datetime NOT NULL,
  `slider_date_added` datetime NOT NULL,
  PRIMARY KEY (`slider_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ;

#
# Data contents of table webslider (0 records)
#

#
# End of data contents of table webslider
# --------------------------------------------------------

# MySQL database backup
#
# Generated: Friday 3. March 2017 08:03 PHT
# Hostname: localhost
# Database: `alumni`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `admin`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `auditlog`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `feedbacks`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `graduates`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `users`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webaboutus`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webannouncements`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webbanner`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webcontactus`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webjobs`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webmenu`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webnews`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webslider`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `websubmenu`
# --------------------------------------------------------


#
# Delete any existing table `websubmenu`
#

DROP TABLE IF EXISTS `websubmenu`;


#
# Table structure of table `websubmenu`
#

CREATE TABLE `websubmenu` (
  `submenu_id` int(11) NOT NULL AUTO_INCREMENT,
  `submenu_menu_id` int(11) NOT NULL,
  `submenu_title` varchar(50) NOT NULL,
  `submenu_link` varchar(255) NOT NULL,
  `submenu_status` tinyint(1) NOT NULL DEFAULT '1',
  `submenu_position` tinyint(4) NOT NULL,
  `submenu_date_modified` datetime NOT NULL,
  `submenu_date_added` datetime NOT NULL,
  PRIMARY KEY (`submenu_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1 ;

#
# Data contents of table websubmenu (1 records)
#
 
INSERT INTO `websubmenu` VALUES (1, 1, 'dfddd', 'ddddd', 2, 0, '2017-02-20 13:35:23', '2017-02-20 13:35:15') ;
#
# End of data contents of table websubmenu
# --------------------------------------------------------

# MySQL database backup
#
# Generated: Friday 3. March 2017 08:04 PHT
# Hostname: localhost
# Database: `alumni`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `admin`
# --------------------------------------------------------


#
# Delete any existing table `admin`
#

DROP TABLE IF EXISTS `admin`;


#
# Table structure of table `admin`
#

CREATE TABLE `admin` (
  `admin_id` int(11) NOT NULL AUTO_INCREMENT,
  `admin_fname` varchar(50) NOT NULL,
  `admin_mname` varchar(50) NOT NULL,
  `admin_lname` varchar(50) NOT NULL,
  `admin_email` varchar(100) NOT NULL,
  `admin_username` varchar(50) NOT NULL,
  `admin_salt` varchar(50) NOT NULL,
  `admin_password` varchar(100) NOT NULL,
  `admin_level` tinyint(1) NOT NULL COMMENT '1=sysad; 2=moderator; 3=viewing;',
  `admin_status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '0=not active; 1=active; 2=disabled;',
  `admin_date_modified` datetime NOT NULL,
  `admin_date_added` datetime NOT NULL,
  PRIMARY KEY (`admin_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1 ;

#
# Data contents of table admin (1 records)
#
 
INSERT INTO `admin` VALUES (1, 'juan', 'santos', 'dela cruz', 'juan23@mail.com', 'admin', '³W÷þdaÂí±ÂùF®9ïÐ0Ÿ€‘ƒÈn·0¢Ã#üå¨', '3640daa0c1fc63a0be23f357f05202ab732697f6bd5bfb93ef00d947cc133461', 1, 1, '2017-02-08 00:00:00', '2017-02-08 00:00:00') ;
#
# End of data contents of table admin
# --------------------------------------------------------

# MySQL database backup
#
# Generated: Friday 3. March 2017 08:04 PHT
# Hostname: localhost
# Database: `alumni`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `admin`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `auditlog`
# --------------------------------------------------------


#
# Delete any existing table `auditlog`
#

DROP TABLE IF EXISTS `auditlog`;


#
# Table structure of table `auditlog`
#

CREATE TABLE `auditlog` (
  `audit_id` int(11) NOT NULL AUTO_INCREMENT,
  `audit_table_affected` varchar(100) NOT NULL,
  `audit_action` varchar(255) NOT NULL,
  `audit_admin_id` int(11) NOT NULL,
  `audit_datetime` datetime NOT NULL,
  PRIMARY KEY (`audit_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ;

#
# Data contents of table auditlog (0 records)
#

#
# End of data contents of table auditlog
# --------------------------------------------------------

# MySQL database backup
#
# Generated: Friday 3. March 2017 08:04 PHT
# Hostname: localhost
# Database: `alumni`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `admin`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `auditlog`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `feedbacks`
# --------------------------------------------------------


#
# Delete any existing table `feedbacks`
#

DROP TABLE IF EXISTS `feedbacks`;


#
# Table structure of table `feedbacks`
#

CREATE TABLE `feedbacks` (
  `fb_id` int(11) NOT NULL AUTO_INCREMENT,
  `fb_name` varchar(150) NOT NULL,
  `fb_email` varchar(150) NOT NULL,
  `fb_subject` varchar(500) NOT NULL,
  `fb_message` text NOT NULL,
  `fb_date_added` datetime NOT NULL,
  PRIMARY KEY (`fb_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1 ;

#
# Data contents of table feedbacks (1 records)
#
 
INSERT INTO `feedbacks` VALUES (1, 'sdfsdfs', 'dfssdf@asdasd.asd', 'asdasd', 'asdasdasdasd', '2017-02-20 15:18:19') ;
#
# End of data contents of table feedbacks
# --------------------------------------------------------

# MySQL database backup
#
# Generated: Friday 3. March 2017 08:04 PHT
# Hostname: localhost
# Database: `alumni`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `admin`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `auditlog`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `feedbacks`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `graduates`
# --------------------------------------------------------


#
# Delete any existing table `graduates`
#

DROP TABLE IF EXISTS `graduates`;


#
# Table structure of table `graduates`
#

CREATE TABLE `graduates` (
  `grad_id` int(11) NOT NULL AUTO_INCREMENT,
  `grad_fname` varchar(50) NOT NULL,
  `grad_mname` varchar(50) NOT NULL,
  `grad_lname` varchar(50) NOT NULL,
  `grad_gender` tinyint(1) NOT NULL COMMENT '1=male; 2=female',
  `grad_birthday` date NOT NULL,
  `grad_student_id` varchar(11) NOT NULL,
  `grad_course` varchar(100) NOT NULL,
  `grad_dept` varchar(100) NOT NULL,
  `grad_year_graduated` year(4) NOT NULL,
  `grad_so_number` varchar(50) NOT NULL,
  PRIMARY KEY (`grad_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ;

#
# Data contents of table graduates (0 records)
#

#
# End of data contents of table graduates
# --------------------------------------------------------

# MySQL database backup
#
# Generated: Friday 3. March 2017 08:04 PHT
# Hostname: localhost
# Database: `alumni`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `admin`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `auditlog`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `feedbacks`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `graduates`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `users`
# --------------------------------------------------------


#
# Delete any existing table `users`
#

DROP TABLE IF EXISTS `users`;


#
# Table structure of table `users`
#

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_grad_id` int(11) NOT NULL,
  `user_email` varchar(100) NOT NULL,
  `user_contact` varchar(50) NOT NULL,
  `user_address` varchar(255) NOT NULL,
  `user_username` varchar(50) NOT NULL,
  `user_salt` varchar(100) NOT NULL,
  `user_password` varchar(100) NOT NULL,
  `user_status` tinyint(1) NOT NULL DEFAULT '1',
  `user_employed` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0=not employed; 1=employed;',
  `user_company` varchar(155) NOT NULL,
  `user_position` varchar(100) NOT NULL,
  `user_job_level` varchar(100) NOT NULL,
  `user_date_modified` datetime NOT NULL,
  `user_date_added` datetime NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ;

#
# Data contents of table users (0 records)
#

#
# End of data contents of table users
# --------------------------------------------------------

# MySQL database backup
#
# Generated: Friday 3. March 2017 08:04 PHT
# Hostname: localhost
# Database: `alumni`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `admin`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `auditlog`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `feedbacks`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `graduates`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `users`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webaboutus`
# --------------------------------------------------------


#
# Delete any existing table `webaboutus`
#

DROP TABLE IF EXISTS `webaboutus`;


#
# Table structure of table `webaboutus`
#

CREATE TABLE `webaboutus` (
  `about_id` int(11) NOT NULL AUTO_INCREMENT,
  `about_mission` text NOT NULL,
  `about_vision` text NOT NULL,
  `about_history` text NOT NULL,
  `about_date_modified` datetime NOT NULL,
  `about_date_added` datetime NOT NULL,
  PRIMARY KEY (`about_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ;

#
# Data contents of table webaboutus (0 records)
#

#
# End of data contents of table webaboutus
# --------------------------------------------------------

# MySQL database backup
#
# Generated: Friday 3. March 2017 08:04 PHT
# Hostname: localhost
# Database: `alumni`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `admin`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `auditlog`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `feedbacks`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `graduates`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `users`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webaboutus`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webannouncements`
# --------------------------------------------------------


#
# Delete any existing table `webannouncements`
#

DROP TABLE IF EXISTS `webannouncements`;


#
# Table structure of table `webannouncements`
#

CREATE TABLE `webannouncements` (
  `announ_id` int(11) NOT NULL AUTO_INCREMENT,
  `announ_title` varchar(255) NOT NULL,
  `announ_description` text NOT NULL,
  `announ_status` tinyint(1) NOT NULL DEFAULT '1',
  `announ_poster_id` int(11) NOT NULL,
  `announ_date_modified` datetime NOT NULL,
  `announ_date_added` datetime NOT NULL,
  PRIMARY KEY (`announ_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1 ;

#
# Data contents of table webannouncements (7 records)
#
 
INSERT INTO `webannouncements` VALUES (1, 'Maecenas at tortor sem. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut cursus, enim ac varius commodo, tellus ligula cursus velit, quis sodales augue lorem id arcu. Etiam sit amet pellentesque ipsum.', 'Maecenas at tortor sem. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut cursus, enim ac varius commodo, tellus ligula cursus velit, quis sodales augue lorem id arcu. Etiam sit amet pellentesque ipsum. Pellentesque venenatis lorem et ligula euismod, nec commodo felis tristique. Proin libero quam, bibendum vitae mi sagittis, tempor elementum velit. Nulla convallis tempor nisi, semper molestie eros tempus vitae. Ut viverra ligula tempus lorem eleifend, at sagittis purus malesuada. Pellentesque vehicula tincidunt metus a porta.', 1, 1, '2017-02-20 12:43:49', '2017-02-20 12:43:49') ; 
INSERT INTO `webannouncements` VALUES (2, 'Pellentesque eu ultricies leo. Nulla ullamcorper sem mauris, sit amet congue nisi sollicitudin non. Sed venenatis euismod pretium. ', 'Pellentesque eu ultricies leo. Nulla ullamcorper sem mauris, sit amet congue nisi sollicitudin non. Sed venenatis euismod pretium. Vivamus sit amet erat vehicula, semper arcu ut, mattis purus. Nunc at semper sem, sit amet facilisis risus. Fusce interdum egestas finibus. Proin ac tempus nulla. Nullam id ipsum enim. Vivamus sollicitudin blandit pharetra. Donec dictum ligula nisi, non ornare diam venenatis a. In pharetra turpis id elit fermentum sodales. Integer euismod nisl sed facilisis laoreet. Aenean lobortis ullamcorper dapibus. Pellentesque volutpat laoreet hendrerit.

Suspendisse potenti. Donec sed laoreet ipsum. Donec non diam placerat, porta lectus eget, pulvinar quam. Nullam at nulla at dolor consequat dictum. Proin a scelerisque nisi. Ut rhoncus facilisis nibh feugiat tempor. Aliquam erat volutpat.', 1, 1, '2017-02-20 12:44:01', '2017-02-20 12:44:01') ; 
INSERT INTO `webannouncements` VALUES (3, 'Suspendisse potenti. Donec sed laoreet ipsum. Donec non diam placerat, porta lectus eget, pulvinar quam. Nullam at nulla at dolor consequat dictum.', 'Suspendisse potenti. Donec sed laoreet ipsum. Donec non diam placerat, porta lectus eget, pulvinar quam. Nullam at nulla at dolor consequat dictum. Proin a scelerisque nisi. Ut rhoncus facilisis nibh feugiat tempor. Aliquam erat volutpat.

Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Sed in nulla purus. Aliquam lacinia, eros vel volutpat mattis, purus massa sagittis erat, vitae ultrices nisi odio a libero. Praesent bibendum convallis porttitor. Curabitur augue elit, pretium at risus vitae, interdum porta lacus. Integer quis condimentum lectus, nec tempus sem. Maecenas eleifend dui tempor condimentum mollis. Vivamus ut lorem id ipsum sodales efficitur. Donec magna dolor, vulputate non ante vel, tincidunt rutrum nulla. Vivamus pulvinar felis eros, quis pellentesque quam suscipit non. Vestibulum neque orci, convallis sed enim sit amet, rutrum bibendum risus. Curabitur eu ultrices elit. Pellentesque lectus tellus, volutpat sit amet pharetra quis, gravida vitae lacus. Sed euismod enim ut mauris elementum, nec congue neque facilisis. Phasellus eu molestie nulla, dictum sodales nisl.', 1, 1, '2017-02-20 12:44:14', '2017-02-20 12:44:14') ; 
INSERT INTO `webannouncements` VALUES (4, 'Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos.', 'Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Sed in nulla purus. Aliquam lacinia, eros vel volutpat mattis, purus massa sagittis erat, vitae ultrices nisi odio a libero. Praesent bibendum convallis porttitor. Curabitur augue elit, pretium at risus vitae, interdum porta lacus. Integer quis condimentum lectus, nec tempus sem. Maecenas eleifend dui tempor condimentum mollis. Vivamus ut lorem id ipsum sodales efficitur. Donec magna dolor, vulputate non ante vel, tincidunt rutrum nulla. Vivamus pulvinar felis eros, quis pellentesque quam suscipit non. Vestibulum neque orci, convallis sed enim sit amet, rutrum bibendum risus. Curabitur eu ultrices elit. Pellentesque lectus tellus, volutpat sit amet pharetra quis, gravida vitae lacus. Sed euismod enim ut mauris elementum, nec congue neque facilisis. Phasellus eu molestie nulla, dictum sodales nisl.', 1, 1, '2017-02-20 12:44:29', '2017-02-20 12:44:29') ; 
INSERT INTO `webannouncements` VALUES (5, 'Nam neque mauris, consectetur in varius id, elementum vel dolor. Sed vitae massa quis magna fermentum convallis sed venenatis diam. ', 'Nam neque mauris, consectetur in varius id, elementum vel dolor. Sed vitae massa quis magna fermentum convallis sed venenatis diam. Curabitur facilisis, lorem a ornare convallis, neque ligula facilisis nulla, a ultricies odio diam a mi. Phasellus lobortis gravida ligula in vulputate. Duis pellentesque pulvinar viverra. Etiam id suscipit velit, vitae placerat tortor. Ut faucibus ante ipsum, quis ultrices nisi hendrerit vel. Sed euismod velit a neque scelerisque aliquet. Vestibulum dictum eget ante id aliquam.

Nunc rutrum, libero ac dignissim lobortis, odio lacus laoreet urna, non vulputate ex libero in odio. In quis hendrerit velit. Suspendisse cursus justo augue, ut tempus est facilisis non. Donec ac lectus ut felis bibendum malesuada blandit vitae nisi. Nulla facilisi. Praesent facilisis elementum sem a venenatis. Sed accumsan eros vel felis auctor vestibulum. Pellentesque vitae massa ac diam ullamcorper eleifend mattis at quam. Suspendisse non ante efficitur, congue diam ut, placerat dolor. Sed aliquam dolor nibh, a scelerisque tellus pharetra eu. Morbi convallis, erat viverra malesuada fermentum, felis leo tincidunt lacus, ut mollis sem arcu eu odio. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae;', 1, 1, '2017-02-20 12:44:43', '2017-02-20 12:44:43') ; 
INSERT INTO `webannouncements` VALUES (6, 'Nunc rutrum, libero ac dignissim lobortis, odio lacus laoreet urna, non vulputate ex libero in odio. In quis hendrerit velit.', 'Nunc rutrum, libero ac dignissim lobortis, odio lacus laoreet urna, non vulputate ex libero in odio. In quis hendrerit velit. Suspendisse cursus justo augue, ut tempus est facilisis non. Donec ac lectus ut felis bibendum malesuada blandit vitae nisi. Nulla facilisi. Praesent facilisis elementum sem a venenatis. Sed accumsan eros vel felis auctor vestibulum. Pellentesque vitae massa ac diam ullamcorper eleifend mattis at quam. Suspendisse non ante efficitur, congue diam ut, placerat dolor. Sed aliquam dolor nibh, a scelerisque tellus pharetra eu. Morbi convallis, erat viverra malesuada fermentum, felis leo tincidunt lacus, ut mollis sem arcu eu odio. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae;', 1, 1, '2017-02-20 12:44:55', '2017-02-20 12:44:55') ; 
INSERT INTO `webannouncements` VALUES (7, 'Nulla convallis nisl a ante facilisis suscipit. Morbi sit amet imperdiet tortor. Duis posuere gravida nisl, sit amet posuere tortor dictum blandit.', 'Nulla convallis nisl a ante facilisis suscipit. Morbi sit amet imperdiet tortor. Duis posuere gravida nisl, sit amet posuere tortor dictum blandit. Cras ultricies iaculis vulputate. Fusce non turpis porttitor, ornare diam at, cursus ante. Donec at velit magna. Nunc est leo, pretium at dolor a, commodo malesuada neque. Maecenas ultrices in ex ac laoreet. Cras accumsan mi vitae augue consequat, vitae scelerisque est fermentum. Donec vehicula risus ut libero aliquet ultricies. Nulla facilisi.

Integer tortor est, aliquet nec sapien sit amet, commodo consectetur arcu. Curabitur bibendum erat rutrum lorem semper, id blandit diam luctus. Sed suscipit est non risus viverra, in viverra quam hendrerit. Aliquam elit risus, vulputate vel nulla vulputate, consequat venenatis ex. Suspendisse potenti. Cras aliquet metus vitae turpis vestibulum viverra. Donec scelerisque dolor ultricies purus malesuada euismod. Cras eleifend porta elementum. Quisque malesuada leo dolor. Cras consequat leo quis imperdiet suscipit. Vestibulum laoreet risus a nunc ullamcorper viverra. Maecenas hendrerit ante id justo porta, ut ornare mi hendrerit.', 1, 1, '2017-02-20 12:47:17', '2017-02-20 12:45:10') ;
#
# End of data contents of table webannouncements
# --------------------------------------------------------

# MySQL database backup
#
# Generated: Friday 3. March 2017 08:04 PHT
# Hostname: localhost
# Database: `alumni`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `admin`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `auditlog`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `feedbacks`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `graduates`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `users`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webaboutus`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webannouncements`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webbanner`
# --------------------------------------------------------


#
# Delete any existing table `webbanner`
#

DROP TABLE IF EXISTS `webbanner`;


#
# Table structure of table `webbanner`
#

CREATE TABLE `webbanner` (
  `banner_id` int(11) NOT NULL AUTO_INCREMENT,
  `banner_image` varchar(255) NOT NULL,
  `banner_title` varchar(100) NOT NULL,
  `banner_status` tinyint(1) NOT NULL DEFAULT '1',
  `banner_poster_id` int(11) NOT NULL,
  `banner_date_modified` datetime NOT NULL,
  `banner_date_added` datetime NOT NULL,
  PRIMARY KEY (`banner_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1 ;

#
# Data contents of table webbanner (1 records)
#
 
INSERT INTO `webbanner` VALUES (1, 'raffle.jpg', 'CCA Alumni First Fund Raising Event', 1, 1, '2017-02-20 12:47:58', '2017-02-13 20:32:15') ;
#
# End of data contents of table webbanner
# --------------------------------------------------------

# MySQL database backup
#
# Generated: Friday 3. March 2017 08:04 PHT
# Hostname: localhost
# Database: `alumni`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `admin`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `auditlog`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `feedbacks`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `graduates`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `users`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webaboutus`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webannouncements`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webbanner`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webcontactus`
# --------------------------------------------------------


#
# Delete any existing table `webcontactus`
#

DROP TABLE IF EXISTS `webcontactus`;


#
# Table structure of table `webcontactus`
#

CREATE TABLE `webcontactus` (
  `contact_id` int(11) NOT NULL AUTO_INCREMENT,
  `contact_phone` varchar(30) NOT NULL,
  `contact_mobile` varchar(30) NOT NULL,
  `contact_email` varchar(100) NOT NULL,
  `contact_address` varchar(255) NOT NULL,
  `contact_fax` varchar(30) NOT NULL,
  `contact_date_modified` datetime NOT NULL,
  `contact_date_added` datetime NOT NULL,
  PRIMARY KEY (`contact_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ;

#
# Data contents of table webcontactus (0 records)
#

#
# End of data contents of table webcontactus
# --------------------------------------------------------

# MySQL database backup
#
# Generated: Friday 3. March 2017 08:04 PHT
# Hostname: localhost
# Database: `alumni`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `admin`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `auditlog`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `feedbacks`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `graduates`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `users`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webaboutus`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webannouncements`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webbanner`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webcontactus`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webjobs`
# --------------------------------------------------------


#
# Delete any existing table `webjobs`
#

DROP TABLE IF EXISTS `webjobs`;


#
# Table structure of table `webjobs`
#

CREATE TABLE `webjobs` (
  `job_id` int(11) NOT NULL AUTO_INCREMENT,
  `job_title` varchar(500) NOT NULL,
  `job_company` varchar(255) NOT NULL,
  `job_positions` varchar(500) NOT NULL,
  `job_vacancy` varchar(500) NOT NULL,
  `job_description` text NOT NULL,
  `job_poster_id` int(11) NOT NULL,
  `job_status` tinyint(1) NOT NULL DEFAULT '1',
  `job_date_modified` datetime NOT NULL,
  `job_date_added` datetime NOT NULL,
  PRIMARY KEY (`job_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1 ;

#
# Data contents of table webjobs (1 records)
#
 
INSERT INTO `webjobs` VALUES (1, 'Litigation Lawyer', 'Global Estate Resorts, Inc. (a subsidiary of Megaworld Corporation)', 'Litigation Lawyer', '5', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#039;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 1, 1, '2017-02-20 13:23:25', '2017-02-20 13:13:27') ;
#
# End of data contents of table webjobs
# --------------------------------------------------------

# MySQL database backup
#
# Generated: Friday 3. March 2017 08:04 PHT
# Hostname: localhost
# Database: `alumni`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `admin`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `auditlog`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `feedbacks`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `graduates`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `users`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webaboutus`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webannouncements`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webbanner`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webcontactus`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webjobs`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webmenu`
# --------------------------------------------------------


#
# Delete any existing table `webmenu`
#

DROP TABLE IF EXISTS `webmenu`;


#
# Table structure of table `webmenu`
#

CREATE TABLE `webmenu` (
  `menu_id` int(11) NOT NULL AUTO_INCREMENT,
  `menu_title` varchar(50) NOT NULL,
  `menu_link` varchar(255) NOT NULL,
  `menu_status` tinyint(1) NOT NULL DEFAULT '1',
  `menu_position` tinyint(4) NOT NULL,
  `menu_date_modified` datetime NOT NULL,
  `menu_date_added` datetime NOT NULL,
  PRIMARY KEY (`menu_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1 ;

#
# Data contents of table webmenu (5 records)
#
 
INSERT INTO `webmenu` VALUES (1, 'Home', 'index', 1, 1, '2017-02-20 13:35:09', '2017-02-20 13:35:09') ; 
INSERT INTO `webmenu` VALUES (2, 'News', 'news', 1, 2, '2017-02-17 11:02:00', '2017-02-17 11:02:00') ; 
INSERT INTO `webmenu` VALUES (3, 'Announcements', 'announcements', 1, 3, '2017-02-17 11:02:13', '2017-02-17 11:02:13') ; 
INSERT INTO `webmenu` VALUES (4, 'About Us', 'about-us', 1, 4, '2017-02-17 11:02:25', '2017-02-17 11:02:25') ; 
INSERT INTO `webmenu` VALUES (5, 'Contact Us', 'contact-us', 1, 5, '2017-02-17 11:02:36', '2017-02-17 11:02:36') ;
#
# End of data contents of table webmenu
# --------------------------------------------------------

# MySQL database backup
#
# Generated: Friday 3. March 2017 08:04 PHT
# Hostname: localhost
# Database: `alumni`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `admin`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `auditlog`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `feedbacks`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `graduates`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `users`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webaboutus`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webannouncements`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webbanner`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webcontactus`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webjobs`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webmenu`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webnews`
# --------------------------------------------------------


#
# Delete any existing table `webnews`
#

DROP TABLE IF EXISTS `webnews`;


#
# Table structure of table `webnews`
#

CREATE TABLE `webnews` (
  `news_id` int(11) NOT NULL AUTO_INCREMENT,
  `news_title` varchar(255) NOT NULL,
  `news_description` text NOT NULL,
  `news_image` varchar(500) NOT NULL,
  `news_status` tinyint(1) NOT NULL DEFAULT '1',
  `news_poster_id` int(11) NOT NULL,
  `news_date_modified` datetime NOT NULL,
  `news_date_added` datetime NOT NULL,
  PRIMARY KEY (`news_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1 ;

#
# Data contents of table webnews (7 records)
#
 
INSERT INTO `webnews` VALUES (1, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis feugiat quam velit, vitae ornare libero pellentesque ut.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis feugiat quam velit, vitae ornare libero pellentesque ut. Ut tempus augue sit amet ipsum elementum, eget faucibus erat molestie. Praesent in eros rutrum, ornare leo vitae, interdum nibh. Suspendisse consectetur eget justo non lacinia. In fermentum luctus condimentum. Morbi a libero molestie, facilisis mauris pellentesque, fermentum orci. Vivamus eget risus lacinia, scelerisque dui in, lobortis leo. Aliquam et ultricies dui. Nunc pharetra, enim eu efficitur molestie, metus sem mattis risus, tristique fringilla libero nulla et felis. Nam id sodales elit. Nullam elementum volutpat tortor, id feugiat erat placerat eu.

Suspendisse sit amet porta orci. Nam ultricies nisi ante. Nulla vel arcu sodales, varius nisi in, porttitor orci. Sed viverra felis eget lacus faucibus hendrerit. Cras erat turpis, faucibus id porta nec, mattis vel velit. Maecenas non magna sit amet velit pretium consectetur. Proin id nulla dictum, euismod purus eget, malesuada augue. Praesent eu sapien risus. Curabitur id nisi neque.', '1.jpg', 1, 1, '2017-02-20 12:38:37', '2017-02-20 12:38:37') ; 
INSERT INTO `webnews` VALUES (2, 'Suspendisse sit amet porta orci. Nam ultricies nisi ante. Nulla vel arcu sodales, varius nisi in, porttitor orci. Sed viverra felis eget lacus faucibus hendrerit.', 'Suspendisse sit amet porta orci. Nam ultricies nisi ante. Nulla vel arcu sodales, varius nisi in, porttitor orci. Sed viverra felis eget lacus faucibus hendrerit. Cras erat turpis, faucibus id porta nec, mattis vel velit. Maecenas non magna sit amet velit pretium consectetur. Proin id nulla dictum, euismod purus eget, malesuada augue. Praesent eu sapien risus. Curabitur id nisi neque.

Sed convallis commodo quam ut scelerisque. Fusce non pharetra lectus. Maecenas euismod tincidunt orci ac efficitur. Sed lectus odio, imperdiet nec tincidunt a, varius eget metus. Fusce ullamcorper tempor aliquet. Sed tempus efficitur sapien, in tempor metus aliquam non. Ut dapibus risus sit amet nisi scelerisque, sed faucibus tellus feugiat. Proin facilisis erat magna, eu molestie mi venenatis id. Praesent eleifend ante eget massa dignissim, nec vulputate orci suscipit.', '2.jpg', 1, 1, '2017-02-20 12:40:27', '2017-02-20 12:40:27') ; 
INSERT INTO `webnews` VALUES (3, 'Sed convallis commodo quam ut scelerisque. Fusce non pharetra lectus. Maecenas euismod tincidunt orci ac efficitur.', 'Sed convallis commodo quam ut scelerisque. Fusce non pharetra lectus. Maecenas euismod tincidunt orci ac efficitur. Sed lectus odio, imperdiet nec tincidunt a, varius eget metus. Fusce ullamcorper tempor aliquet. Sed tempus efficitur sapien, in tempor metus aliquam non. Ut dapibus risus sit amet nisi scelerisque, sed faucibus tellus feugiat. Proin facilisis erat magna, eu molestie mi venenatis id. Praesent eleifend ante eget massa dignissim, nec vulputate orci suscipit.

Nullam accumsan est vitae ante imperdiet, volutpat porttitor odio condimentum. Suspendisse condimentum eget purus non fermentum. In elit nunc, blandit in augue at, volutpat tincidunt nibh. Donec vestibulum, lorem eget pretium hendrerit, lacus enim bibendum nisl, quis pulvinar quam ex et dolor. Donec sed leo lobortis, eleifend leo ac, dignissim magna. Suspendisse mattis sapien tincidunt, gravida augue id, rhoncus tellus. Sed eu auctor lorem. Etiam id turpis urna. Donec at posuere nunc, id auctor orci. Nam sapien eros, egestas vitae risus nec, commodo consequat urna. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Praesent fringilla neque eros, tristique convallis felis laoreet non. Aliquam in nibh in libero lacinia faucibus a id justo. Interdum et malesuada fames ac ante ipsum primis in faucibus.', '3.jpg', 1, 1, '2017-02-20 12:40:49', '2017-02-20 12:40:49') ; 
INSERT INTO `webnews` VALUES (4, 'Nullam accumsan est vitae ante imperdiet, volutpat porttitor odio condimentum. Suspendisse condimentum eget purus non fermentum. ', 'Nullam accumsan est vitae ante imperdiet, volutpat porttitor odio condimentum. Suspendisse condimentum eget purus non fermentum. In elit nunc, blandit in augue at, volutpat tincidunt nibh. Donec vestibulum, lorem eget pretium hendrerit, lacus enim bibendum nisl, quis pulvinar quam ex et dolor. Donec sed leo lobortis, eleifend leo ac, dignissim magna. Suspendisse mattis sapien tincidunt, gravida augue id, rhoncus tellus. Sed eu auctor lorem. Etiam id turpis urna. Donec at posuere nunc, id auctor orci. Nam sapien eros, egestas vitae risus nec, commodo consequat urna. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Praesent fringilla neque eros, tristique convallis felis laoreet non. Aliquam in nibh in libero lacinia faucibus a id justo. Interdum et malesuada fames ac ante ipsum primis in faucibus.', '4.jpg', 1, 1, '2017-02-20 12:41:06', '2017-02-20 12:41:06') ; 
INSERT INTO `webnews` VALUES (5, 'Aaaliquam id dui pulvinar, mattis sem in, maximus elit. Cras convallis lobortis quam. Etiam tristique, est id blandit imperdiet, sapien nulla vestibulum ligula, ut rhoncus ligula libero a felis.', 'Aliquam id dui pulvinar, mattis sem in, maximus elit. Cras convallis lobortis quam. Etiam tristique, est id blandit imperdiet, sapien nulla vestibulum ligula, ut rhoncus ligula libero a felis. Morbi tincidunt felis sit amet urna pellentesque lacinia. Maecenas urna elit, posuere quis libero porttitor, placerat aliquet justo. In hac habitasse platea dictumst. Suspendisse elementum vel neque sed aliquet. Curabitur nec cursus mi. Proin id pretium magna, ac tempus sapien. Nam ornare vulputate gravida. Aenean ut tristique lacus. Donec suscipit, ex sed consectetur imperdiet, ex eros pellentesque massa, et scelerisque felis eros non elit. Nulla diam mi, iaculis nec ex quis, accumsan euismod augue.

Vestibulum a ornare est. Vivamus fermentum laoreet dui id tristique. Donec pulvinar tempor mi, ac cursus nibh tempor sit amet. Ut sagittis arcu enim, nec luctus quam vestibulum a. Proin non interdum metus. Vivamus ornare lorem nec justo consequat, in sagittis libero sodales. Donec ullamcorper tristique ligula non consectetur. Vivamus cursus nec lacus nec convallis. Pellentesque eu consectetur nibh. Donec volutpat sodales accumsan. Nullam commodo mattis semper. Donec auctor eu nisi in volutpat. Vivamus sit amet lorem mattis, condimentum augue eu, accumsan lorem. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Quisque lacinia efficitur massa at bibendum. Suspendisse iaculis elit ante.', '5.jpg', 1, 1, '2017-02-20 12:42:21', '2017-02-20 12:41:29') ; 
INSERT INTO `webnews` VALUES (6, 'Vestibulum a ornare est. Vivamus fermentum laoreet dui id tristique. Donec pulvinar tempor mi, ac cursus nibh tempor sit amet. Ut sagittis arcu enim, nec luctus quam vestibulum a.', 'Vestibulum a ornare est. Vivamus fermentum laoreet dui id tristique. Donec pulvinar tempor mi, ac cursus nibh tempor sit amet. Ut sagittis arcu enim, nec luctus quam vestibulum a. Proin non interdum metus. Vivamus ornare lorem nec justo consequat, in sagittis libero sodales. Donec ullamcorper tristique ligula non consectetur. Vivamus cursus nec lacus nec convallis. Pellentesque eu consectetur nibh. Donec volutpat sodales accumsan. Nullam commodo mattis semper. Donec auctor eu nisi in volutpat. Vivamus sit amet lorem mattis, condimentum augue eu, accumsan lorem. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Quisque lacinia efficitur massa at bibendum. Suspendisse iaculis elit ante.', '6.jpg', 1, 1, '2017-02-20 12:42:49', '2017-02-20 12:42:49') ; 
INSERT INTO `webnews` VALUES (7, 'Integer eu fermentum erat. Sed sollicitudin sollicitudin est, at molestie augue sagittis quis. Suspendisse pellentesque non lorem vitae vehicula. Donec pellentesque ligula vitae risus pulvinar dictum. ', 'Integer eu fermentum erat. Sed sollicitudin sollicitudin est, at molestie augue sagittis quis. Suspendisse pellentesque non lorem vitae vehicula. Donec pellentesque ligula vitae risus pulvinar dictum. Ut commodo mollis quam, quis tempus neque scelerisque at. Vivamus porta risus justo, sit amet luctus felis eleifend ut. Suspendisse id dui metus. Mauris varius quam ante, eget cursus arcu congue in. Quisque ut urna accumsan, efficitur purus vitae, varius libero. Etiam a velit odio. Duis malesuada purus luctus consequat rhoncus. Nulla dapibus neque et lacus fringilla, eu semper dolor tincidunt. In sagittis tortor et nisi sagittis finibus. Pellentesque iaculis ligula nec erat bibendum tincidunt.

Maecenas at tortor sem. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut cursus, enim ac varius commodo, tellus ligula cursus velit, quis sodales augue lorem id arcu. Etiam sit amet pellentesque ipsum. Pellentesque venenatis lorem et ligula euismod, nec commodo felis tristique. Proin libero quam, bibendum vitae mi sagittis, tempor elementum velit. Nulla convallis tempor nisi, semper molestie eros tempus vitae. Ut viverra ligula tempus lorem eleifend, at sagittis purus malesuada. Pellentesque vehicula tincidunt metus a porta.', '6_2.jpg', 1, 1, '2017-02-20 12:43:08', '2017-02-20 12:43:08') ;
#
# End of data contents of table webnews
# --------------------------------------------------------

# MySQL database backup
#
# Generated: Friday 3. March 2017 08:04 PHT
# Hostname: localhost
# Database: `alumni`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `admin`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `auditlog`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `feedbacks`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `graduates`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `users`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webaboutus`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webannouncements`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webbanner`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webcontactus`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webjobs`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webmenu`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webnews`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webslider`
# --------------------------------------------------------


#
# Delete any existing table `webslider`
#

DROP TABLE IF EXISTS `webslider`;


#
# Table structure of table `webslider`
#

CREATE TABLE `webslider` (
  `slider_id` int(11) NOT NULL AUTO_INCREMENT,
  `slider_image` varchar(255) NOT NULL,
  `slider_caption` text NOT NULL,
  `slider_title` varchar(255) NOT NULL,
  `slider_status` tinyint(1) NOT NULL DEFAULT '1',
  `slider_poster_id` int(11) NOT NULL,
  `slider_date_modified` datetime NOT NULL,
  `slider_date_added` datetime NOT NULL,
  PRIMARY KEY (`slider_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ;

#
# Data contents of table webslider (0 records)
#

#
# End of data contents of table webslider
# --------------------------------------------------------

# MySQL database backup
#
# Generated: Friday 3. March 2017 08:04 PHT
# Hostname: localhost
# Database: `alumni`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `admin`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `auditlog`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `feedbacks`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `graduates`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `users`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webaboutus`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webannouncements`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webbanner`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webcontactus`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webjobs`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webmenu`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webnews`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webslider`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `websubmenu`
# --------------------------------------------------------


#
# Delete any existing table `websubmenu`
#

DROP TABLE IF EXISTS `websubmenu`;


#
# Table structure of table `websubmenu`
#

CREATE TABLE `websubmenu` (
  `submenu_id` int(11) NOT NULL AUTO_INCREMENT,
  `submenu_menu_id` int(11) NOT NULL,
  `submenu_title` varchar(50) NOT NULL,
  `submenu_link` varchar(255) NOT NULL,
  `submenu_status` tinyint(1) NOT NULL DEFAULT '1',
  `submenu_position` tinyint(4) NOT NULL,
  `submenu_date_modified` datetime NOT NULL,
  `submenu_date_added` datetime NOT NULL,
  PRIMARY KEY (`submenu_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1 ;

#
# Data contents of table websubmenu (1 records)
#
 
INSERT INTO `websubmenu` VALUES (1, 1, 'dfddd', 'ddddd', 2, 0, '2017-02-20 13:35:23', '2017-02-20 13:35:15') ;
#
# End of data contents of table websubmenu
# --------------------------------------------------------

# MySQL database backup
#
# Generated: Friday 3. March 2017 08:07 PHT
# Hostname: localhost
# Database: `alumni`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `admin`
# --------------------------------------------------------


#
# Delete any existing table `admin`
#

DROP TABLE IF EXISTS `admin`;


#
# Table structure of table `admin`
#

CREATE TABLE `admin` (
  `admin_id` int(11) NOT NULL AUTO_INCREMENT,
  `admin_fname` varchar(50) NOT NULL,
  `admin_mname` varchar(50) NOT NULL,
  `admin_lname` varchar(50) NOT NULL,
  `admin_email` varchar(100) NOT NULL,
  `admin_username` varchar(50) NOT NULL,
  `admin_salt` varchar(50) NOT NULL,
  `admin_password` varchar(100) NOT NULL,
  `admin_level` tinyint(1) NOT NULL COMMENT '1=sysad; 2=moderator; 3=viewing;',
  `admin_status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '0=not active; 1=active; 2=disabled;',
  `admin_date_modified` datetime NOT NULL,
  `admin_date_added` datetime NOT NULL,
  PRIMARY KEY (`admin_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1 ;

#
# Data contents of table admin (1 records)
#
 
INSERT INTO `admin` VALUES (1, 'juan', 'santos', 'dela cruz', 'juan23@mail.com', 'admin', '³W÷þdaÂí±ÂùF®9ïÐ0Ÿ€‘ƒÈn·0¢Ã#üå¨', '3640daa0c1fc63a0be23f357f05202ab732697f6bd5bfb93ef00d947cc133461', 1, 1, '2017-02-08 00:00:00', '2017-02-08 00:00:00') ;
#
# End of data contents of table admin
# --------------------------------------------------------

# MySQL database backup
#
# Generated: Friday 3. March 2017 08:07 PHT
# Hostname: localhost
# Database: `alumni`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `admin`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `auditlog`
# --------------------------------------------------------


#
# Delete any existing table `auditlog`
#

DROP TABLE IF EXISTS `auditlog`;


#
# Table structure of table `auditlog`
#

CREATE TABLE `auditlog` (
  `audit_id` int(11) NOT NULL AUTO_INCREMENT,
  `audit_table_affected` varchar(100) NOT NULL,
  `audit_action` varchar(255) NOT NULL,
  `audit_admin_id` int(11) NOT NULL,
  `audit_datetime` datetime NOT NULL,
  PRIMARY KEY (`audit_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ;

#
# Data contents of table auditlog (0 records)
#

#
# End of data contents of table auditlog
# --------------------------------------------------------

# MySQL database backup
#
# Generated: Friday 3. March 2017 08:07 PHT
# Hostname: localhost
# Database: `alumni`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `admin`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `auditlog`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `feedbacks`
# --------------------------------------------------------


#
# Delete any existing table `feedbacks`
#

DROP TABLE IF EXISTS `feedbacks`;


#
# Table structure of table `feedbacks`
#

CREATE TABLE `feedbacks` (
  `fb_id` int(11) NOT NULL AUTO_INCREMENT,
  `fb_name` varchar(150) NOT NULL,
  `fb_email` varchar(150) NOT NULL,
  `fb_subject` varchar(500) NOT NULL,
  `fb_message` text NOT NULL,
  `fb_date_added` datetime NOT NULL,
  PRIMARY KEY (`fb_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1 ;

#
# Data contents of table feedbacks (1 records)
#
 
INSERT INTO `feedbacks` VALUES (1, 'sdfsdfs', 'dfssdf@asdasd.asd', 'asdasd', 'asdasdasdasd', '2017-02-20 15:18:19') ;
#
# End of data contents of table feedbacks
# --------------------------------------------------------

# MySQL database backup
#
# Generated: Friday 3. March 2017 08:07 PHT
# Hostname: localhost
# Database: `alumni`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `admin`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `auditlog`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `feedbacks`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `graduates`
# --------------------------------------------------------


#
# Delete any existing table `graduates`
#

DROP TABLE IF EXISTS `graduates`;


#
# Table structure of table `graduates`
#

CREATE TABLE `graduates` (
  `grad_id` int(11) NOT NULL AUTO_INCREMENT,
  `grad_fname` varchar(50) NOT NULL,
  `grad_mname` varchar(50) NOT NULL,
  `grad_lname` varchar(50) NOT NULL,
  `grad_gender` tinyint(1) NOT NULL COMMENT '1=male; 2=female',
  `grad_birthday` date NOT NULL,
  `grad_student_id` varchar(11) NOT NULL,
  `grad_course` varchar(100) NOT NULL,
  `grad_dept` varchar(100) NOT NULL,
  `grad_year_graduated` year(4) NOT NULL,
  `grad_so_number` varchar(50) NOT NULL,
  PRIMARY KEY (`grad_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ;

#
# Data contents of table graduates (0 records)
#

#
# End of data contents of table graduates
# --------------------------------------------------------

# MySQL database backup
#
# Generated: Friday 3. March 2017 08:07 PHT
# Hostname: localhost
# Database: `alumni`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `admin`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `auditlog`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `feedbacks`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `graduates`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `users`
# --------------------------------------------------------


#
# Delete any existing table `users`
#

DROP TABLE IF EXISTS `users`;


#
# Table structure of table `users`
#

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_grad_id` int(11) NOT NULL,
  `user_email` varchar(100) NOT NULL,
  `user_contact` varchar(50) NOT NULL,
  `user_address` varchar(255) NOT NULL,
  `user_username` varchar(50) NOT NULL,
  `user_salt` varchar(100) NOT NULL,
  `user_password` varchar(100) NOT NULL,
  `user_status` tinyint(1) NOT NULL DEFAULT '1',
  `user_employed` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0=not employed; 1=employed;',
  `user_company` varchar(155) NOT NULL,
  `user_position` varchar(100) NOT NULL,
  `user_job_level` varchar(100) NOT NULL,
  `user_date_modified` datetime NOT NULL,
  `user_date_added` datetime NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ;

#
# Data contents of table users (0 records)
#

#
# End of data contents of table users
# --------------------------------------------------------

# MySQL database backup
#
# Generated: Friday 3. March 2017 08:07 PHT
# Hostname: localhost
# Database: `alumni`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `admin`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `auditlog`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `feedbacks`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `graduates`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `users`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webaboutus`
# --------------------------------------------------------


#
# Delete any existing table `webaboutus`
#

DROP TABLE IF EXISTS `webaboutus`;


#
# Table structure of table `webaboutus`
#

CREATE TABLE `webaboutus` (
  `about_id` int(11) NOT NULL AUTO_INCREMENT,
  `about_mission` text NOT NULL,
  `about_vision` text NOT NULL,
  `about_history` text NOT NULL,
  `about_date_modified` datetime NOT NULL,
  `about_date_added` datetime NOT NULL,
  PRIMARY KEY (`about_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ;

#
# Data contents of table webaboutus (0 records)
#

#
# End of data contents of table webaboutus
# --------------------------------------------------------

# MySQL database backup
#
# Generated: Friday 3. March 2017 08:07 PHT
# Hostname: localhost
# Database: `alumni`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `admin`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `auditlog`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `feedbacks`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `graduates`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `users`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webaboutus`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webannouncements`
# --------------------------------------------------------


#
# Delete any existing table `webannouncements`
#

DROP TABLE IF EXISTS `webannouncements`;


#
# Table structure of table `webannouncements`
#

CREATE TABLE `webannouncements` (
  `announ_id` int(11) NOT NULL AUTO_INCREMENT,
  `announ_title` varchar(255) NOT NULL,
  `announ_description` text NOT NULL,
  `announ_status` tinyint(1) NOT NULL DEFAULT '1',
  `announ_poster_id` int(11) NOT NULL,
  `announ_date_modified` datetime NOT NULL,
  `announ_date_added` datetime NOT NULL,
  PRIMARY KEY (`announ_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1 ;

#
# Data contents of table webannouncements (7 records)
#
 
INSERT INTO `webannouncements` VALUES (1, 'Maecenas at tortor sem. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut cursus, enim ac varius commodo, tellus ligula cursus velit, quis sodales augue lorem id arcu. Etiam sit amet pellentesque ipsum.', 'Maecenas at tortor sem. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut cursus, enim ac varius commodo, tellus ligula cursus velit, quis sodales augue lorem id arcu. Etiam sit amet pellentesque ipsum. Pellentesque venenatis lorem et ligula euismod, nec commodo felis tristique. Proin libero quam, bibendum vitae mi sagittis, tempor elementum velit. Nulla convallis tempor nisi, semper molestie eros tempus vitae. Ut viverra ligula tempus lorem eleifend, at sagittis purus malesuada. Pellentesque vehicula tincidunt metus a porta.', 1, 1, '2017-02-20 12:43:49', '2017-02-20 12:43:49') ; 
INSERT INTO `webannouncements` VALUES (2, 'Pellentesque eu ultricies leo. Nulla ullamcorper sem mauris, sit amet congue nisi sollicitudin non. Sed venenatis euismod pretium. ', 'Pellentesque eu ultricies leo. Nulla ullamcorper sem mauris, sit amet congue nisi sollicitudin non. Sed venenatis euismod pretium. Vivamus sit amet erat vehicula, semper arcu ut, mattis purus. Nunc at semper sem, sit amet facilisis risus. Fusce interdum egestas finibus. Proin ac tempus nulla. Nullam id ipsum enim. Vivamus sollicitudin blandit pharetra. Donec dictum ligula nisi, non ornare diam venenatis a. In pharetra turpis id elit fermentum sodales. Integer euismod nisl sed facilisis laoreet. Aenean lobortis ullamcorper dapibus. Pellentesque volutpat laoreet hendrerit.

Suspendisse potenti. Donec sed laoreet ipsum. Donec non diam placerat, porta lectus eget, pulvinar quam. Nullam at nulla at dolor consequat dictum. Proin a scelerisque nisi. Ut rhoncus facilisis nibh feugiat tempor. Aliquam erat volutpat.', 1, 1, '2017-02-20 12:44:01', '2017-02-20 12:44:01') ; 
INSERT INTO `webannouncements` VALUES (3, 'Suspendisse potenti. Donec sed laoreet ipsum. Donec non diam placerat, porta lectus eget, pulvinar quam. Nullam at nulla at dolor consequat dictum.', 'Suspendisse potenti. Donec sed laoreet ipsum. Donec non diam placerat, porta lectus eget, pulvinar quam. Nullam at nulla at dolor consequat dictum. Proin a scelerisque nisi. Ut rhoncus facilisis nibh feugiat tempor. Aliquam erat volutpat.

Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Sed in nulla purus. Aliquam lacinia, eros vel volutpat mattis, purus massa sagittis erat, vitae ultrices nisi odio a libero. Praesent bibendum convallis porttitor. Curabitur augue elit, pretium at risus vitae, interdum porta lacus. Integer quis condimentum lectus, nec tempus sem. Maecenas eleifend dui tempor condimentum mollis. Vivamus ut lorem id ipsum sodales efficitur. Donec magna dolor, vulputate non ante vel, tincidunt rutrum nulla. Vivamus pulvinar felis eros, quis pellentesque quam suscipit non. Vestibulum neque orci, convallis sed enim sit amet, rutrum bibendum risus. Curabitur eu ultrices elit. Pellentesque lectus tellus, volutpat sit amet pharetra quis, gravida vitae lacus. Sed euismod enim ut mauris elementum, nec congue neque facilisis. Phasellus eu molestie nulla, dictum sodales nisl.', 1, 1, '2017-02-20 12:44:14', '2017-02-20 12:44:14') ; 
INSERT INTO `webannouncements` VALUES (4, 'Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos.', 'Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Sed in nulla purus. Aliquam lacinia, eros vel volutpat mattis, purus massa sagittis erat, vitae ultrices nisi odio a libero. Praesent bibendum convallis porttitor. Curabitur augue elit, pretium at risus vitae, interdum porta lacus. Integer quis condimentum lectus, nec tempus sem. Maecenas eleifend dui tempor condimentum mollis. Vivamus ut lorem id ipsum sodales efficitur. Donec magna dolor, vulputate non ante vel, tincidunt rutrum nulla. Vivamus pulvinar felis eros, quis pellentesque quam suscipit non. Vestibulum neque orci, convallis sed enim sit amet, rutrum bibendum risus. Curabitur eu ultrices elit. Pellentesque lectus tellus, volutpat sit amet pharetra quis, gravida vitae lacus. Sed euismod enim ut mauris elementum, nec congue neque facilisis. Phasellus eu molestie nulla, dictum sodales nisl.', 1, 1, '2017-02-20 12:44:29', '2017-02-20 12:44:29') ; 
INSERT INTO `webannouncements` VALUES (5, 'Nam neque mauris, consectetur in varius id, elementum vel dolor. Sed vitae massa quis magna fermentum convallis sed venenatis diam. ', 'Nam neque mauris, consectetur in varius id, elementum vel dolor. Sed vitae massa quis magna fermentum convallis sed venenatis diam. Curabitur facilisis, lorem a ornare convallis, neque ligula facilisis nulla, a ultricies odio diam a mi. Phasellus lobortis gravida ligula in vulputate. Duis pellentesque pulvinar viverra. Etiam id suscipit velit, vitae placerat tortor. Ut faucibus ante ipsum, quis ultrices nisi hendrerit vel. Sed euismod velit a neque scelerisque aliquet. Vestibulum dictum eget ante id aliquam.

Nunc rutrum, libero ac dignissim lobortis, odio lacus laoreet urna, non vulputate ex libero in odio. In quis hendrerit velit. Suspendisse cursus justo augue, ut tempus est facilisis non. Donec ac lectus ut felis bibendum malesuada blandit vitae nisi. Nulla facilisi. Praesent facilisis elementum sem a venenatis. Sed accumsan eros vel felis auctor vestibulum. Pellentesque vitae massa ac diam ullamcorper eleifend mattis at quam. Suspendisse non ante efficitur, congue diam ut, placerat dolor. Sed aliquam dolor nibh, a scelerisque tellus pharetra eu. Morbi convallis, erat viverra malesuada fermentum, felis leo tincidunt lacus, ut mollis sem arcu eu odio. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae;', 1, 1, '2017-02-20 12:44:43', '2017-02-20 12:44:43') ; 
INSERT INTO `webannouncements` VALUES (6, 'Nunc rutrum, libero ac dignissim lobortis, odio lacus laoreet urna, non vulputate ex libero in odio. In quis hendrerit velit.', 'Nunc rutrum, libero ac dignissim lobortis, odio lacus laoreet urna, non vulputate ex libero in odio. In quis hendrerit velit. Suspendisse cursus justo augue, ut tempus est facilisis non. Donec ac lectus ut felis bibendum malesuada blandit vitae nisi. Nulla facilisi. Praesent facilisis elementum sem a venenatis. Sed accumsan eros vel felis auctor vestibulum. Pellentesque vitae massa ac diam ullamcorper eleifend mattis at quam. Suspendisse non ante efficitur, congue diam ut, placerat dolor. Sed aliquam dolor nibh, a scelerisque tellus pharetra eu. Morbi convallis, erat viverra malesuada fermentum, felis leo tincidunt lacus, ut mollis sem arcu eu odio. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae;', 1, 1, '2017-02-20 12:44:55', '2017-02-20 12:44:55') ; 
INSERT INTO `webannouncements` VALUES (7, 'Nulla convallis nisl a ante facilisis suscipit. Morbi sit amet imperdiet tortor. Duis posuere gravida nisl, sit amet posuere tortor dictum blandit.', 'Nulla convallis nisl a ante facilisis suscipit. Morbi sit amet imperdiet tortor. Duis posuere gravida nisl, sit amet posuere tortor dictum blandit. Cras ultricies iaculis vulputate. Fusce non turpis porttitor, ornare diam at, cursus ante. Donec at velit magna. Nunc est leo, pretium at dolor a, commodo malesuada neque. Maecenas ultrices in ex ac laoreet. Cras accumsan mi vitae augue consequat, vitae scelerisque est fermentum. Donec vehicula risus ut libero aliquet ultricies. Nulla facilisi.

Integer tortor est, aliquet nec sapien sit amet, commodo consectetur arcu. Curabitur bibendum erat rutrum lorem semper, id blandit diam luctus. Sed suscipit est non risus viverra, in viverra quam hendrerit. Aliquam elit risus, vulputate vel nulla vulputate, consequat venenatis ex. Suspendisse potenti. Cras aliquet metus vitae turpis vestibulum viverra. Donec scelerisque dolor ultricies purus malesuada euismod. Cras eleifend porta elementum. Quisque malesuada leo dolor. Cras consequat leo quis imperdiet suscipit. Vestibulum laoreet risus a nunc ullamcorper viverra. Maecenas hendrerit ante id justo porta, ut ornare mi hendrerit.', 1, 1, '2017-02-20 12:47:17', '2017-02-20 12:45:10') ;
#
# End of data contents of table webannouncements
# --------------------------------------------------------

# MySQL database backup
#
# Generated: Friday 3. March 2017 08:07 PHT
# Hostname: localhost
# Database: `alumni`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `admin`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `auditlog`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `feedbacks`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `graduates`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `users`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webaboutus`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webannouncements`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webbanner`
# --------------------------------------------------------


#
# Delete any existing table `webbanner`
#

DROP TABLE IF EXISTS `webbanner`;


#
# Table structure of table `webbanner`
#

CREATE TABLE `webbanner` (
  `banner_id` int(11) NOT NULL AUTO_INCREMENT,
  `banner_image` varchar(255) NOT NULL,
  `banner_title` varchar(100) NOT NULL,
  `banner_status` tinyint(1) NOT NULL DEFAULT '1',
  `banner_poster_id` int(11) NOT NULL,
  `banner_date_modified` datetime NOT NULL,
  `banner_date_added` datetime NOT NULL,
  PRIMARY KEY (`banner_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1 ;

#
# Data contents of table webbanner (1 records)
#
 
INSERT INTO `webbanner` VALUES (1, 'raffle.jpg', 'CCA Alumni First Fund Raising Event', 1, 1, '2017-02-20 12:47:58', '2017-02-13 20:32:15') ;
#
# End of data contents of table webbanner
# --------------------------------------------------------

# MySQL database backup
#
# Generated: Friday 3. March 2017 08:07 PHT
# Hostname: localhost
# Database: `alumni`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `admin`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `auditlog`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `feedbacks`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `graduates`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `users`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webaboutus`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webannouncements`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webbanner`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webcontactus`
# --------------------------------------------------------


#
# Delete any existing table `webcontactus`
#

DROP TABLE IF EXISTS `webcontactus`;


#
# Table structure of table `webcontactus`
#

CREATE TABLE `webcontactus` (
  `contact_id` int(11) NOT NULL AUTO_INCREMENT,
  `contact_phone` varchar(30) NOT NULL,
  `contact_mobile` varchar(30) NOT NULL,
  `contact_email` varchar(100) NOT NULL,
  `contact_address` varchar(255) NOT NULL,
  `contact_fax` varchar(30) NOT NULL,
  `contact_date_modified` datetime NOT NULL,
  `contact_date_added` datetime NOT NULL,
  PRIMARY KEY (`contact_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ;

#
# Data contents of table webcontactus (0 records)
#

#
# End of data contents of table webcontactus
# --------------------------------------------------------

# MySQL database backup
#
# Generated: Friday 3. March 2017 08:07 PHT
# Hostname: localhost
# Database: `alumni`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `admin`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `auditlog`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `feedbacks`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `graduates`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `users`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webaboutus`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webannouncements`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webbanner`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webcontactus`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webjobs`
# --------------------------------------------------------


#
# Delete any existing table `webjobs`
#

DROP TABLE IF EXISTS `webjobs`;


#
# Table structure of table `webjobs`
#

CREATE TABLE `webjobs` (
  `job_id` int(11) NOT NULL AUTO_INCREMENT,
  `job_title` varchar(500) NOT NULL,
  `job_company` varchar(255) NOT NULL,
  `job_positions` varchar(500) NOT NULL,
  `job_vacancy` varchar(500) NOT NULL,
  `job_description` text NOT NULL,
  `job_poster_id` int(11) NOT NULL,
  `job_status` tinyint(1) NOT NULL DEFAULT '1',
  `job_date_modified` datetime NOT NULL,
  `job_date_added` datetime NOT NULL,
  PRIMARY KEY (`job_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1 ;

#
# Data contents of table webjobs (1 records)
#
 
INSERT INTO `webjobs` VALUES (1, 'Litigation Lawyer', 'Global Estate Resorts, Inc. (a subsidiary of Megaworld Corporation)', 'Litigation Lawyer', '5', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#039;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 1, 1, '2017-02-20 13:23:25', '2017-02-20 13:13:27') ;
#
# End of data contents of table webjobs
# --------------------------------------------------------

# MySQL database backup
#
# Generated: Friday 3. March 2017 08:07 PHT
# Hostname: localhost
# Database: `alumni`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `admin`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `auditlog`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `feedbacks`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `graduates`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `users`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webaboutus`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webannouncements`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webbanner`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webcontactus`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webjobs`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webmenu`
# --------------------------------------------------------


#
# Delete any existing table `webmenu`
#

DROP TABLE IF EXISTS `webmenu`;


#
# Table structure of table `webmenu`
#

CREATE TABLE `webmenu` (
  `menu_id` int(11) NOT NULL AUTO_INCREMENT,
  `menu_title` varchar(50) NOT NULL,
  `menu_link` varchar(255) NOT NULL,
  `menu_status` tinyint(1) NOT NULL DEFAULT '1',
  `menu_position` tinyint(4) NOT NULL,
  `menu_date_modified` datetime NOT NULL,
  `menu_date_added` datetime NOT NULL,
  PRIMARY KEY (`menu_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1 ;

#
# Data contents of table webmenu (5 records)
#
 
INSERT INTO `webmenu` VALUES (1, 'Home', 'index', 1, 1, '2017-02-20 13:35:09', '2017-02-20 13:35:09') ; 
INSERT INTO `webmenu` VALUES (2, 'News', 'news', 1, 2, '2017-02-17 11:02:00', '2017-02-17 11:02:00') ; 
INSERT INTO `webmenu` VALUES (3, 'Announcements', 'announcements', 1, 3, '2017-02-17 11:02:13', '2017-02-17 11:02:13') ; 
INSERT INTO `webmenu` VALUES (4, 'About Us', 'about-us', 1, 4, '2017-02-17 11:02:25', '2017-02-17 11:02:25') ; 
INSERT INTO `webmenu` VALUES (5, 'Contact Us', 'contact-us', 1, 5, '2017-02-17 11:02:36', '2017-02-17 11:02:36') ;
#
# End of data contents of table webmenu
# --------------------------------------------------------

# MySQL database backup
#
# Generated: Friday 3. March 2017 08:07 PHT
# Hostname: localhost
# Database: `alumni`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `admin`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `auditlog`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `feedbacks`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `graduates`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `users`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webaboutus`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webannouncements`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webbanner`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webcontactus`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webjobs`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webmenu`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webnews`
# --------------------------------------------------------


#
# Delete any existing table `webnews`
#

DROP TABLE IF EXISTS `webnews`;


#
# Table structure of table `webnews`
#

CREATE TABLE `webnews` (
  `news_id` int(11) NOT NULL AUTO_INCREMENT,
  `news_title` varchar(255) NOT NULL,
  `news_description` text NOT NULL,
  `news_image` varchar(500) NOT NULL,
  `news_status` tinyint(1) NOT NULL DEFAULT '1',
  `news_poster_id` int(11) NOT NULL,
  `news_date_modified` datetime NOT NULL,
  `news_date_added` datetime NOT NULL,
  PRIMARY KEY (`news_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1 ;

#
# Data contents of table webnews (7 records)
#
 
INSERT INTO `webnews` VALUES (1, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis feugiat quam velit, vitae ornare libero pellentesque ut.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis feugiat quam velit, vitae ornare libero pellentesque ut. Ut tempus augue sit amet ipsum elementum, eget faucibus erat molestie. Praesent in eros rutrum, ornare leo vitae, interdum nibh. Suspendisse consectetur eget justo non lacinia. In fermentum luctus condimentum. Morbi a libero molestie, facilisis mauris pellentesque, fermentum orci. Vivamus eget risus lacinia, scelerisque dui in, lobortis leo. Aliquam et ultricies dui. Nunc pharetra, enim eu efficitur molestie, metus sem mattis risus, tristique fringilla libero nulla et felis. Nam id sodales elit. Nullam elementum volutpat tortor, id feugiat erat placerat eu.

Suspendisse sit amet porta orci. Nam ultricies nisi ante. Nulla vel arcu sodales, varius nisi in, porttitor orci. Sed viverra felis eget lacus faucibus hendrerit. Cras erat turpis, faucibus id porta nec, mattis vel velit. Maecenas non magna sit amet velit pretium consectetur. Proin id nulla dictum, euismod purus eget, malesuada augue. Praesent eu sapien risus. Curabitur id nisi neque.', '1.jpg', 1, 1, '2017-02-20 12:38:37', '2017-02-20 12:38:37') ; 
INSERT INTO `webnews` VALUES (2, 'Suspendisse sit amet porta orci. Nam ultricies nisi ante. Nulla vel arcu sodales, varius nisi in, porttitor orci. Sed viverra felis eget lacus faucibus hendrerit.', 'Suspendisse sit amet porta orci. Nam ultricies nisi ante. Nulla vel arcu sodales, varius nisi in, porttitor orci. Sed viverra felis eget lacus faucibus hendrerit. Cras erat turpis, faucibus id porta nec, mattis vel velit. Maecenas non magna sit amet velit pretium consectetur. Proin id nulla dictum, euismod purus eget, malesuada augue. Praesent eu sapien risus. Curabitur id nisi neque.

Sed convallis commodo quam ut scelerisque. Fusce non pharetra lectus. Maecenas euismod tincidunt orci ac efficitur. Sed lectus odio, imperdiet nec tincidunt a, varius eget metus. Fusce ullamcorper tempor aliquet. Sed tempus efficitur sapien, in tempor metus aliquam non. Ut dapibus risus sit amet nisi scelerisque, sed faucibus tellus feugiat. Proin facilisis erat magna, eu molestie mi venenatis id. Praesent eleifend ante eget massa dignissim, nec vulputate orci suscipit.', '2.jpg', 1, 1, '2017-02-20 12:40:27', '2017-02-20 12:40:27') ; 
INSERT INTO `webnews` VALUES (3, 'Sed convallis commodo quam ut scelerisque. Fusce non pharetra lectus. Maecenas euismod tincidunt orci ac efficitur.', 'Sed convallis commodo quam ut scelerisque. Fusce non pharetra lectus. Maecenas euismod tincidunt orci ac efficitur. Sed lectus odio, imperdiet nec tincidunt a, varius eget metus. Fusce ullamcorper tempor aliquet. Sed tempus efficitur sapien, in tempor metus aliquam non. Ut dapibus risus sit amet nisi scelerisque, sed faucibus tellus feugiat. Proin facilisis erat magna, eu molestie mi venenatis id. Praesent eleifend ante eget massa dignissim, nec vulputate orci suscipit.

Nullam accumsan est vitae ante imperdiet, volutpat porttitor odio condimentum. Suspendisse condimentum eget purus non fermentum. In elit nunc, blandit in augue at, volutpat tincidunt nibh. Donec vestibulum, lorem eget pretium hendrerit, lacus enim bibendum nisl, quis pulvinar quam ex et dolor. Donec sed leo lobortis, eleifend leo ac, dignissim magna. Suspendisse mattis sapien tincidunt, gravida augue id, rhoncus tellus. Sed eu auctor lorem. Etiam id turpis urna. Donec at posuere nunc, id auctor orci. Nam sapien eros, egestas vitae risus nec, commodo consequat urna. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Praesent fringilla neque eros, tristique convallis felis laoreet non. Aliquam in nibh in libero lacinia faucibus a id justo. Interdum et malesuada fames ac ante ipsum primis in faucibus.', '3.jpg', 1, 1, '2017-02-20 12:40:49', '2017-02-20 12:40:49') ; 
INSERT INTO `webnews` VALUES (4, 'Nullam accumsan est vitae ante imperdiet, volutpat porttitor odio condimentum. Suspendisse condimentum eget purus non fermentum. ', 'Nullam accumsan est vitae ante imperdiet, volutpat porttitor odio condimentum. Suspendisse condimentum eget purus non fermentum. In elit nunc, blandit in augue at, volutpat tincidunt nibh. Donec vestibulum, lorem eget pretium hendrerit, lacus enim bibendum nisl, quis pulvinar quam ex et dolor. Donec sed leo lobortis, eleifend leo ac, dignissim magna. Suspendisse mattis sapien tincidunt, gravida augue id, rhoncus tellus. Sed eu auctor lorem. Etiam id turpis urna. Donec at posuere nunc, id auctor orci. Nam sapien eros, egestas vitae risus nec, commodo consequat urna. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Praesent fringilla neque eros, tristique convallis felis laoreet non. Aliquam in nibh in libero lacinia faucibus a id justo. Interdum et malesuada fames ac ante ipsum primis in faucibus.', '4.jpg', 1, 1, '2017-02-20 12:41:06', '2017-02-20 12:41:06') ; 
INSERT INTO `webnews` VALUES (5, 'Aaaliquam id dui pulvinar, mattis sem in, maximus elit. Cras convallis lobortis quam. Etiam tristique, est id blandit imperdiet, sapien nulla vestibulum ligula, ut rhoncus ligula libero a felis.', 'Aliquam id dui pulvinar, mattis sem in, maximus elit. Cras convallis lobortis quam. Etiam tristique, est id blandit imperdiet, sapien nulla vestibulum ligula, ut rhoncus ligula libero a felis. Morbi tincidunt felis sit amet urna pellentesque lacinia. Maecenas urna elit, posuere quis libero porttitor, placerat aliquet justo. In hac habitasse platea dictumst. Suspendisse elementum vel neque sed aliquet. Curabitur nec cursus mi. Proin id pretium magna, ac tempus sapien. Nam ornare vulputate gravida. Aenean ut tristique lacus. Donec suscipit, ex sed consectetur imperdiet, ex eros pellentesque massa, et scelerisque felis eros non elit. Nulla diam mi, iaculis nec ex quis, accumsan euismod augue.

Vestibulum a ornare est. Vivamus fermentum laoreet dui id tristique. Donec pulvinar tempor mi, ac cursus nibh tempor sit amet. Ut sagittis arcu enim, nec luctus quam vestibulum a. Proin non interdum metus. Vivamus ornare lorem nec justo consequat, in sagittis libero sodales. Donec ullamcorper tristique ligula non consectetur. Vivamus cursus nec lacus nec convallis. Pellentesque eu consectetur nibh. Donec volutpat sodales accumsan. Nullam commodo mattis semper. Donec auctor eu nisi in volutpat. Vivamus sit amet lorem mattis, condimentum augue eu, accumsan lorem. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Quisque lacinia efficitur massa at bibendum. Suspendisse iaculis elit ante.', '5.jpg', 1, 1, '2017-02-20 12:42:21', '2017-02-20 12:41:29') ; 
INSERT INTO `webnews` VALUES (6, 'Vestibulum a ornare est. Vivamus fermentum laoreet dui id tristique. Donec pulvinar tempor mi, ac cursus nibh tempor sit amet. Ut sagittis arcu enim, nec luctus quam vestibulum a.', 'Vestibulum a ornare est. Vivamus fermentum laoreet dui id tristique. Donec pulvinar tempor mi, ac cursus nibh tempor sit amet. Ut sagittis arcu enim, nec luctus quam vestibulum a. Proin non interdum metus. Vivamus ornare lorem nec justo consequat, in sagittis libero sodales. Donec ullamcorper tristique ligula non consectetur. Vivamus cursus nec lacus nec convallis. Pellentesque eu consectetur nibh. Donec volutpat sodales accumsan. Nullam commodo mattis semper. Donec auctor eu nisi in volutpat. Vivamus sit amet lorem mattis, condimentum augue eu, accumsan lorem. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Quisque lacinia efficitur massa at bibendum. Suspendisse iaculis elit ante.', '6.jpg', 1, 1, '2017-02-20 12:42:49', '2017-02-20 12:42:49') ; 
INSERT INTO `webnews` VALUES (7, 'Integer eu fermentum erat. Sed sollicitudin sollicitudin est, at molestie augue sagittis quis. Suspendisse pellentesque non lorem vitae vehicula. Donec pellentesque ligula vitae risus pulvinar dictum. ', 'Integer eu fermentum erat. Sed sollicitudin sollicitudin est, at molestie augue sagittis quis. Suspendisse pellentesque non lorem vitae vehicula. Donec pellentesque ligula vitae risus pulvinar dictum. Ut commodo mollis quam, quis tempus neque scelerisque at. Vivamus porta risus justo, sit amet luctus felis eleifend ut. Suspendisse id dui metus. Mauris varius quam ante, eget cursus arcu congue in. Quisque ut urna accumsan, efficitur purus vitae, varius libero. Etiam a velit odio. Duis malesuada purus luctus consequat rhoncus. Nulla dapibus neque et lacus fringilla, eu semper dolor tincidunt. In sagittis tortor et nisi sagittis finibus. Pellentesque iaculis ligula nec erat bibendum tincidunt.

Maecenas at tortor sem. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut cursus, enim ac varius commodo, tellus ligula cursus velit, quis sodales augue lorem id arcu. Etiam sit amet pellentesque ipsum. Pellentesque venenatis lorem et ligula euismod, nec commodo felis tristique. Proin libero quam, bibendum vitae mi sagittis, tempor elementum velit. Nulla convallis tempor nisi, semper molestie eros tempus vitae. Ut viverra ligula tempus lorem eleifend, at sagittis purus malesuada. Pellentesque vehicula tincidunt metus a porta.', '6_2.jpg', 1, 1, '2017-02-20 12:43:08', '2017-02-20 12:43:08') ;
#
# End of data contents of table webnews
# --------------------------------------------------------

# MySQL database backup
#
# Generated: Friday 3. March 2017 08:07 PHT
# Hostname: localhost
# Database: `alumni`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `admin`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `auditlog`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `feedbacks`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `graduates`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `users`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webaboutus`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webannouncements`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webbanner`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webcontactus`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webjobs`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webmenu`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webnews`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webslider`
# --------------------------------------------------------


#
# Delete any existing table `webslider`
#

DROP TABLE IF EXISTS `webslider`;


#
# Table structure of table `webslider`
#

CREATE TABLE `webslider` (
  `slider_id` int(11) NOT NULL AUTO_INCREMENT,
  `slider_image` varchar(255) NOT NULL,
  `slider_caption` text NOT NULL,
  `slider_title` varchar(255) NOT NULL,
  `slider_status` tinyint(1) NOT NULL DEFAULT '1',
  `slider_poster_id` int(11) NOT NULL,
  `slider_date_modified` datetime NOT NULL,
  `slider_date_added` datetime NOT NULL,
  PRIMARY KEY (`slider_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ;

#
# Data contents of table webslider (0 records)
#

#
# End of data contents of table webslider
# --------------------------------------------------------

# MySQL database backup
#
# Generated: Friday 3. March 2017 08:07 PHT
# Hostname: localhost
# Database: `alumni`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `admin`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `auditlog`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `feedbacks`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `graduates`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `users`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webaboutus`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webannouncements`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webbanner`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webcontactus`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webjobs`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webmenu`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webnews`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webslider`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `websubmenu`
# --------------------------------------------------------


#
# Delete any existing table `websubmenu`
#

DROP TABLE IF EXISTS `websubmenu`;


#
# Table structure of table `websubmenu`
#

CREATE TABLE `websubmenu` (
  `submenu_id` int(11) NOT NULL AUTO_INCREMENT,
  `submenu_menu_id` int(11) NOT NULL,
  `submenu_title` varchar(50) NOT NULL,
  `submenu_link` varchar(255) NOT NULL,
  `submenu_status` tinyint(1) NOT NULL DEFAULT '1',
  `submenu_position` tinyint(4) NOT NULL,
  `submenu_date_modified` datetime NOT NULL,
  `submenu_date_added` datetime NOT NULL,
  PRIMARY KEY (`submenu_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1 ;

#
# Data contents of table websubmenu (1 records)
#
 
INSERT INTO `websubmenu` VALUES (1, 1, 'dfddd', 'ddddd', 2, 0, '2017-02-20 13:35:23', '2017-02-20 13:35:15') ;
#
# End of data contents of table websubmenu
# --------------------------------------------------------

# MySQL database backup
#
# Generated: Friday 3. March 2017 08:08 PHT
# Hostname: localhost
# Database: `alumni`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `admin`
# --------------------------------------------------------


#
# Delete any existing table `admin`
#

DROP TABLE IF EXISTS `admin`;


#
# Table structure of table `admin`
#

CREATE TABLE `admin` (
  `admin_id` int(11) NOT NULL AUTO_INCREMENT,
  `admin_fname` varchar(50) NOT NULL,
  `admin_mname` varchar(50) NOT NULL,
  `admin_lname` varchar(50) NOT NULL,
  `admin_email` varchar(100) NOT NULL,
  `admin_username` varchar(50) NOT NULL,
  `admin_salt` varchar(50) NOT NULL,
  `admin_password` varchar(100) NOT NULL,
  `admin_level` tinyint(1) NOT NULL COMMENT '1=sysad; 2=moderator; 3=viewing;',
  `admin_status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '0=not active; 1=active; 2=disabled;',
  `admin_date_modified` datetime NOT NULL,
  `admin_date_added` datetime NOT NULL,
  PRIMARY KEY (`admin_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1 ;

#
# Data contents of table admin (1 records)
#
 
INSERT INTO `admin` VALUES (1, 'juan', 'santos', 'dela cruz', 'juan23@mail.com', 'admin', '³W÷þdaÂí±ÂùF®9ïÐ0Ÿ€‘ƒÈn·0¢Ã#üå¨', '3640daa0c1fc63a0be23f357f05202ab732697f6bd5bfb93ef00d947cc133461', 1, 1, '2017-02-08 00:00:00', '2017-02-08 00:00:00') ;
#
# End of data contents of table admin
# --------------------------------------------------------

# MySQL database backup
#
# Generated: Friday 3. March 2017 08:08 PHT
# Hostname: localhost
# Database: `alumni`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `admin`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `auditlog`
# --------------------------------------------------------


#
# Delete any existing table `auditlog`
#

DROP TABLE IF EXISTS `auditlog`;


#
# Table structure of table `auditlog`
#

CREATE TABLE `auditlog` (
  `audit_id` int(11) NOT NULL AUTO_INCREMENT,
  `audit_table_affected` varchar(100) NOT NULL,
  `audit_action` varchar(255) NOT NULL,
  `audit_admin_id` int(11) NOT NULL,
  `audit_datetime` datetime NOT NULL,
  PRIMARY KEY (`audit_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ;

#
# Data contents of table auditlog (0 records)
#

#
# End of data contents of table auditlog
# --------------------------------------------------------

# MySQL database backup
#
# Generated: Friday 3. March 2017 08:08 PHT
# Hostname: localhost
# Database: `alumni`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `admin`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `auditlog`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `feedbacks`
# --------------------------------------------------------


#
# Delete any existing table `feedbacks`
#

DROP TABLE IF EXISTS `feedbacks`;


#
# Table structure of table `feedbacks`
#

CREATE TABLE `feedbacks` (
  `fb_id` int(11) NOT NULL AUTO_INCREMENT,
  `fb_name` varchar(150) NOT NULL,
  `fb_email` varchar(150) NOT NULL,
  `fb_subject` varchar(500) NOT NULL,
  `fb_message` text NOT NULL,
  `fb_date_added` datetime NOT NULL,
  PRIMARY KEY (`fb_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1 ;

#
# Data contents of table feedbacks (1 records)
#
 
INSERT INTO `feedbacks` VALUES (1, 'sdfsdfs', 'dfssdf@asdasd.asd', 'asdasd', 'asdasdasdasd', '2017-02-20 15:18:19') ;
#
# End of data contents of table feedbacks
# --------------------------------------------------------

# MySQL database backup
#
# Generated: Friday 3. March 2017 08:08 PHT
# Hostname: localhost
# Database: `alumni`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `admin`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `auditlog`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `feedbacks`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `graduates`
# --------------------------------------------------------


#
# Delete any existing table `graduates`
#

DROP TABLE IF EXISTS `graduates`;


#
# Table structure of table `graduates`
#

CREATE TABLE `graduates` (
  `grad_id` int(11) NOT NULL AUTO_INCREMENT,
  `grad_fname` varchar(50) NOT NULL,
  `grad_mname` varchar(50) NOT NULL,
  `grad_lname` varchar(50) NOT NULL,
  `grad_gender` tinyint(1) NOT NULL COMMENT '1=male; 2=female',
  `grad_birthday` date NOT NULL,
  `grad_student_id` varchar(11) NOT NULL,
  `grad_course` varchar(100) NOT NULL,
  `grad_dept` varchar(100) NOT NULL,
  `grad_year_graduated` year(4) NOT NULL,
  `grad_so_number` varchar(50) NOT NULL,
  PRIMARY KEY (`grad_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ;

#
# Data contents of table graduates (0 records)
#

#
# End of data contents of table graduates
# --------------------------------------------------------

# MySQL database backup
#
# Generated: Friday 3. March 2017 08:08 PHT
# Hostname: localhost
# Database: `alumni`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `admin`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `auditlog`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `feedbacks`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `graduates`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `users`
# --------------------------------------------------------


#
# Delete any existing table `users`
#

DROP TABLE IF EXISTS `users`;


#
# Table structure of table `users`
#

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_grad_id` int(11) NOT NULL,
  `user_email` varchar(100) NOT NULL,
  `user_contact` varchar(50) NOT NULL,
  `user_address` varchar(255) NOT NULL,
  `user_username` varchar(50) NOT NULL,
  `user_salt` varchar(100) NOT NULL,
  `user_password` varchar(100) NOT NULL,
  `user_status` tinyint(1) NOT NULL DEFAULT '1',
  `user_employed` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0=not employed; 1=employed;',
  `user_company` varchar(155) NOT NULL,
  `user_position` varchar(100) NOT NULL,
  `user_job_level` varchar(100) NOT NULL,
  `user_date_modified` datetime NOT NULL,
  `user_date_added` datetime NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ;

#
# Data contents of table users (0 records)
#

#
# End of data contents of table users
# --------------------------------------------------------

# MySQL database backup
#
# Generated: Friday 3. March 2017 08:08 PHT
# Hostname: localhost
# Database: `alumni`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `admin`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `auditlog`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `feedbacks`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `graduates`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `users`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webaboutus`
# --------------------------------------------------------


#
# Delete any existing table `webaboutus`
#

DROP TABLE IF EXISTS `webaboutus`;


#
# Table structure of table `webaboutus`
#

CREATE TABLE `webaboutus` (
  `about_id` int(11) NOT NULL AUTO_INCREMENT,
  `about_mission` text NOT NULL,
  `about_vision` text NOT NULL,
  `about_history` text NOT NULL,
  `about_date_modified` datetime NOT NULL,
  `about_date_added` datetime NOT NULL,
  PRIMARY KEY (`about_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ;

#
# Data contents of table webaboutus (0 records)
#

#
# End of data contents of table webaboutus
# --------------------------------------------------------

# MySQL database backup
#
# Generated: Friday 3. March 2017 08:08 PHT
# Hostname: localhost
# Database: `alumni`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `admin`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `auditlog`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `feedbacks`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `graduates`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `users`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webaboutus`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webannouncements`
# --------------------------------------------------------


#
# Delete any existing table `webannouncements`
#

DROP TABLE IF EXISTS `webannouncements`;


#
# Table structure of table `webannouncements`
#

CREATE TABLE `webannouncements` (
  `announ_id` int(11) NOT NULL AUTO_INCREMENT,
  `announ_title` varchar(255) NOT NULL,
  `announ_description` text NOT NULL,
  `announ_status` tinyint(1) NOT NULL DEFAULT '1',
  `announ_poster_id` int(11) NOT NULL,
  `announ_date_modified` datetime NOT NULL,
  `announ_date_added` datetime NOT NULL,
  PRIMARY KEY (`announ_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1 ;

#
# Data contents of table webannouncements (7 records)
#
 
INSERT INTO `webannouncements` VALUES (1, 'Maecenas at tortor sem. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut cursus, enim ac varius commodo, tellus ligula cursus velit, quis sodales augue lorem id arcu. Etiam sit amet pellentesque ipsum.', 'Maecenas at tortor sem. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut cursus, enim ac varius commodo, tellus ligula cursus velit, quis sodales augue lorem id arcu. Etiam sit amet pellentesque ipsum. Pellentesque venenatis lorem et ligula euismod, nec commodo felis tristique. Proin libero quam, bibendum vitae mi sagittis, tempor elementum velit. Nulla convallis tempor nisi, semper molestie eros tempus vitae. Ut viverra ligula tempus lorem eleifend, at sagittis purus malesuada. Pellentesque vehicula tincidunt metus a porta.', 1, 1, '2017-02-20 12:43:49', '2017-02-20 12:43:49') ; 
INSERT INTO `webannouncements` VALUES (2, 'Pellentesque eu ultricies leo. Nulla ullamcorper sem mauris, sit amet congue nisi sollicitudin non. Sed venenatis euismod pretium. ', 'Pellentesque eu ultricies leo. Nulla ullamcorper sem mauris, sit amet congue nisi sollicitudin non. Sed venenatis euismod pretium. Vivamus sit amet erat vehicula, semper arcu ut, mattis purus. Nunc at semper sem, sit amet facilisis risus. Fusce interdum egestas finibus. Proin ac tempus nulla. Nullam id ipsum enim. Vivamus sollicitudin blandit pharetra. Donec dictum ligula nisi, non ornare diam venenatis a. In pharetra turpis id elit fermentum sodales. Integer euismod nisl sed facilisis laoreet. Aenean lobortis ullamcorper dapibus. Pellentesque volutpat laoreet hendrerit.

Suspendisse potenti. Donec sed laoreet ipsum. Donec non diam placerat, porta lectus eget, pulvinar quam. Nullam at nulla at dolor consequat dictum. Proin a scelerisque nisi. Ut rhoncus facilisis nibh feugiat tempor. Aliquam erat volutpat.', 1, 1, '2017-02-20 12:44:01', '2017-02-20 12:44:01') ; 
INSERT INTO `webannouncements` VALUES (3, 'Suspendisse potenti. Donec sed laoreet ipsum. Donec non diam placerat, porta lectus eget, pulvinar quam. Nullam at nulla at dolor consequat dictum.', 'Suspendisse potenti. Donec sed laoreet ipsum. Donec non diam placerat, porta lectus eget, pulvinar quam. Nullam at nulla at dolor consequat dictum. Proin a scelerisque nisi. Ut rhoncus facilisis nibh feugiat tempor. Aliquam erat volutpat.

Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Sed in nulla purus. Aliquam lacinia, eros vel volutpat mattis, purus massa sagittis erat, vitae ultrices nisi odio a libero. Praesent bibendum convallis porttitor. Curabitur augue elit, pretium at risus vitae, interdum porta lacus. Integer quis condimentum lectus, nec tempus sem. Maecenas eleifend dui tempor condimentum mollis. Vivamus ut lorem id ipsum sodales efficitur. Donec magna dolor, vulputate non ante vel, tincidunt rutrum nulla. Vivamus pulvinar felis eros, quis pellentesque quam suscipit non. Vestibulum neque orci, convallis sed enim sit amet, rutrum bibendum risus. Curabitur eu ultrices elit. Pellentesque lectus tellus, volutpat sit amet pharetra quis, gravida vitae lacus. Sed euismod enim ut mauris elementum, nec congue neque facilisis. Phasellus eu molestie nulla, dictum sodales nisl.', 1, 1, '2017-02-20 12:44:14', '2017-02-20 12:44:14') ; 
INSERT INTO `webannouncements` VALUES (4, 'Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos.', 'Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Sed in nulla purus. Aliquam lacinia, eros vel volutpat mattis, purus massa sagittis erat, vitae ultrices nisi odio a libero. Praesent bibendum convallis porttitor. Curabitur augue elit, pretium at risus vitae, interdum porta lacus. Integer quis condimentum lectus, nec tempus sem. Maecenas eleifend dui tempor condimentum mollis. Vivamus ut lorem id ipsum sodales efficitur. Donec magna dolor, vulputate non ante vel, tincidunt rutrum nulla. Vivamus pulvinar felis eros, quis pellentesque quam suscipit non. Vestibulum neque orci, convallis sed enim sit amet, rutrum bibendum risus. Curabitur eu ultrices elit. Pellentesque lectus tellus, volutpat sit amet pharetra quis, gravida vitae lacus. Sed euismod enim ut mauris elementum, nec congue neque facilisis. Phasellus eu molestie nulla, dictum sodales nisl.', 1, 1, '2017-02-20 12:44:29', '2017-02-20 12:44:29') ; 
INSERT INTO `webannouncements` VALUES (5, 'Nam neque mauris, consectetur in varius id, elementum vel dolor. Sed vitae massa quis magna fermentum convallis sed venenatis diam. ', 'Nam neque mauris, consectetur in varius id, elementum vel dolor. Sed vitae massa quis magna fermentum convallis sed venenatis diam. Curabitur facilisis, lorem a ornare convallis, neque ligula facilisis nulla, a ultricies odio diam a mi. Phasellus lobortis gravida ligula in vulputate. Duis pellentesque pulvinar viverra. Etiam id suscipit velit, vitae placerat tortor. Ut faucibus ante ipsum, quis ultrices nisi hendrerit vel. Sed euismod velit a neque scelerisque aliquet. Vestibulum dictum eget ante id aliquam.

Nunc rutrum, libero ac dignissim lobortis, odio lacus laoreet urna, non vulputate ex libero in odio. In quis hendrerit velit. Suspendisse cursus justo augue, ut tempus est facilisis non. Donec ac lectus ut felis bibendum malesuada blandit vitae nisi. Nulla facilisi. Praesent facilisis elementum sem a venenatis. Sed accumsan eros vel felis auctor vestibulum. Pellentesque vitae massa ac diam ullamcorper eleifend mattis at quam. Suspendisse non ante efficitur, congue diam ut, placerat dolor. Sed aliquam dolor nibh, a scelerisque tellus pharetra eu. Morbi convallis, erat viverra malesuada fermentum, felis leo tincidunt lacus, ut mollis sem arcu eu odio. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae;', 1, 1, '2017-02-20 12:44:43', '2017-02-20 12:44:43') ; 
INSERT INTO `webannouncements` VALUES (6, 'Nunc rutrum, libero ac dignissim lobortis, odio lacus laoreet urna, non vulputate ex libero in odio. In quis hendrerit velit.', 'Nunc rutrum, libero ac dignissim lobortis, odio lacus laoreet urna, non vulputate ex libero in odio. In quis hendrerit velit. Suspendisse cursus justo augue, ut tempus est facilisis non. Donec ac lectus ut felis bibendum malesuada blandit vitae nisi. Nulla facilisi. Praesent facilisis elementum sem a venenatis. Sed accumsan eros vel felis auctor vestibulum. Pellentesque vitae massa ac diam ullamcorper eleifend mattis at quam. Suspendisse non ante efficitur, congue diam ut, placerat dolor. Sed aliquam dolor nibh, a scelerisque tellus pharetra eu. Morbi convallis, erat viverra malesuada fermentum, felis leo tincidunt lacus, ut mollis sem arcu eu odio. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae;', 1, 1, '2017-02-20 12:44:55', '2017-02-20 12:44:55') ; 
INSERT INTO `webannouncements` VALUES (7, 'Nulla convallis nisl a ante facilisis suscipit. Morbi sit amet imperdiet tortor. Duis posuere gravida nisl, sit amet posuere tortor dictum blandit.', 'Nulla convallis nisl a ante facilisis suscipit. Morbi sit amet imperdiet tortor. Duis posuere gravida nisl, sit amet posuere tortor dictum blandit. Cras ultricies iaculis vulputate. Fusce non turpis porttitor, ornare diam at, cursus ante. Donec at velit magna. Nunc est leo, pretium at dolor a, commodo malesuada neque. Maecenas ultrices in ex ac laoreet. Cras accumsan mi vitae augue consequat, vitae scelerisque est fermentum. Donec vehicula risus ut libero aliquet ultricies. Nulla facilisi.

Integer tortor est, aliquet nec sapien sit amet, commodo consectetur arcu. Curabitur bibendum erat rutrum lorem semper, id blandit diam luctus. Sed suscipit est non risus viverra, in viverra quam hendrerit. Aliquam elit risus, vulputate vel nulla vulputate, consequat venenatis ex. Suspendisse potenti. Cras aliquet metus vitae turpis vestibulum viverra. Donec scelerisque dolor ultricies purus malesuada euismod. Cras eleifend porta elementum. Quisque malesuada leo dolor. Cras consequat leo quis imperdiet suscipit. Vestibulum laoreet risus a nunc ullamcorper viverra. Maecenas hendrerit ante id justo porta, ut ornare mi hendrerit.', 1, 1, '2017-02-20 12:47:17', '2017-02-20 12:45:10') ;
#
# End of data contents of table webannouncements
# --------------------------------------------------------

# MySQL database backup
#
# Generated: Friday 3. March 2017 08:08 PHT
# Hostname: localhost
# Database: `alumni`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `admin`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `auditlog`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `feedbacks`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `graduates`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `users`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webaboutus`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webannouncements`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webbanner`
# --------------------------------------------------------


#
# Delete any existing table `webbanner`
#

DROP TABLE IF EXISTS `webbanner`;


#
# Table structure of table `webbanner`
#

CREATE TABLE `webbanner` (
  `banner_id` int(11) NOT NULL AUTO_INCREMENT,
  `banner_image` varchar(255) NOT NULL,
  `banner_title` varchar(100) NOT NULL,
  `banner_status` tinyint(1) NOT NULL DEFAULT '1',
  `banner_poster_id` int(11) NOT NULL,
  `banner_date_modified` datetime NOT NULL,
  `banner_date_added` datetime NOT NULL,
  PRIMARY KEY (`banner_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1 ;

#
# Data contents of table webbanner (1 records)
#
 
INSERT INTO `webbanner` VALUES (1, 'raffle.jpg', 'CCA Alumni First Fund Raising Event', 1, 1, '2017-02-20 12:47:58', '2017-02-13 20:32:15') ;
#
# End of data contents of table webbanner
# --------------------------------------------------------

# MySQL database backup
#
# Generated: Friday 3. March 2017 08:08 PHT
# Hostname: localhost
# Database: `alumni`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `admin`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `auditlog`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `feedbacks`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `graduates`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `users`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webaboutus`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webannouncements`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webbanner`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webcontactus`
# --------------------------------------------------------


#
# Delete any existing table `webcontactus`
#

DROP TABLE IF EXISTS `webcontactus`;


#
# Table structure of table `webcontactus`
#

CREATE TABLE `webcontactus` (
  `contact_id` int(11) NOT NULL AUTO_INCREMENT,
  `contact_phone` varchar(30) NOT NULL,
  `contact_mobile` varchar(30) NOT NULL,
  `contact_email` varchar(100) NOT NULL,
  `contact_address` varchar(255) NOT NULL,
  `contact_fax` varchar(30) NOT NULL,
  `contact_date_modified` datetime NOT NULL,
  `contact_date_added` datetime NOT NULL,
  PRIMARY KEY (`contact_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ;

#
# Data contents of table webcontactus (0 records)
#

#
# End of data contents of table webcontactus
# --------------------------------------------------------

# MySQL database backup
#
# Generated: Friday 3. March 2017 08:08 PHT
# Hostname: localhost
# Database: `alumni`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `admin`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `auditlog`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `feedbacks`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `graduates`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `users`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webaboutus`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webannouncements`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webbanner`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webcontactus`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webjobs`
# --------------------------------------------------------


#
# Delete any existing table `webjobs`
#

DROP TABLE IF EXISTS `webjobs`;


#
# Table structure of table `webjobs`
#

CREATE TABLE `webjobs` (
  `job_id` int(11) NOT NULL AUTO_INCREMENT,
  `job_title` varchar(500) NOT NULL,
  `job_company` varchar(255) NOT NULL,
  `job_positions` varchar(500) NOT NULL,
  `job_vacancy` varchar(500) NOT NULL,
  `job_description` text NOT NULL,
  `job_poster_id` int(11) NOT NULL,
  `job_status` tinyint(1) NOT NULL DEFAULT '1',
  `job_date_modified` datetime NOT NULL,
  `job_date_added` datetime NOT NULL,
  PRIMARY KEY (`job_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1 ;

#
# Data contents of table webjobs (1 records)
#
 
INSERT INTO `webjobs` VALUES (1, 'Litigation Lawyer', 'Global Estate Resorts, Inc. (a subsidiary of Megaworld Corporation)', 'Litigation Lawyer', '5', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#039;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 1, 1, '2017-02-20 13:23:25', '2017-02-20 13:13:27') ;
#
# End of data contents of table webjobs
# --------------------------------------------------------

# MySQL database backup
#
# Generated: Friday 3. March 2017 08:08 PHT
# Hostname: localhost
# Database: `alumni`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `admin`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `auditlog`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `feedbacks`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `graduates`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `users`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webaboutus`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webannouncements`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webbanner`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webcontactus`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webjobs`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webmenu`
# --------------------------------------------------------


#
# Delete any existing table `webmenu`
#

DROP TABLE IF EXISTS `webmenu`;


#
# Table structure of table `webmenu`
#

CREATE TABLE `webmenu` (
  `menu_id` int(11) NOT NULL AUTO_INCREMENT,
  `menu_title` varchar(50) NOT NULL,
  `menu_link` varchar(255) NOT NULL,
  `menu_status` tinyint(1) NOT NULL DEFAULT '1',
  `menu_position` tinyint(4) NOT NULL,
  `menu_date_modified` datetime NOT NULL,
  `menu_date_added` datetime NOT NULL,
  PRIMARY KEY (`menu_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1 ;

#
# Data contents of table webmenu (5 records)
#
 
INSERT INTO `webmenu` VALUES (1, 'Home', 'index', 1, 1, '2017-02-20 13:35:09', '2017-02-20 13:35:09') ; 
INSERT INTO `webmenu` VALUES (2, 'News', 'news', 1, 2, '2017-02-17 11:02:00', '2017-02-17 11:02:00') ; 
INSERT INTO `webmenu` VALUES (3, 'Announcements', 'announcements', 1, 3, '2017-02-17 11:02:13', '2017-02-17 11:02:13') ; 
INSERT INTO `webmenu` VALUES (4, 'About Us', 'about-us', 1, 4, '2017-02-17 11:02:25', '2017-02-17 11:02:25') ; 
INSERT INTO `webmenu` VALUES (5, 'Contact Us', 'contact-us', 1, 5, '2017-02-17 11:02:36', '2017-02-17 11:02:36') ;
#
# End of data contents of table webmenu
# --------------------------------------------------------

# MySQL database backup
#
# Generated: Friday 3. March 2017 08:08 PHT
# Hostname: localhost
# Database: `alumni`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `admin`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `auditlog`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `feedbacks`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `graduates`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `users`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webaboutus`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webannouncements`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webbanner`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webcontactus`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webjobs`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webmenu`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webnews`
# --------------------------------------------------------


#
# Delete any existing table `webnews`
#

DROP TABLE IF EXISTS `webnews`;


#
# Table structure of table `webnews`
#

CREATE TABLE `webnews` (
  `news_id` int(11) NOT NULL AUTO_INCREMENT,
  `news_title` varchar(255) NOT NULL,
  `news_description` text NOT NULL,
  `news_image` varchar(500) NOT NULL,
  `news_status` tinyint(1) NOT NULL DEFAULT '1',
  `news_poster_id` int(11) NOT NULL,
  `news_date_modified` datetime NOT NULL,
  `news_date_added` datetime NOT NULL,
  PRIMARY KEY (`news_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1 ;

#
# Data contents of table webnews (7 records)
#
 
INSERT INTO `webnews` VALUES (1, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis feugiat quam velit, vitae ornare libero pellentesque ut.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis feugiat quam velit, vitae ornare libero pellentesque ut. Ut tempus augue sit amet ipsum elementum, eget faucibus erat molestie. Praesent in eros rutrum, ornare leo vitae, interdum nibh. Suspendisse consectetur eget justo non lacinia. In fermentum luctus condimentum. Morbi a libero molestie, facilisis mauris pellentesque, fermentum orci. Vivamus eget risus lacinia, scelerisque dui in, lobortis leo. Aliquam et ultricies dui. Nunc pharetra, enim eu efficitur molestie, metus sem mattis risus, tristique fringilla libero nulla et felis. Nam id sodales elit. Nullam elementum volutpat tortor, id feugiat erat placerat eu.

Suspendisse sit amet porta orci. Nam ultricies nisi ante. Nulla vel arcu sodales, varius nisi in, porttitor orci. Sed viverra felis eget lacus faucibus hendrerit. Cras erat turpis, faucibus id porta nec, mattis vel velit. Maecenas non magna sit amet velit pretium consectetur. Proin id nulla dictum, euismod purus eget, malesuada augue. Praesent eu sapien risus. Curabitur id nisi neque.', '1.jpg', 1, 1, '2017-02-20 12:38:37', '2017-02-20 12:38:37') ; 
INSERT INTO `webnews` VALUES (2, 'Suspendisse sit amet porta orci. Nam ultricies nisi ante. Nulla vel arcu sodales, varius nisi in, porttitor orci. Sed viverra felis eget lacus faucibus hendrerit.', 'Suspendisse sit amet porta orci. Nam ultricies nisi ante. Nulla vel arcu sodales, varius nisi in, porttitor orci. Sed viverra felis eget lacus faucibus hendrerit. Cras erat turpis, faucibus id porta nec, mattis vel velit. Maecenas non magna sit amet velit pretium consectetur. Proin id nulla dictum, euismod purus eget, malesuada augue. Praesent eu sapien risus. Curabitur id nisi neque.

Sed convallis commodo quam ut scelerisque. Fusce non pharetra lectus. Maecenas euismod tincidunt orci ac efficitur. Sed lectus odio, imperdiet nec tincidunt a, varius eget metus. Fusce ullamcorper tempor aliquet. Sed tempus efficitur sapien, in tempor metus aliquam non. Ut dapibus risus sit amet nisi scelerisque, sed faucibus tellus feugiat. Proin facilisis erat magna, eu molestie mi venenatis id. Praesent eleifend ante eget massa dignissim, nec vulputate orci suscipit.', '2.jpg', 1, 1, '2017-02-20 12:40:27', '2017-02-20 12:40:27') ; 
INSERT INTO `webnews` VALUES (3, 'Sed convallis commodo quam ut scelerisque. Fusce non pharetra lectus. Maecenas euismod tincidunt orci ac efficitur.', 'Sed convallis commodo quam ut scelerisque. Fusce non pharetra lectus. Maecenas euismod tincidunt orci ac efficitur. Sed lectus odio, imperdiet nec tincidunt a, varius eget metus. Fusce ullamcorper tempor aliquet. Sed tempus efficitur sapien, in tempor metus aliquam non. Ut dapibus risus sit amet nisi scelerisque, sed faucibus tellus feugiat. Proin facilisis erat magna, eu molestie mi venenatis id. Praesent eleifend ante eget massa dignissim, nec vulputate orci suscipit.

Nullam accumsan est vitae ante imperdiet, volutpat porttitor odio condimentum. Suspendisse condimentum eget purus non fermentum. In elit nunc, blandit in augue at, volutpat tincidunt nibh. Donec vestibulum, lorem eget pretium hendrerit, lacus enim bibendum nisl, quis pulvinar quam ex et dolor. Donec sed leo lobortis, eleifend leo ac, dignissim magna. Suspendisse mattis sapien tincidunt, gravida augue id, rhoncus tellus. Sed eu auctor lorem. Etiam id turpis urna. Donec at posuere nunc, id auctor orci. Nam sapien eros, egestas vitae risus nec, commodo consequat urna. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Praesent fringilla neque eros, tristique convallis felis laoreet non. Aliquam in nibh in libero lacinia faucibus a id justo. Interdum et malesuada fames ac ante ipsum primis in faucibus.', '3.jpg', 1, 1, '2017-02-20 12:40:49', '2017-02-20 12:40:49') ; 
INSERT INTO `webnews` VALUES (4, 'Nullam accumsan est vitae ante imperdiet, volutpat porttitor odio condimentum. Suspendisse condimentum eget purus non fermentum. ', 'Nullam accumsan est vitae ante imperdiet, volutpat porttitor odio condimentum. Suspendisse condimentum eget purus non fermentum. In elit nunc, blandit in augue at, volutpat tincidunt nibh. Donec vestibulum, lorem eget pretium hendrerit, lacus enim bibendum nisl, quis pulvinar quam ex et dolor. Donec sed leo lobortis, eleifend leo ac, dignissim magna. Suspendisse mattis sapien tincidunt, gravida augue id, rhoncus tellus. Sed eu auctor lorem. Etiam id turpis urna. Donec at posuere nunc, id auctor orci. Nam sapien eros, egestas vitae risus nec, commodo consequat urna. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Praesent fringilla neque eros, tristique convallis felis laoreet non. Aliquam in nibh in libero lacinia faucibus a id justo. Interdum et malesuada fames ac ante ipsum primis in faucibus.', '4.jpg', 1, 1, '2017-02-20 12:41:06', '2017-02-20 12:41:06') ; 
INSERT INTO `webnews` VALUES (5, 'Aaaliquam id dui pulvinar, mattis sem in, maximus elit. Cras convallis lobortis quam. Etiam tristique, est id blandit imperdiet, sapien nulla vestibulum ligula, ut rhoncus ligula libero a felis.', 'Aliquam id dui pulvinar, mattis sem in, maximus elit. Cras convallis lobortis quam. Etiam tristique, est id blandit imperdiet, sapien nulla vestibulum ligula, ut rhoncus ligula libero a felis. Morbi tincidunt felis sit amet urna pellentesque lacinia. Maecenas urna elit, posuere quis libero porttitor, placerat aliquet justo. In hac habitasse platea dictumst. Suspendisse elementum vel neque sed aliquet. Curabitur nec cursus mi. Proin id pretium magna, ac tempus sapien. Nam ornare vulputate gravida. Aenean ut tristique lacus. Donec suscipit, ex sed consectetur imperdiet, ex eros pellentesque massa, et scelerisque felis eros non elit. Nulla diam mi, iaculis nec ex quis, accumsan euismod augue.

Vestibulum a ornare est. Vivamus fermentum laoreet dui id tristique. Donec pulvinar tempor mi, ac cursus nibh tempor sit amet. Ut sagittis arcu enim, nec luctus quam vestibulum a. Proin non interdum metus. Vivamus ornare lorem nec justo consequat, in sagittis libero sodales. Donec ullamcorper tristique ligula non consectetur. Vivamus cursus nec lacus nec convallis. Pellentesque eu consectetur nibh. Donec volutpat sodales accumsan. Nullam commodo mattis semper. Donec auctor eu nisi in volutpat. Vivamus sit amet lorem mattis, condimentum augue eu, accumsan lorem. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Quisque lacinia efficitur massa at bibendum. Suspendisse iaculis elit ante.', '5.jpg', 1, 1, '2017-02-20 12:42:21', '2017-02-20 12:41:29') ; 
INSERT INTO `webnews` VALUES (6, 'Vestibulum a ornare est. Vivamus fermentum laoreet dui id tristique. Donec pulvinar tempor mi, ac cursus nibh tempor sit amet. Ut sagittis arcu enim, nec luctus quam vestibulum a.', 'Vestibulum a ornare est. Vivamus fermentum laoreet dui id tristique. Donec pulvinar tempor mi, ac cursus nibh tempor sit amet. Ut sagittis arcu enim, nec luctus quam vestibulum a. Proin non interdum metus. Vivamus ornare lorem nec justo consequat, in sagittis libero sodales. Donec ullamcorper tristique ligula non consectetur. Vivamus cursus nec lacus nec convallis. Pellentesque eu consectetur nibh. Donec volutpat sodales accumsan. Nullam commodo mattis semper. Donec auctor eu nisi in volutpat. Vivamus sit amet lorem mattis, condimentum augue eu, accumsan lorem. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Quisque lacinia efficitur massa at bibendum. Suspendisse iaculis elit ante.', '6.jpg', 1, 1, '2017-02-20 12:42:49', '2017-02-20 12:42:49') ; 
INSERT INTO `webnews` VALUES (7, 'Integer eu fermentum erat. Sed sollicitudin sollicitudin est, at molestie augue sagittis quis. Suspendisse pellentesque non lorem vitae vehicula. Donec pellentesque ligula vitae risus pulvinar dictum. ', 'Integer eu fermentum erat. Sed sollicitudin sollicitudin est, at molestie augue sagittis quis. Suspendisse pellentesque non lorem vitae vehicula. Donec pellentesque ligula vitae risus pulvinar dictum. Ut commodo mollis quam, quis tempus neque scelerisque at. Vivamus porta risus justo, sit amet luctus felis eleifend ut. Suspendisse id dui metus. Mauris varius quam ante, eget cursus arcu congue in. Quisque ut urna accumsan, efficitur purus vitae, varius libero. Etiam a velit odio. Duis malesuada purus luctus consequat rhoncus. Nulla dapibus neque et lacus fringilla, eu semper dolor tincidunt. In sagittis tortor et nisi sagittis finibus. Pellentesque iaculis ligula nec erat bibendum tincidunt.

Maecenas at tortor sem. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut cursus, enim ac varius commodo, tellus ligula cursus velit, quis sodales augue lorem id arcu. Etiam sit amet pellentesque ipsum. Pellentesque venenatis lorem et ligula euismod, nec commodo felis tristique. Proin libero quam, bibendum vitae mi sagittis, tempor elementum velit. Nulla convallis tempor nisi, semper molestie eros tempus vitae. Ut viverra ligula tempus lorem eleifend, at sagittis purus malesuada. Pellentesque vehicula tincidunt metus a porta.', '6_2.jpg', 1, 1, '2017-02-20 12:43:08', '2017-02-20 12:43:08') ;
#
# End of data contents of table webnews
# --------------------------------------------------------

# MySQL database backup
#
# Generated: Friday 3. March 2017 08:08 PHT
# Hostname: localhost
# Database: `alumni`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `admin`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `auditlog`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `feedbacks`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `graduates`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `users`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webaboutus`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webannouncements`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webbanner`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webcontactus`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webjobs`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webmenu`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webnews`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webslider`
# --------------------------------------------------------


#
# Delete any existing table `webslider`
#

DROP TABLE IF EXISTS `webslider`;


#
# Table structure of table `webslider`
#

CREATE TABLE `webslider` (
  `slider_id` int(11) NOT NULL AUTO_INCREMENT,
  `slider_image` varchar(255) NOT NULL,
  `slider_caption` text NOT NULL,
  `slider_title` varchar(255) NOT NULL,
  `slider_status` tinyint(1) NOT NULL DEFAULT '1',
  `slider_poster_id` int(11) NOT NULL,
  `slider_date_modified` datetime NOT NULL,
  `slider_date_added` datetime NOT NULL,
  PRIMARY KEY (`slider_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ;

#
# Data contents of table webslider (0 records)
#

#
# End of data contents of table webslider
# --------------------------------------------------------

# MySQL database backup
#
# Generated: Friday 3. March 2017 08:08 PHT
# Hostname: localhost
# Database: `alumni`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `admin`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `auditlog`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `feedbacks`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `graduates`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `users`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webaboutus`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webannouncements`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webbanner`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webcontactus`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webjobs`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webmenu`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webnews`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `webslider`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `websubmenu`
# --------------------------------------------------------


#
# Delete any existing table `websubmenu`
#

DROP TABLE IF EXISTS `websubmenu`;


#
# Table structure of table `websubmenu`
#

CREATE TABLE `websubmenu` (
  `submenu_id` int(11) NOT NULL AUTO_INCREMENT,
  `submenu_menu_id` int(11) NOT NULL,
  `submenu_title` varchar(50) NOT NULL,
  `submenu_link` varchar(255) NOT NULL,
  `submenu_status` tinyint(1) NOT NULL DEFAULT '1',
  `submenu_position` tinyint(4) NOT NULL,
  `submenu_date_modified` datetime NOT NULL,
  `submenu_date_added` datetime NOT NULL,
  PRIMARY KEY (`submenu_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1 ;

#
# Data contents of table websubmenu (1 records)
#
 
INSERT INTO `websubmenu` VALUES (1, 1, 'dfddd', 'ddddd', 2, 0, '2017-02-20 13:35:23', '2017-02-20 13:35:15') ;
#
# End of data contents of table websubmenu
# --------------------------------------------------------

