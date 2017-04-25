-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Nov 20, 2015 at 07:42 AM
-- Server version: 5.6.17
-- PHP Version: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `neti`
--

-- --------------------------------------------------------

--
-- Table structure for table `about`
--

CREATE TABLE IF NOT EXISTS `about` (
  `aboutid` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `description` longtext NOT NULL,
  PRIMARY KEY (`aboutid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `about`
--

INSERT INTO `about` (`aboutid`, `title`, `description`) VALUES
(1, 'About us', '<p><span style="color:#008000"><strong>Net I Solutions was established in 2003.&nbsp;</strong></span></p>\r\n\r\n<p style="text-align: justify;">Its founding was based on the understanding that most management issues in industries could be resolved through the effective uses of information technology. We take a significant part in the pioneering efforts to create a globally recognizable Cambodia IT industry. Our clients in Cambodia include major business corporations and government departments.</p>\r\n\r\n<p style="text-align: justify;">We believe in cooperation with other vendors in areas of common interest such as nurturing an important pool of ICT engineers and workers or addressing high cost of Internet usage.</p>\r\n\r\n<h4><span style="color:#0000FF"><strong>Our Vision</strong></span></h4>\r\n\r\n<p>Net I plays a major role in Cambodia emerging as ICT service explorer.</p>\r\n\r\n<h4><span style="color:#0000FF"><strong>Our Mission</strong></span></h4>\r\n\r\n<ul>\r\n	<li>Service excellence (24/7)</li>\r\n	<li>Quality of supply (SAN, Steel Antenna Towers)</li>\r\n	<li>Quality hand-on training</li>\r\n</ul>\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `career`
--

CREATE TABLE IF NOT EXISTS `career` (
  `careerid` int(11) NOT NULL AUTO_INCREMENT,
  `position` varchar(250) NOT NULL,
  `description` longtext NOT NULL,
  `orderno` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`careerid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `career`
--

INSERT INTO `career` (`careerid`, `position`, `description`, `orderno`) VALUES
(1, 'Sales Executive', '<p><strong>Duties and Responsibilities:</strong></p>\r\n\r\n<ul>\r\n	<li>Maintain and develop good relationship with customers through personal contact or meetings or via telephone etc.</li>\r\n	<li>Must act as a bridge between the company and its current market and future markets.</li>\r\n	<li>Review his/her own performance and aim at exceeding his/her targets.</li>\r\n	<li>Record sales and order information and report to the sales department.</li>\r\n	<li>Provide accurate feedback on future buying trends to their respective employers.</li>\r\n</ul>\r\n\r\n<p><strong>Skills Required:</strong></p>\r\n\r\n<ul>\r\n	<li>Either Graduate in marketing or business management, with IT knowledge or IT graduate with sales experience and/or knowledge.</li>\r\n	<li>At least 2-3 years proactive working experience in selling IT products.</li>\r\n	<li>Strong Communication skills.</li>\r\n	<li>The ability and desire for sales job with a confident and determined approach.</li>\r\n	<li>Highly self motivated and ambitious in achieving goals.</li>\r\n	<li>Should possess the skill to work both in team and also perform independently.</li>\r\n	<li>Excellent in English both speaking and writing.</li>\r\n</ul>\r\n', 1),
(3, 'Software Design Engineer', '<p><strong>Responsibilities:</strong></p>\r\n\r\n<ul>\r\n	<li>Consult with customers about software system design and maintenance.</li>\r\n	<li>Analyze client needs and software requirements to determine feasibility of design within time and cost constraints.</li>\r\n	<li>Design or customize software for client use with the aim of optimizing operational efficiency.</li>\r\n	<li>Conduct detail design document.</li>\r\n	<li>Completes documentations and procedures for installation &amp; maintenance.</li>\r\n	<li>Resolves day-to-day production issues.</li>\r\n</ul>\r\n\r\n<p><strong>Skills and Requirements:</strong></p>\r\n\r\n<ul>\r\n	<li>At least 3 years experience in software design Engineer.</li>\r\n	<li>Bachelor Degree in Computer science, Information Technology or other related field.</li>\r\n	<li>Ability to understand and analyze project requirements and translate into specifications and programming deliverables.</li>\r\n	<li>Familiarity with up-to-date Web technology, such as HTML, CSS and scripting.</li>\r\n	<li>Basic knowledge in Object Oriented Programming and UML.</li>\r\n	<li>General knowledge in programming languages such as Visual C#.NET, ASP.NET, PHP, JAVA, PYTHON.</li>\r\n	<li>Having Team player, Fast learner, and detailed oriented skills.</li>\r\n	<li>Ability to execute and deliver to tight guidelines and schedules.</li>\r\n</ul>\r\n\r\n<p><strong>Working Hour:</strong></p>\r\n\r\n<ul>\r\n	<li>Monday to Friday ( 8:00-12:00pm | 13:30-17:30pm )</li>\r\n	<li>Saturday ( 8:00- 12:00pm )</li>\r\n</ul>\r\n\r\n<p style="text-align: justify;"><span style="color:#000080">Candidates who meet the requirements from the above should updated and submit CV to Net I Solutions Co., Ltd no later than 20 February 2013, through email info@netisolutions.biz or to #50B, Russian Blvd, Sangkat Depo II, Khan Tuol kork, Phnom Penh, Cambodia.</span></p>\r\n', 2);

-- --------------------------------------------------------

--
-- Table structure for table `center`
--

CREATE TABLE IF NOT EXISTS `center` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `img` varchar(222) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `center`
--

INSERT INTO `center` (`id`, `img`) VALUES
(3, 'pearsonvue.jpg'),
(4, 'prometric.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE IF NOT EXISTS `contact` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `address` text NOT NULL,
  `working` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`id`, `address`, `working`) VALUES
(1, '<p>\r\n            <strong>Net I Solutions Co., Ltd</strong>\r\n            <br/>\r\n            No 50B, Russian Boulevard, Phnom Penh, Cambodia <br/>\r\n             Tel: (855) 23 8800 20 / (855) 23 8800 21, Fax: (855) 23 8801 01<br/>\r\n             Email: <a href="#">info@netisolutions.biz</a>\r\n        </p>', ' <p>\r\n            <strong>Monday - Friday</strong><br/>\r\n            Morning: 8:00 AM - 12:00 PM<br/>\r\n            Afternoon: 1:30 PM - 5:30 PM<br/>\r\n            <strong>Saturday</strong><br/>\r\n            Morning: 8:00 AM - 12:00 PM\r\n        </p>');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE IF NOT EXISTS `customers` (
  `customerid` int(11) NOT NULL AUTO_INCREMENT,
  `customername` varchar(255) NOT NULL,
  `partimg` varchar(255) NOT NULL,
  `img` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL,
  `orderno` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`customerid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=17 ;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`customerid`, `customername`, `partimg`, `img`, `url`, `orderno`) VALUES
(3, 'Smart', 'assets/images/customer/', 'smart.jpg', 'http://www.smart.com.kh/', 5),
(4, 'ANZ', 'assets/images/customer/', 'anz.jpg', 'https://www.anzroyal.com/en/Personal/', 2),
(5, 'airport', 'assets/images/customer/', 'airport.jpg', 'http://www.cambodia-airports.aero/', 3),
(6, 'Canadia', 'assets/images/customer/', 'canadia.jpg', 'http://www.canadiabank.com.kh/', 4),
(7, 'Cellcard', 'assets/images/customer/', 'cellcard.png', 'http://www.cellcard.com.kh/', 1),
(8, 'Hotel', 'assets/images/customer/', 'hotel-cambodiana-black.png', 'http://www.hotelcambodiana.com.kh/', 6),
(9, 'Mekong', 'assets/images/customer/', 'mekong.png', 'http://www.mekongviewtower.com/', 7),
(10, 'Telecom Cambodia', 'assets/images/customer/', 'telecom.png', 'http://www.tc.com.kh/', 8),
(11, 'EDC', 'assets/images/customer/', 'edc.jpg', 'http://www.edc.com.kh/', 9),
(12, 'NBC', 'assets/images/customer/', 'nbc.gif', 'http://www.nbc.org.kh/english/', 10),
(13, 'Brasak', 'assets/images/customer/', '1521514.jpg', 'https://www.prasac.com.kh/', 14),
(14, 'WHO', 'assets/images/customer/', 'who.jpg', 'http://www.who.int/en/', 12),
(15, 'Pasteur Cambodia', 'assets/images/customer/', 'No_Background_Logo_260912_small1.png', 'http://www.pasteur-kh.org/', 11),
(16, 'Online Cambodia', 'assets/images/customer/', 'Online.gif', 'http://online.com.kh/', 13);

-- --------------------------------------------------------

--
-- Table structure for table `email`
--

CREATE TABLE IF NOT EXISTS `email` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `smtp` varchar(222) DEFAULT NULL,
  `port` varchar(9) DEFAULT NULL,
  `username` varchar(222) DEFAULT NULL,
  `password` varchar(30) DEFAULT NULL,
  `to` varchar(222) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `email`
--

INSERT INTO `email` (`id`, `smtp`, `port`, `username`, `password`, `to`) VALUES
(1, 'web32.dnchosting.com', '26', 'website@netisolutions.biz', 'Neti*123', 'hengvongkol@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `footer`
--

CREATE TABLE IF NOT EXISTS `footer` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `address` text,
  `copyright` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `footer`
--

INSERT INTO `footer` (`id`, `address`, `copyright`) VALUES
(1, '<p><span style="font-size:12px"><span style="color:#FFF0F5">No. 50B, Russian Boulevard, Phnom Penh, Cambodia<br />\r\nTel: (855) 23 8800 20 / (855) 23 8800 21, Fax: (855) 23 8801 01</span></span></p>\r\n', '<p style="text-align:right"><br />\r\n<span style="font-size:12px"><span style="color:#FFF0F5">Copyright&copy; 2015 by Net I Solutions Co., Ltd. All right reserved.</span></span></p>\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `itsolution`
--

CREATE TABLE IF NOT EXISTS `itsolution` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `img` varchar(255) DEFAULT NULL,
  `description` text,
  `orderno` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `itsolution`
--

INSERT INTO `itsolution` (`id`, `title`, `img`, `description`, `orderno`) VALUES
(1, 'Network Infrastructure', 'network.jpg', '<ul>\r\n	<li>Routing and Switching Solution</li>\r\n	<li>Network Security</li>\r\n	<li>Network Management</li>\r\n	<li>Network Cabling</li>\r\n	<li>Internet Access Management</li>\r\n	<li>Wireless Solutions</li>\r\n	<li>Server Hardware Solution</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n', 1),
(5, 'Storage', 'storage.jpg', '<ul>\r\n	<li>Big Data</li>\r\n	<li>Data Protection</li>\r\n	<li>High Availability</li>\r\n	<li>Backup and Recovery</li>\r\n	<li>Reliability and Scalability</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n', 2),
(6, 'Video Surveillance', 'cctv.png', '<ul>\r\n	<li>Camera Security Hardware Solutions</li>\r\n	<li>Full HD Video Surveillance Technology</li>\r\n	<li>Camera Pointing Design</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n', 3),
(7, 'Virtualization', 'virt.jpg', '<ul>\r\n	<li>Server Virtualization</li>\r\n	<li>Network and Storage Virtualization</li>\r\n	<li>Desktop &amp; Application Virtualization</li>\r\n	<li>Virtualization Infrastructure Design</li>\r\n</ul>\r\n', 4),
(8, 'Telephone System', 'phone.png', '<ul>\r\n	<li>PABX System</li>\r\n	<li>Call Center</li>\r\n	<li>High Availability</li>\r\n	<li>Telephone Cabling Solution</li>\r\n</ul>\r\n', 5),
(9, 'Queue Management System', 'qms.jpg', '<ul>\r\n	<li>Customer Service Satisfaction</li>\r\n	<li>Achieving Quality Policy</li>\r\n	<li>Providing Hardware for Queue System</li>\r\n	<li>Including System Software Management</li>\r\n</ul>\r\n', 6);

-- --------------------------------------------------------

--
-- Table structure for table `license`
--

CREATE TABLE IF NOT EXISTS `license` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `description` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `license`
--

INSERT INTO `license` (`id`, `description`) VALUES
(1, '<ul>\r\n	<li>Oracle</li>\r\n	<li>Microsoft Software Products</li>\r\n	<li>VMware Software Products</li>\r\n	<li>Network Security and Anti-virus Software</li>\r\n	<li>RedHat</li>\r\n</ul>\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `licenselogo`
--

CREATE TABLE IF NOT EXISTS `licenselogo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `img` varchar(222) NOT NULL,
  `orderno` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `licenselogo`
--

INSERT INTO `licenselogo` (`id`, `img`, `orderno`) VALUES
(1, 'microsoft.png', 1),
(2, 'redhat.png', 2),
(3, 'trendmicro.png', 3),
(4, 'vmware.png', 4);

-- --------------------------------------------------------

--
-- Table structure for table `media`
--

CREATE TABLE IF NOT EXISTS `media` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `url` varchar(255) DEFAULT NULL,
  `name` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `menu`
--

CREATE TABLE IF NOT EXISTS `menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(220) NOT NULL,
  `url` text NOT NULL,
  `type` varchar(30) NOT NULL,
  `parentid` int(11) DEFAULT NULL,
  `orderno` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=15 ;

--
-- Dumping data for table `menu`
--

INSERT INTO `menu` (`id`, `name`, `url`, `type`, `parentid`, `orderno`) VALUES
(2, 'Home', 'http://111.118.150.107:8888/neti', 'main', 0, 1),
(3, 'Our Services', '#', 'main', 0, 2),
(4, 'IT Solutions', 'http://111.118.150.107:8888/neti/itsolution', 'sub', 3, 1),
(5, 'IT Training', 'http://111.118.150.107:8888/neti/training', 'sub', 3, 2),
(6, 'Software Development', 'http://111.118.150.107:8888/neti/software', 'sub', 3, 3),
(7, 'Mobile Site', 'http://111.118.150.107:8888/neti/mobilesite', 'sub', 3, 4),
(10, 'Our Partners', 'http://111.118.150.107:8888/neti/partner/partnerlist', 'main', 0, 3),
(11, 'Customer', 'http://111.118.150.107:8888/neti/customer/customerlist', 'main', 0, 4),
(12, 'Career', 'http://111.118.150.107:8888/neti/career/openjob', 'main', 0, 5),
(13, 'About Us', 'http://111.118.150.107:8888/neti/aboutus', 'main', 0, 6),
(14, 'Contact Us', 'http://111.118.150.107:8888/neti/contactus', 'main', 0, 7);

-- --------------------------------------------------------

--
-- Table structure for table `mobile`
--

CREATE TABLE IF NOT EXISTS `mobile` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `description` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `mobile`
--

INSERT INTO `mobile` (`id`, `description`) VALUES
(1, '<h4><strong>Our Aims are:</strong></h4>\r\n\r\n<ul>\r\n	<li>To be the preferred partner in the field of telecommunications project implementation in Cambodia</li>\r\n	<li>To export our workforces in telecom turn-key solutions in cooperation with our partner i.e. equipment manufacturer(s)</li>\r\n</ul>\r\n\r\n<h4><strong>Typical Projects:</strong></h4>\r\n\r\n<ul>\r\n	<li>Site construction and antenna towers erection</li>\r\n	<li>Base stations&#39;installation and commissioning of telecommunication systems and related services</li>\r\n	<li>Mobile sites&#39;maintenance and repair</li>\r\n</ul>\r\n\r\n<h4><strong>Characteristics and Main Engineering Capability:</strong></h4>\r\n\r\n<ul>\r\n	<li>Maintenance and repair of mobile sites</li>\r\n	<li>Installation and commissioning of telecommunication equipments and related services</li>\r\n	<li>Construction of antenna towers and technical building</li>\r\n</ul>\r\n\r\n<h4><strong>Tools and Facilities:</strong></h4>\r\n\r\n<ul>\r\n	<li>Complete sets of installation and maintenance tools:\r\n	<ul>\r\n		<li>Site master, Theodolite, Guy tension Tester, Torque Tester</li>\r\n		<li>Laptop computers for commissioning works</li>\r\n		<li>Spare parts incl. generator sets, air-conditioner, AVR</li>\r\n	</ul>\r\n	</li>\r\n	<li>A warehouse and 8 trucks</li>\r\n</ul>\r\n\r\n<h4><strong>Personnel:</strong></h4>\r\n\r\n<ul>\r\n	<li>We can deploy 50 site constructions per quarter including CW and TE teams.</li>\r\n	<li>Site Maintenance and repair: we have 30 teams of experienced personnel dedicated to work 24/24h,7days a week incl. holidays that can be deployed all over Cambodia.</li>\r\n	<li>Committed to good reputation of the company and reliable partnership with customers</li>\r\n</ul>\r\n\r\n<h4><strong>CW &amp; TE Work Experience:</strong></h4>\r\n\r\n<ul>\r\n	<li>2007 to 2008: 100 Mobitel Sites constructions. Tower foundation construction, tower erection, and telecom equipment installation and commissioning</li>\r\n	<li>2009: 10 Mobitel Sites constructions Complete civil works including tower foundation, tower erection, BTS room, guard room, toilet, fence, gate, backfilling, gravelling, access road etc&hellip; and installation and integration of telecom equipment and related equipment such as solar systems, diesel generators, rectifiers etc&hellip;</li>\r\n	<li>2010: 20 Mobitel Sites constructions. Complete civil works including tower foundation, tower erection, BTS room, guard room, toilet, fence, gate, backfilling, gravelling, access road etc&hellip; and installation and integration of telecom equipment and related equipment such as solar systems, diesel generators, rectifiers etc&hellip;</li>\r\n</ul>\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `mobileslide`
--

CREATE TABLE IF NOT EXISTS `mobileslide` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `img1` varchar(222) DEFAULT NULL,
  `cap1` varchar(255) DEFAULT NULL,
  `img2` varchar(255) DEFAULT NULL,
  `cap2` varchar(255) DEFAULT NULL,
  `orderno` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=12 ;

--
-- Dumping data for table `mobileslide`
--

INSERT INTO `mobileslide` (`id`, `title`, `img1`, `cap1`, `img2`, `cap2`, `orderno`) VALUES
(1, 'Civil Work Tower Construction', 'img1.png', 'Casting Concrete Footing', 'img2.png', 'Casting Concrete Column', 1),
(3, 'Technical Site Survey, Detail Design Drawing and Site Preparation', 'img3.png', 'Site Layout Preparation', 'img4.png', 'Footing Excavation', 2),
(4, 'Building and Equipment Room Construction', 'img5.png', 'Building footing of flood site', 'img6.png', 'Reinforcement slab', 3),
(5, 'Grounding and Lightning System Installation', 'img7.png', 'Grounding pit installation', 'img8.png', 'Grounding wire installation', 4),
(6, 'Indoor Equipment Room Construction', 'img9.png', 'Ceiling Installation', 'img10.png', 'Vinyle tiles installation', 5),
(7, 'Power (AC and DC) and Electrical Installation', 'img11.png', 'Electrical and lightening', 'img12.png', 'DG and Solar installation', 6),
(8, 'Radio Frequency and Micro Wave Installation', 'img13.png', 'RF and MW installation', 'img14.png', 'Solar installation', 7),
(9, 'Telecom Equipment Installation', 'img15.png', 'Battery and BTS installation', 'img16.png', 'Indoor electrical installation', 8),
(10, 'Onair and Offair Commisioning', 'img17.png', 'Commissioning testing', 'img18.png', 'TE installation', 9),
(11, 'Testing and QA (Verticality test,Torque test, Ground test, Tension test, Electrical test, Antenna test, External Alarm test, VSWR test, BER test, QA Telecom, QA BTS, and QA MW', 'img19.png', 'Tension testing', 'img20.png', 'Verticality Testing', 10);

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE IF NOT EXISTS `news` (
  `newsid` int(11) NOT NULL AUTO_INCREMENT,
  `newsname` varchar(255) DEFAULT NULL,
  `description` longtext,
  `orderno` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`newsid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`newsid`, `newsname`, `description`, `orderno`) VALUES
(1, 'Award Winning 2011', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis vitae aliquam massa. Nunc dapibus a tortor sit amet laoreet. Sed sit amet sem ut libero fermentum laoreet vitae in mauris. Maecenas nec mi eu est lacinia elementum nec non elit. Nulla fermentum consequat nulla nec suscipit. Maecenas ac enim et ligula porta maximus. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin leo quam, dignissim ut ullamcorper a, luctus in ipsum. Curabitur mattis, purus vel efficitur fringilla, odio urna lobortis magna, at viverra ex urna eget nisi.\r\n', 1),
(3, 'ICT Seminar 2015', 'Pellentesque accumsan nisl dui, eu pellentesque lacus sollicitudin in. Vestibulum vel ultricies magna. In hac habitasse platea dictumst. Vivamus at pharetra tellus. Suspendisse ultrices nunc at luctus facilisis. Donec at congue sem. Cras nisi nulla, vulputate ac neque non, luctus vulputate arcu. Nam turpis sapien, elementum vel lacinia eu, fringilla scelerisque tellus. Sed urna orci, pharetra quis orci ut, posuere euismod nunc. Nunc pulvinar velit urna, vitae sollicitudin eros pretium in. Pellentesque varius neque neque, sit amet elementum leo convallis id. Nunc eu auctor erat, quis pulvinar ligula.', 2);

-- --------------------------------------------------------

--
-- Table structure for table `page`
--

CREATE TABLE IF NOT EXISTS `page` (
  `pageid` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `description` longtext NOT NULL,
  `url` varchar(255) NOT NULL,
  PRIMARY KEY (`pageid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `page`
--

INSERT INTO `page` (`pageid`, `title`, `description`, `url`) VALUES
(1, 'Event Schedule', '<p>This is a sample page. <em>You write anything as you want.</em></p>\r\n\r\n<hr />\r\n<p><span style="color:#FFF0F5"><span style="background-color:#008000">jkhkjhkhkjhkhkjhkhkjhkjh</span></span></p>\r\n\r\n<p><input name="btnGo" type="button" value="Go Now" /></p>\r\n', 'page/view/1');

-- --------------------------------------------------------

--
-- Table structure for table `partners`
--

CREATE TABLE IF NOT EXISTS `partners` (
  `partnerid` int(11) NOT NULL AUTO_INCREMENT,
  `partnername` varchar(255) NOT NULL,
  `partimg` varchar(255) NOT NULL,
  `img` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL,
  `orderno` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`partnerid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=35 ;

--
-- Dumping data for table `partners`
--

INSERT INTO `partners` (`partnerid`, `partnername`, `partimg`, `img`, `url`, `orderno`) VALUES
(1, 'EMC', 'assets/images/partner/', 'emc-logo.png', 'http://www.emc.com/en-us/index.htm', 1),
(2, 'NetApp', 'assets/images/partner/', 'NetApp.jpg', 'http://www.netapp.com/us/', 2),
(3, 'CISCO', 'assets/images/partner/', 'cisco.png', 'http://www.cisco.com/', 3),
(4, 'Oracle', 'assets/images/partner/', 'oracle.png', 'http://www.oracle.com/index.html', 4),
(5, 'Trend Micro', 'assets/images/partner/', 'trendmicro.png', 'http://apac.trendmicro.com/apac/index.html', 5),
(6, 'Microsoft', 'assets/images/partner/', 'microsoft.png', 'http://www.microsoft.com/en-us/', 5),
(7, 'VMWare', 'assets/images/partner/', 'vmware.png', 'http://www.vmware.com/ap', 7),
(8, 'RedHat', 'assets/images/partner/', 'redhat.jpg', 'https://www.redhat.com/en', 8),
(9, 'Hikvision', 'assets/images/partner/', 'hikvision.jpg', 'http://overseas.hikvision.com/en/index.html', 9),
(10, 'Axis', 'assets/images/partner/', 'axis.png', 'http://www.axis.com/global/en/', 10),
(11, 'Panasonic', 'assets/images/partner/', 'panasonic.jpg', 'http://security.panasonic.com/pss/security/', 11),
(12, 'Symantec', 'assets/images/partner/', 'symantec.png', 'https://www.symantec.com/index.jsp', 12),
(13, 'Dell', 'assets/images/partner/', 'dell.png', 'http://www.dell.com/', 13),
(14, 'Fortinet', 'assets/images/partner/', 'fortinet.jpg', 'http://www.fortinet.com/', 14),
(15, 'Avaya', 'assets/images/partner/', 'avaya.jpg', 'http://www.avaya.com/usa/', 15),
(16, 'Innetweb', 'assets/images/partner/', 'infinite.png', 'http://www.innetweb.com/', 16),
(17, 'Polycom', 'assets/images/partner/', 'polycom.png', 'http://www.polycom.com.sg/', 17),
(18, 'Fireeye', 'assets/images/partner/', 'FireEye-logo.jpg', 'https://www.fireeye.com/', 18),
(19, 'Citrix', 'assets/images/partner/', 'citric.png', 'https://www.citrix.com/', 19),
(20, 'Checkpoint', 'assets/images/partner/', 'CP_ltd_vertical_Pos.jpg', 'http://www.checkpoint.com/', 20),
(21, 'Gms', 'assets/images/partner/', 'qms.jpg', 'http://www.qms.com.my/', 21),
(22, 'Alcatel', 'assets/images/partner/', 'alcatel.png', 'https://www.alcatel-lucent.com/', 22),
(23, 'Juniper', 'assets/images/partner/', 'juniper.jpg', 'http://www.juniper.net/us/en/', 23),
(24, 'Hp', 'assets/images/partner/', 'hp.jpg', 'http://www.hp.com/country/us/en/uc/welcome.html', 24),
(25, 'IBM', 'assets/images/partner/', 'ibm.jpg', 'http://www.ibm.com/us-en/', 25),
(26, 'Bluecoat', 'assets/images/partner/', 'bluecoat.jpg', 'https://www.bluecoat.com/', 26),
(27, 'Paloaltone Works', 'assets/images/partner/', 'paloalto.jpg', 'https://www.paloaltonetworks.com/', 27),
(29, 'Pearsonvue', 'assets/images/partner/', 'pearsonvue.jpg', 'http://home.pearsonvue.com/', 29),
(30, 'Prometric', 'assets/images/partner/', 'prometric.jpg', 'https://www.prometric.com/en-us/Pages/home.aspx', 30),
(31, 'Sangfor', 'assets/images/partner/', 'sangfor.jpg', 'http://www.sangfor.com/', 31),
(32, 'Vutele', 'assets/images/partner/', 'vutelepresence.jpg', 'http://www.vutelepresence.com/', 32),
(33, 'Ostendi', 'assets/images/partner/', 'ostendi.png', 'http://www.ostendi.com/en/', 33),
(34, 'Scytl', 'assets/images/partner/', 'scytl.png', 'http://www.scytl.com/en/news/ ', 0);

-- --------------------------------------------------------

--
-- Table structure for table `service`
--

CREATE TABLE IF NOT EXISTS `service` (
  `serviceid` int(11) NOT NULL AUTO_INCREMENT,
  `servicename` varchar(255) DEFAULT NULL,
  `description` longtext,
  `url` varchar(255) DEFAULT NULL,
  `partimg` varchar(255) DEFAULT NULL,
  `img` varchar(255) DEFAULT NULL,
  `orderno` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`serviceid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `service`
--

INSERT INTO `service` (`serviceid`, `servicename`, `description`, `url`, `partimg`, `img`, `orderno`) VALUES
(1, 'TI System Integration', 'Net I Solutions employs young energetic and dynamic software and hardware engineers to provide our valuable customers with speediest and most reliable solutions and follow-up services.\r\n', 'itsolution', 'assets/images/service/', 'system.jpg', 1),
(3, 'IT Education and Training', 'As more and more organizations around the world lay emphasis on the role of IT, requirement of professionals with sound technical knowledge is in demand. Net i company range of courses ...', 'training', 'assets/images/service/', 'training.png', 2),
(4, 'Software Development', 'Software Development is one of our best services. We guarantee to provide high quality, scalable and secure software packages to our customers for managing their businesses.', 'software', 'assets/images/service/', 'software.png', 3),
(5, 'Mobile Site Services', 'We aim to be the preferred partner in the field of telecommunication project implementation in Cambodia. Our aim also to export our workforces in telecom turn-key solutions in ...', 'mobilesite', 'assets/images/service/', 'mobile.jpg', 4);

-- --------------------------------------------------------

--
-- Table structure for table `slideshow`
--

CREATE TABLE IF NOT EXISTS `slideshow` (
  `slideshowid` int(11) NOT NULL AUTO_INCREMENT,
  `slideshowname` varchar(255) DEFAULT NULL,
  `description` longtext,
  `partimg` varchar(255) DEFAULT NULL,
  `img` varchar(255) DEFAULT NULL,
  `orderno` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`slideshowid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `slideshow`
--

INSERT INTO `slideshow` (`slideshowid`, `slideshowname`, `description`, `partimg`, `img`, `orderno`) VALUES
(1, 'IT Solutions', '<p>Net I Solutions was established in 2003,</p>\r\n', 'assets/images/slideshow/', 'solution.jpg', 1),
(3, 'IT Training', 'IT Professional Training', 'assets/images/slideshow/', 'training.png', 2),
(4, 'Software', '<p>Software Development</p>\r\n', 'assets/images/slideshow/', 'software.jpg', 3),
(5, 'Prometric', '', 'assets/images/slideshow/', 'Prometric-banner.jpg', 4),
(6, 'Pearson Vue', '', 'assets/images/slideshow/', 'banner9.jpg', 5);

-- --------------------------------------------------------

--
-- Table structure for table `software`
--

CREATE TABLE IF NOT EXISTS `software` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `img` varchar(222) DEFAULT NULL,
  `description` text,
  `orderno` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `software`
--

INSERT INTO `software` (`id`, `title`, `img`, `description`, `orderno`) VALUES
(1, 'HR Management System', 'hr.png', '<ul>\r\n	<li>Administration</li>\r\n	<li>Payroll</li>\r\n	<li>Recruiting</li>\r\n	<li>Training</li>\r\n</ul>\r\n', 1),
(2, 'Factory Management System', 'factory.png', '<ul>\r\n	<li>Bills of Material</li>\r\n	<li>Materials Planning</li>\r\n	<li>Order Processing</li>\r\n	<li>Scheduling</li>\r\n</ul>\r\n', 2),
(3, 'Insurance System', 'insurance.png', '<ul>\r\n	<li>Underwriting Module</li>\r\n	<li>Claims Module</li>\r\n	<li>Accounts Module</li>\r\n	<li>Authorization</li>\r\n</ul>\r\n', 3),
(5, 'Web Development', 'web.png', '<ul>\r\n	<li>Static Website</li>\r\n	<li>Dynamic Website</li>\r\n	<li>e-Commerce Website</li>\r\n	<li>Custom Web Apps</li>\r\n</ul>\r\n', 4);

-- --------------------------------------------------------

--
-- Table structure for table `training`
--

CREATE TABLE IF NOT EXISTS `training` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `description` text,
  `offer` text,
  `img1` varchar(222) DEFAULT NULL,
  `img2` varchar(222) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `training`
--

INSERT INTO `training` (`id`, `title`, `description`, `offer`, `img1`, `img2`) VALUES
(1, 'IT Education and Training', '<p><span style="color:#008000"><strong>IT Professional Training Courses at Net I Training</strong></span></p>\r\n\r\n<p>As more and more organizations around the world lay emphasis on the role of IT, requirement of professionals with sound technical knowledge is in demand. Net i company range of courses equip a professional computer courses, with well-known local and international certification to work efficiently with/in IT. Whether it is handling IT productivity tools or doing complex network configuration, NIIT short terms courses prepare the person for that required niche.</p>\r\n', '<ul>\r\n	<li><span style="color:#008000"><strong>Microsoft Training Program</strong></span></li>\r\n	<li><span style="color:#008000"><strong>RedHat Enterprise Linux</strong></span></li>\r\n	<li><span style="color:#008000"><strong>Oracle Database</strong></span></li>\r\n	<li><span style="color:#008000"><strong>CISCO</strong></span></li>\r\n	<li><span style="color:#008000"><strong>Sun Solaris</strong></span></li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style="color:#A52A2A">Net I has won award of being the best IT professional training center which presented by IDG in 2011.</span></p>\r\n\r\n<p>&nbsp;</p>\r\n', 'award.png', 'ittraining.png');

-- --------------------------------------------------------

--
-- Table structure for table `trainingslide`
--

CREATE TABLE IF NOT EXISTS `trainingslide` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `img` varchar(222) DEFAULT NULL,
  `url` varchar(222) DEFAULT NULL,
  `orderno` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `trainingslide`
--

INSERT INTO `trainingslide` (`id`, `title`, `img`, `url`, `orderno`) VALUES
(1, 'CISCO', 'cisco.jpg', '#', 1),
(2, 'Microsoft', 'microsoft.gif', '#', 2),
(3, 'Oracle', 'oracle.jpg', '#', 3),
(4, 'RedHat', 'redhat.png', '#', 4);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `userid` int(11) NOT NULL AUTO_INCREMENT,
  `firstname` varchar(90) NOT NULL,
  `lastname` varchar(90) NOT NULL,
  `gender` varchar(7) NOT NULL,
  `email` varchar(120) NOT NULL,
  `username` varchar(120) NOT NULL,
  `password` varchar(120) NOT NULL,
  `type` varchar(90) NOT NULL,
  `status` int(11) NOT NULL,
  PRIMARY KEY (`userid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`userid`, `firstname`, `lastname`, `gender`, `email`, `username`, `password`, `type`, `status`) VALUES
(2, 'HENG', 'Vongkol', 'Male', 'hengvongkol@gmail.com', 'admin', '202cb962ac59075b964b07152d234b70', 'Admin', 1),
(3, 'Sopheak', 'HENG', 'Male', 'sopheak.heng@gmail.com', 'sopheak', 'caf1a3dfb505ffed0d024130f58c5cfa', 'Admin', 1);

-- --------------------------------------------------------

--
-- Table structure for table `welcome`
--

CREATE TABLE IF NOT EXISTS `welcome` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `description` longtext,
  `title` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `welcome`
--

INSERT INTO `welcome` (`id`, `description`, `title`) VALUES
(1, '<p>Net I Solutions was established in 2003, its founding was based on the understanding that most management issues in industries could be resolved through the effective use of information technology.</p>\r\n', 'Welcome');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
