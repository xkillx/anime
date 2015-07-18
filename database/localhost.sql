-- Adminer 4.2.1 MySQL dump

SET NAMES utf8;
SET time_zone = '+00:00';
SET foreign_key_checks = 0;
SET sql_mode = 'NO_AUTO_VALUE_ON_ZERO';

DROP TABLE IF EXISTS `artis`;
CREATE TABLE `artis` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `japan_name` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `episode`;
CREATE TABLE `episode` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `content` text NOT NULL,
  `date` datetime NOT NULL,
  `kategori_id` bigint(20) unsigned NOT NULL,
  `kualitas` varchar(100) NOT NULL,
  `size` varchar(100) NOT NULL,
  `source` varchar(100) NOT NULL,
  `mirror` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `hit` bigint(20) unsigned NOT NULL DEFAULT '0',
  `short_link` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `episode` (`id`, `title`, `content`, `date`, `kategori_id`, `kualitas`, `size`, `source`, `mirror`, `password`, `hit`, `short_link`) VALUES
(12,	'Book 1 Episode 1',	'kontent',	'2015-07-16 23:13:39',	3329,	'',	'',	'',	'',	'',	0,	''),
(13,	'Book 1 Episode 2',	'',	'2015-07-16 23:13:58',	3329,	'',	'',	'',	'',	'',	0,	''),
(14,	'book 1 episode 4',	'asda',	'2015-07-16 23:21:54',	3329,	'720p',	'300mb',	'kumpulbagi',	'http://localhost/anime',	'',	0,	''),
(15,	'Book 1 Episode 3',	'hgj',	'2015-07-16 23:30:19',	3329,	'720p',	'300mb',	'localhost',	'http://locahost/anime',	'asopat',	1,	''),
(16,	'Book 1 Episode 5',	'qeqwe',	'2015-07-17 00:56:56',	3329,	'720p',	'300mb',	'localhost',	'http://locahost/anime',	'asopat',	1,	'http://goo.gl/WmftUV'),
(17,	'Book 1 Episode 6',	'sesuatu',	'2015-07-17 01:02:05',	3329,	'720p',	'300mb',	'localhost',	'http://locahost/anime',	'asopat',	1,	'http://goo.gl/WmftUV'),
(18,	'Book 1 Episode 7',	'',	'2015-07-17 05:30:38',	3329,	'720p',	'300mb',	'localhost',	'http://locahost/anime',	'asopat',	1,	'http://goo.gl/WmftUV'),
(19,	'Book 1 Episode 8',	'',	'2015-07-17 05:34:19',	3329,	'720p',	'300mb',	'localhost',	'http://locahost/anime',	'asopat',	1,	''),
(20,	'Book 1 Episode 9',	'',	'2015-07-17 05:40:46',	3329,	'720p',	'300mb',	'localhost',	'http://locahost/anime',	'asopat',	1,	'http://goo.gl/tQYgDB');

DROP TABLE IF EXISTS `group`;
CREATE TABLE `group` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `group` (`id`, `name`) VALUES
(1,	'terdaftar'),
(2,	'tamu'),
(3,	'administrator'),
(4,	'penulis');

DROP TABLE IF EXISTS `kategori`;
CREATE TABLE `kategori` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `judul` varchar(100) NOT NULL,
  `keterangan` text NOT NULL,
  `cover` varchar(100) NOT NULL,
  `year` year(4) NOT NULL DEFAULT '2015',
  `type` varchar(100) NOT NULL,
  `status` varchar(100) NOT NULL,
  `producers` varchar(100) NOT NULL,
  `genres` varchar(100) NOT NULL,
  `duration` varchar(100) NOT NULL,
  `english` varchar(100) NOT NULL,
  `synonyms` varchar(100) NOT NULL,
  `japanese` varchar(100) NOT NULL,
  `indonesian` varchar(100) NOT NULL,
  `hit` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `kategori` (`id`, `judul`, `keterangan`, `cover`, `year`, `type`, `status`, `producers`, `genres`, `duration`, `english`, `synonyms`, `japanese`, `indonesian`, `hit`) VALUES
(3329,	'The Legend of Korra',	'<h1>Synopsis</h1>\r\nini adalah contoh sinopsis',	'static/img/contoh.jpg',	'2015',	'TV',	'Finished Airing',	'Producers',	'Genres',	'Duration',	'The Legend of Korra',	'The Legend of Korra',	'The Legend of Korra',	'The Legend of Korra',	1);

DROP TABLE IF EXISTS `laporan`;
CREATE TABLE `laporan` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `kategori_id` bigint(20) unsigned NOT NULL,
  `episode_id` bigint(20) unsigned NOT NULL,
  `date` datetime NOT NULL,
  `ip` varchar(100) NOT NULL,
  `is_read` varchar(100) NOT NULL DEFAULT 'unread',
  `state` varchar(100) NOT NULL DEFAULT 'draft',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `link`;
CREATE TABLE `link` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `url` longtext NOT NULL,
  `seq` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `link` (`id`, `name`, `url`, `seq`) VALUES
(1,	'Tambah Kategori',	'/?halaman=tambah_kategori',	''),
(2,	'Tambah Episode',	'/?halaman=tambah_episode',	''),
(3,	'Tambah OST',	'/?halaman=tambah_ost',	''),
(4,	'Tambah Artis',	'/?halaman=tambah_artis',	''),
(5,	'Anime Lists',	'/?halaman=kategori',	''),
(6,	'Tentang',	'/?halaman=tentang',	''),
(7,	'Team',	'/?halaman=team',	''),
(8,	'Disclaimer',	'/?halaman=disclaimer',	''),
(9,	'Tos',	'/?halaman=tos',	''),
(10,	'Home',	'/?',	''),
(11,	'Login',	'/?halaman=login',	''),
(12,	'Register',	'/?halaman=register',	''),
(13,	'Profile',	'/?halaman=profile',	''),
(14,	'Tambah Menu',	'/?halaman=menu',	''),
(15,	'Detail Kategori',	'/?halaman=detail_kategori',	''),
(16,	'Link',	'/?halaman=link',	''),
(17,	'Edit Cover',	'/?halaman=edit_cover',	''),
(18,	'Edit Password',	'/?halaman=edit_password',	''),
(19,	'Edit Profile',	'/?halaman=edit_profile',	''),
(20,	'Group',	'/?halaman=group',	'');

DROP TABLE IF EXISTS `menu`;
CREATE TABLE `menu` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `group_id` bigint(20) unsigned NOT NULL,
  `link_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `menu` (`id`, `group_id`, `link_id`) VALUES
(6,	2,	9),
(7,	2,	5),
(8,	2,	11),
(9,	2,	12),
(10,	3,	13),
(11,	3,	14),
(12,	3,	1),
(13,	3,	2),
(14,	3,	3),
(15,	3,	5),
(16,	3,	6),
(17,	3,	7),
(18,	3,	8),
(19,	3,	9),
(20,	3,	15),
(21,	2,	15),
(22,	2,	5),
(23,	1,	5),
(24,	1,	15),
(25,	1,	13),
(26,	1,	6),
(27,	1,	7),
(28,	1,	8),
(29,	1,	9),
(30,	3,	16),
(31,	1,	17),
(32,	1,	18),
(33,	1,	19),
(34,	3,	17),
(35,	3,	18),
(36,	3,	19),
(37,	3,	20);

DROP TABLE IF EXISTS `ost`;
CREATE TABLE `ost` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `artis_id` bigint(20) unsigned NOT NULL,
  `kategori_id` bigint(20) unsigned NOT NULL,
  `judul` longtext NOT NULL,
  `kanji` text NOT NULL,
  `romaji` text NOT NULL,
  `english` text NOT NULL,
  `indonesian` text NOT NULL,
  `mirror` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `pengaturan`;
CREATE TABLE `pengaturan` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `value` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `pengaturan` (`id`, `name`, `value`) VALUES
(1,	'tos',	'<h1> Terms of Service for </h1>\n<p> If you require any more information or have any questions about our Terms of Service, please feel free to contact us by email at <a name=\"contactlink\"></a> <a href=\"mailto:\"></a>.<h2>Introduction</h2>\n\n            <p>These terms and conditions govern your use of this website; by using this website, you accept these terms and conditions in full and without reservation. If you disagree with these terms and conditions or any part of these terms and conditions, you must not use this website.</p>\n\n            <p>You must be at least 18 [eighteen] years of age to use this website.  By using this website and by agreeing to these terms and conditions, you warrant and represent that you are at least 18 years of age.</p>\n\n\n            <h2>License to use website</h2>\n            <p>Unless otherwise stated,  and/or its licensors own the intellectual property rights published on this website and materials used on .  Subject to the license below, all these intellectual property rights are reserved.</p>\n\n            <p>You may view, download for caching purposes only, and print pages, files or other content from the website for your own personal use, subject to the restrictions set out below and elsewhere in these terms and conditions.</p>\n\n            <p>You must not:</p>\n            <ul>\n                <li>republish material from this website in neither print nor digital media or documents (including republication on another website);</li>\n                <li>sell, rent or sub-license material from the website;</li>\n                <li>show any material from the website in public;</li>\n                <li>reproduce, duplicate, copy or otherwise exploit material on this website for a commercial purpose;</li>\n                <li>edit or otherwise modify any material on the website;</li>\n                <li>redistribute material from this website - except for content specifically and expressly made available for redistribution; or</li>\n		  <li>republish or reproduce any part of this website through the use of iframes or screenscrapers.</li>\n            </ul>\n            <p>Where content is specifically made available for redistribution, it may only be redistributed within your organisation.</p>\n\n            <h2>Acceptable use</h2>\n\n            <p>You must not use this website in any way that causes, or may cause, damage to the website or impairment of the availability or accessibility of  or in any way which is unlawful, illegal, fraudulent or harmful, or in connection with any unlawful, illegal, fraudulent or harmful purpose or activity.</p>\n\n            <p>You must not use this website to copy, store, host, transmit, send, use, publish or distribute any material which consists of (or is linked to) any spyware, computer virus, Trojan horse, worm, keystroke logger, rootkit or other malicious computer software.</p>\n\n            <p>You must not conduct any systematic or automated data collection activities on or in relation to this website without \'s express written consent.<br />\nThis includes:\n<ul><li>scraping</li>\n<li>data mining</li>\n<li>data extraction</li>\n<li>data harvesting</li>\n<li>\'framing\' (iframes)</li>\n<li>Article \'Spinning\'</li>\n</ul>\n</p>\n\n            <p>You must not use this website or any part of it to transmit or send unsolicited commercial communications.</p>\n\n            <p>You must not use this website for any purposes related to marketing without the express written consent of .</p>\n\n		<!-- If password protected areas BEGIN -->            \n		<h2>Restricted access</h2>\n\n            <p>Access to certain areas of this website is restricted.  reserves the right to restrict access to certain areas of this website, or at our discretion, this entire website.  may change or modify this policy without notice.</p>\n\n            <p>If  provides you with a user ID and password to enable you to access restricted areas of this website or other content or services, you must ensure that the user ID and password are kept confidential. You alone are responsible for your password and user ID security..</p>\n\n            <p> may disable your user ID and password at \'s sole discretion without notice or explanation.</p>\n\n            <h2>User content</h2>\n\n            <p>In these terms and conditions, “your user content” means material (including without limitation text, images, audio material, video material and audio-visual material) that you submit to this website, for whatever purpose.</p>\n\n            <p>You grant to  a worldwide, irrevocable, non-exclusive, royalty-free license to use, reproduce, adapt, publish, translate and distribute your user content in any existing or future media.  You also grant to  the right to sub-license these rights, and the right to bring an action for infringement of these rights.</p>\n\n            <p>Your user content must not be illegal or unlawful, must not infringe any third party\'s legal rights, and must not be capable of giving rise to legal action whether against you or  or a third party (in each case under any applicable law).</p>\n\n            <p>You must not submit any user content to the website that is or has ever been the subject of any threatened or actual legal proceedings or other similar complaint.</p>\n\n            <p> reserves the right to edit or remove any material submitted to this website, or stored on the servers of , or hosted or published upon this website.</p>\n\n            <p>\'s rights under these terms and conditions in relation to user content,  does not undertake to monitor the submission of such content to, or the publication of such content on, this website.</p>\n\n            <h2>No warranties</h2>\n\n            <p>This website is provided “as is” without any representations or warranties, express or implied.   makes no representations or warranties in relation to this website or the information and materials provided on this website.</p>\n\n            <p>Without prejudice to the generality of the foregoing paragraph,  does not warrant that:</p>\n            <ul>\n                <li>this website will be constantly available, or available at all; or</li>\n                <li>the information on this website is complete, true, accurate or non-misleading.</li>\n            </ul>\n            <p>Nothing on this website constitutes, or is meant to constitute, advice of any kind.  If you require advice in relation to any legal, financial or medical matter you should consult an appropriate professional.</p>\n\n            <h2>Limitations of liability</h2>\n\n            <p> will not be liable to you (whether under the law of contact, the law of torts or otherwise) in relation to the contents of, or use of, or otherwise in connection with, this website:</p>\n            <ul>\n                <li>to the extent that the website is provided free-of-charge, for any direct loss;</li>\n                <li>for any indirect, special or consequential loss; or</li>\n                <li>for any business losses, loss of revenue, income, profits or anticipated savings, loss of contracts or business relationships, loss of reputation or goodwill, or loss or corruption of information or data.</li>\n            </ul>\n            <p>These limitations of liability apply even if  has been expressly advised of the potential loss.</p>\n\n            <h2>Exceptions</h2>\n\n            <p>Nothing in this website disclaimer will exclude or limit any warranty implied by law that it would be unlawful to exclude or limit; and nothing in this website disclaimer will exclude or limit the liability of  in respect of any:</p>\n            <ul>\n                <li>death or personal injury caused by the negligence of  or its agents, employees or shareholders/owners;</li>\n                <li>fraud or fraudulent misrepresentation on the part of ; or</li>\n                <li>matter which it would be illegal or unlawful for  to exclude or limit, or to attempt or purport to exclude or limit, its liability.</li>\n            </ul>\n            <h2>Reasonableness</h2>\n\n            <p>By using this website, you agree that the exclusions and limitations of liability set out in this website disclaimer are reasonable.</p>\n\n            <p>If you do not think they are reasonable, you must not use this website.</p>\n\n            <h2>Other parties</h2>\n\n            <p>You accept that, as a limited liability entity,  has an interest in limiting the personal liability of its officers and employees.  You agree that you will not bring any claim personally against \'s officers or employees in respect of any losses you suffer in connection with the website.</p>\n\n            <p>Without prejudice to the foregoing paragraph, you agree that the limitations of warranties and liability set out in this website disclaimer will protect \'s officers, employees, agents, subsidiaries, successors, assigns and sub-contractors as well as .</p>\n\n            <h2>Unenforceable provisions</h2>\n\n            <p>If any provision of this website disclaimer is, or is found to be, unenforceable under applicable law, that will not affect the enforceability of the other provisions of this website disclaimer.</p>\n\n            <h2>Indemnity</h2>\n\n            <p>You hereby indemnify  and undertake to keep  indemnified against any losses, damages, costs, liabilities and expenses (including without limitation legal expenses and any amounts paid by  to a third party in settlement of a claim or dispute on the advice of \'s legal advisers) incurred or suffered by  arising out of any breach by you of any provision of these terms and conditions, or arising out of any claim that you have breached any provision of these terms and conditions.</p>\n\n            <h2>Breaches of these terms and conditions</h2>\n\n            <p>Without prejudice to \'s other rights under these terms and conditions, if you breach these terms and conditions in any way,  may take such action as  deems appropriate to deal with the breach, including suspending your access to the website, prohibiting you from accessing the website, blocking computers using your IP address from accessing the website, contacting your internet service provider to request that they block your access to the website and/or bringing court proceedings against you.</p>\n\n            <h2>Variation</h2>\n\n            <p> may revise these terms and conditions from time-to-time.  Revised terms and conditions will apply to the use of this website from the date of the publication of the revised terms and conditions on this website.  Please check this page regularly to ensure you are familiar with the current version.</p>\n\n            <h2>Assignment</h2>\n\n            <p> may transfer, sub-contract or otherwise deal with \'s rights and/or obligations under these terms and conditions without notifying you or obtaining your consent.</p>\n\n            <p>You may not transfer, sub-contract or otherwise deal with your rights and/or obligations under these terms and conditions.</p>\n\n            <h2>Severability</h2>\n\n            <p>If a provision of these terms and conditions is determined by any court or other competent authority to be unlawful and/or unenforceable, the other provisions will continue in effect.  If any unlawful and/or unenforceable provision would be lawful or enforceable if part of it were deleted, that part will be deemed to be deleted, and the rest of the provision will continue in effect.</p>\n\n            <h2>Entire agreement</h2>\n\n            <p>These terms and conditions, together with \'s Privacy Policy constitute the entire agreement between you and  in relation to your use of this website, and supersede all previous agreements in respect of your use of this website.</p>\n\n            <h2>Law and jurisdiction</h2>\n\n            <p>These terms and conditions will be governed by and construed in accordance with the laws of , and any disputes relating to these terms and conditions will be subject to the exclusive jurisdiction of the courts of .</p>\n\n<h2>About these website Terms of Service</h2>\n<p>We created these website terms and conditions using the TOS/T&C generator available from <a href=\"http://www.PrivacyPolicyOnline.com\">Privacy Policy Online</a>.\n</p>\n            \n\n            \n\n            \n\n            \n\n	     \n\n            \n\n            <h2>\'s details</h2>\n\n            <p>The full name of  is .</p>\n\n            \n	     \n		\n	     <p>\n		</p>\n	     <a href=\"http://www.PrivacyPolicyOnline.com\" title=\"PrivacyPolicyOnline.com Approved Site\" target=\"_blank\"><img src=\"http://www.privacypolicyonline.com/images/privacypolicyonline-seal.png\" border=\"0\" alt=\"Privacy Policy Online Approved Site\" align=\"right\" /></a>\n\n            <p>You can contact  by email at our email address link at the <a href=\"#contactlink\">top of this Terms of Service document</a>.</p>\n	     	'),
(2,	'disclaimer',	'disclaimer'),
(3,	'tentang',	'sdad'),
(4,	'admin_email',	'anggagewor@gmail.com'),
(5,	'site_url',	'http://localhost/anime'),
(6,	'site_name',	'Anime Directory'),
(7,	'db_version',	'17072015');

DROP TABLE IF EXISTS `pengguna`;
CREATE TABLE `pengguna` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(100) NOT NULL,
  `password` longtext NOT NULL,
  `fname` varchar(100) NOT NULL,
  `lname` varchar(100) NOT NULL,
  `nice_name` varchar(100) NOT NULL,
  `yahoo` varchar(100) NOT NULL DEFAULT '-',
  `gmail` varchar(100) NOT NULL DEFAULT '-',
  `whatsapp` varchar(100) NOT NULL DEFAULT '-',
  `bbm` varchar(100) NOT NULL DEFAULT '-',
  `line` varchar(100) NOT NULL DEFAULT '-',
  `skype` varchar(100) NOT NULL DEFAULT '-',
  `group` bigint(20) unsigned NOT NULL DEFAULT '1',
  `token` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `username` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `pengguna` (`id`, `username`, `password`, `fname`, `lname`, `nice_name`, `yahoo`, `gmail`, `whatsapp`, `bbm`, `line`, `skype`, `group`, `token`) VALUES
(2,	'angga',	'sha256:1000:PnduXCTCi1YLlp+Tv67FcPKIopjb3pzS:q6m1uY5JjGOZFiRX8gC7aBRvEYH0R4ug',	'',	'',	'Angga Purnama',	'-',	'-',	'-',	'-',	'-',	'-',	3,	''),
(3,	'root',	'sha256:1000:BTmuE1NMvUjY4t/mQLDtad6N9MJ2A/Wq:EGHI2FKGTdsyAsekQRw6D3YBzr0b0MlU',	'',	'',	'',	'-',	'-',	'-',	'-',	'-',	'-',	1,	'');

DROP TABLE IF EXISTS `update`;
CREATE TABLE `update` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `date` datetime NOT NULL,
  `type` varchar(100) NOT NULL,
  `content` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


-- 2015-07-18 09:50:00
