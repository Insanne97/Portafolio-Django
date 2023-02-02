-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Versión del servidor:         10.9.1-MariaDB - mariadb.org binary distribution
-- SO del servidor:              Win64
-- HeidiSQL Versión:             11.3.0.6295
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

-- Volcando estructura para tabla portafolio_django.auth_group
CREATE TABLE IF NOT EXISTS `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) COLLATE utf32_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf32 COLLATE=utf32_unicode_ci;

-- Volcando datos para la tabla portafolio_django.auth_group: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;

-- Volcando estructura para tabla portafolio_django.auth_group_permissions
CREATE TABLE IF NOT EXISTS `auth_group_permissions` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf32 COLLATE=utf32_unicode_ci;

-- Volcando datos para la tabla portafolio_django.auth_group_permissions: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;

-- Volcando estructura para tabla portafolio_django.auth_permission
CREATE TABLE IF NOT EXISTS `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf32_unicode_ci NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) COLLATE utf32_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf32 COLLATE=utf32_unicode_ci;

-- Volcando datos para la tabla portafolio_django.auth_permission: ~28 rows (aproximadamente)
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
	(1, 'Can add log entry', 1, 'add_logentry'),
	(2, 'Can change log entry', 1, 'change_logentry'),
	(3, 'Can delete log entry', 1, 'delete_logentry'),
	(4, 'Can view log entry', 1, 'view_logentry'),
	(5, 'Can add permission', 2, 'add_permission'),
	(6, 'Can change permission', 2, 'change_permission'),
	(7, 'Can delete permission', 2, 'delete_permission'),
	(8, 'Can view permission', 2, 'view_permission'),
	(9, 'Can add group', 3, 'add_group'),
	(10, 'Can change group', 3, 'change_group'),
	(11, 'Can delete group', 3, 'delete_group'),
	(12, 'Can view group', 3, 'view_group'),
	(13, 'Can add user', 4, 'add_user'),
	(14, 'Can change user', 4, 'change_user'),
	(15, 'Can delete user', 4, 'delete_user'),
	(16, 'Can view user', 4, 'view_user'),
	(17, 'Can add content type', 5, 'add_contenttype'),
	(18, 'Can change content type', 5, 'change_contenttype'),
	(19, 'Can delete content type', 5, 'delete_contenttype'),
	(20, 'Can view content type', 5, 'view_contenttype'),
	(21, 'Can add session', 6, 'add_session'),
	(22, 'Can change session', 6, 'change_session'),
	(23, 'Can delete session', 6, 'delete_session'),
	(24, 'Can view session', 6, 'view_session'),
	(25, 'Can add proyectos', 7, 'add_proyectos'),
	(26, 'Can change proyectos', 7, 'change_proyectos'),
	(27, 'Can delete proyectos', 7, 'delete_proyectos'),
	(28, 'Can view proyectos', 7, 'view_proyectos'),
	(29, 'Can add publicacion', 8, 'add_publicacion'),
	(30, 'Can change publicacion', 8, 'change_publicacion'),
	(31, 'Can delete publicacion', 8, 'delete_publicacion'),
	(32, 'Can view publicacion', 8, 'view_publicacion');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;

-- Volcando estructura para tabla portafolio_django.auth_user
CREATE TABLE IF NOT EXISTS `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) COLLATE utf32_unicode_ci NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) COLLATE utf32_unicode_ci NOT NULL,
  `first_name` varchar(150) COLLATE utf32_unicode_ci NOT NULL,
  `last_name` varchar(150) COLLATE utf32_unicode_ci NOT NULL,
  `email` varchar(254) COLLATE utf32_unicode_ci NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf32 COLLATE=utf32_unicode_ci;

-- Volcando datos para la tabla portafolio_django.auth_user: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
	(1, 'pbkdf2_sha256$390000$J7mMEDY7FHq0lV2dkwBCPC$Y+kx1JRY083sKP+3EVz27aO44oKhOb5XjHe9Rj/UmqU=', '2023-02-01 13:44:57.613398', 1, 'Andres', '', '', 'andrescarlosama97@gmail.com', 1, 1, '2023-01-02 05:22:25.515700');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;

-- Volcando estructura para tabla portafolio_django.auth_user_groups
CREATE TABLE IF NOT EXISTS `auth_user_groups` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf32 COLLATE=utf32_unicode_ci;

-- Volcando datos para la tabla portafolio_django.auth_user_groups: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;

-- Volcando estructura para tabla portafolio_django.auth_user_user_permissions
CREATE TABLE IF NOT EXISTS `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf32 COLLATE=utf32_unicode_ci;

-- Volcando datos para la tabla portafolio_django.auth_user_user_permissions: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;

-- Volcando estructura para tabla portafolio_django.blog_publicacion
CREATE TABLE IF NOT EXISTS `blog_publicacion` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `titulo` varchar(100) COLLATE utf32_unicode_ci NOT NULL,
  `descripcion` longtext COLLATE utf32_unicode_ci NOT NULL,
  `imagen` varchar(100) COLLATE utf32_unicode_ci NOT NULL,
  `fecha` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf32 COLLATE=utf32_unicode_ci;

-- Volcando datos para la tabla portafolio_django.blog_publicacion: ~7 rows (aproximadamente)
/*!40000 ALTER TABLE `blog_publicacion` DISABLE KEYS */;
INSERT INTO `blog_publicacion` (`id`, `titulo`, `descripcion`, `imagen`, `fecha`) VALUES
	(1, 'Web site Andrus Pizza', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer lacus neque, cursus nec leo a, eleifend tincidunt nibh. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam commodo lacus quis lacus convallis, nec tempus ante efficitur. Integer tempor felis ac tincidunt elementum. Aliquam tincidunt lorem vitae lectus convallis ultricies. Nunc congue facilisis mi, id lacinia quam pharetra eget. Suspendisse maximus viverra bibendum. Proin tincidunt suscipit nisi et lobortis. Sed hendrerit, risus eget consequat malesuada, ligula justo elementum diam, nec eleifend arcu sapien eu ex. Aliquam tincidunt sapien arcu, at sollicitudin ligula sagittis vel. ', 'Blog/imagen/slider11.jpg', '2023-01-02'),
	(2, 'API Task', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam tristique ullamcorper dui. Vivamus sed tincidunt metus. Donec mollis ac lorem vel dignissim. Pellentesque ultricies mattis placerat. Donec imperdiet felis sit amet sollicitudin sagittis. Ut eu pellentesque augue. Nullam id dolor sed leo dignissim tristique at vitae velit. Integer faucibus dictum tempus. Aenean malesuada vestibulum condimentum. Nulla a velit tortor. Maecenas vitae tincidunt magna, vel volutpat quam. Sed euismod tristique purus ut gravida. Curabitur molestie volutpat convallis.\r\n\r\nPraesent et viverra justo, quis porta orci. Maecenas efficitur ligula vel sapien accumsan, ac mattis diam ullamcorper. Mauris vestibulum imperdiet dolor, accumsan hendrerit libero hendrerit vel. Integer dignissim maximus lorem vitae eleifend. Proin volutpat laoreet mauris, aliquet ornare arcu efficitur sit amet. Ut non lectus at sem pretium vulputate. Curabitur sagittis mollis turpis in vehicula. Quisque convallis, sapien ut egestas sagittis, enim libero imperdiet dui, eget auctor enim mauris ac risus.', 'Blog/imagen/Captura_de_pantalla_155.png', '2023-01-03'),
	(3, 'CRUD Universidad de Nariño', 'Aplicación en la cual podrás crear, visualizar, actualizar y eliminar estudiantes mediante una interfaz grafica.', 'Blog/imagen/Captura_de_pantalla_181.png', '2023-01-08'),
	(4, 'Portafolio con Django', 'Portafolio es un proyecto realizado mediante el uso de django', 'Blog/imagen/Captura_de_pantalla_180.png', '2023-01-08'),
	(5, 'El Super Pan', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam nec urna augue. Sed sagittis sodales ipsum, id ornare nunc consequat at. Suspendisse ornare felis lorem, at ultrices purus convallis sit amet. Curabitur risus lacus, gravida rhoncus turpis ac, fringilla laoreet est. Quisque cursus sollicitudin nunc nec malesuada. Ut nec mauris libero. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Phasellus vel est dui. Integer sem dui, facilisis at ex ut, auctor consequat elit. Ut a dui gravida, consequat ligula non, ornare libero. Donec vulputate est sodales orci consequat accumsan. Nullam rutrum arcu tellus, quis gravida tortor sodales in.\r\n\r\nClass aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Vestibulum luctus, libero vitae consectetur fringilla, dui ipsum hendrerit ipsum, sed facilisis orci elit quis felis. Nullam a scelerisque urna. In a scelerisque ligula. Donec accumsan dignissim euismod. Quisque vitae porta augue, vel dignissim nulla. Pellentesque non augue eu arcu volutpat scelerisque.\r\n\r\nUt maximus feugiat massa, et sollicitudin orci vestibulum at. Nam auctor nunc at dolor volutpat, non lobortis est pretium. Ut condimentum accumsan orci venenatis condimentum. Pellentesque eu tincidunt libero. Aenean nunc est, lacinia eu ligula non, rutrum venenatis dui. Morbi arcu velit, feugiat vitae arcu vel, dapibus vestibulum ipsum. Fusce sed tortor urna. Praesent vitae faucibus magna, et venenatis felis. In mattis diam id diam aliquam, a semper nisl hendrerit. Proin lobortis faucibus massa, eget dignissim sem bibendum ut. Sed eu ipsum at dolor rutrum faucibus sit amet a lacus. Duis porta lorem venenatis eros luctus euismod. In in neque nisl.', 'Blog/imagen/Captura_de_pantalla_181_xeSvfvp.png', '2023-01-08'),
	(6, 'El dia de Hoy', 'Lor nfisbdhifvsdjkvbsdkjbvfjksdnvpisvlsnckjvhbasldnfsidvh', 'Blog/imagen/Captura_de_pantalla_182.png', '2023-01-12'),
	(7, 'Otra publicaicon', 'Esta es otra publicaicon de prueba', 'Blog/imagen/Captura_de_pantalla_20.png', '2023-02-01');
/*!40000 ALTER TABLE `blog_publicacion` ENABLE KEYS */;

-- Volcando estructura para tabla portafolio_django.django_admin_log
CREATE TABLE IF NOT EXISTS `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext COLLATE utf32_unicode_ci DEFAULT NULL,
  `object_repr` varchar(200) COLLATE utf32_unicode_ci NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext COLLATE utf32_unicode_ci NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf32 COLLATE=utf32_unicode_ci;

-- Volcando datos para la tabla portafolio_django.django_admin_log: ~15 rows (aproximadamente)
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
	(1, '2023-01-02 05:50:34.318952', '1', 'Proyectos object (1)', 1, '[{"added": {}}]', 7, 1),
	(2, '2023-01-02 05:54:04.062539', '1', 'Proyectos object (1)', 3, '', 7, 1),
	(3, '2023-01-02 05:54:23.762929', '2', 'Proyectos object (2)', 1, '[{"added": {}}]', 7, 1),
	(4, '2023-01-02 05:56:53.214427', '2', 'Proyectos object (2)', 3, '', 7, 1),
	(5, '2023-01-02 05:57:09.302013', '3', 'Proyectos object (3)', 1, '[{"added": {}}]', 7, 1),
	(6, '2023-01-02 18:16:18.308883', '1', 'Publicacion object (1)', 1, '[{"added": {}}]', 8, 1),
	(7, '2023-01-02 18:32:19.499644', '1', 'Publicacion object (1)', 2, '[{"changed": {"fields": ["Descripcion"]}}]', 8, 1),
	(8, '2023-01-04 01:06:09.732262', '2', 'Publicacion object (2)', 1, '[{"added": {}}]', 8, 1),
	(9, '2023-01-05 02:58:25.992337', '4', 'Proyectos object (4)', 1, '[{"added": {}}]', 7, 1),
	(10, '2023-01-05 02:58:56.792306', '4', 'Proyectos object (4)', 2, '[{"changed": {"fields": ["Imagen"]}}]', 7, 1),
	(11, '2023-01-05 02:59:54.590850', '5', 'Proyectos object (5)', 1, '[{"added": {}}]', 7, 1),
	(12, '2023-01-05 03:00:52.150394', '6', 'Proyectos object (6)', 1, '[{"added": {}}]', 7, 1),
	(13, '2023-01-08 13:55:04.655963', '3', 'Publicacion object (3)', 1, '[{"added": {}}]', 8, 1),
	(14, '2023-01-08 13:56:41.298641', '4', 'Publicacion object (4)', 1, '[{"added": {}}]', 8, 1),
	(15, '2023-01-08 15:50:33.061304', '5', 'Publicacion object (5)', 1, '[{"added": {}}]', 8, 1),
	(16, '2023-01-11 02:41:59.758609', '5', 'Publicacion: El Super Pan', 2, '[{"changed": {"fields": ["Imagen"]}}]', 8, 1),
	(17, '2023-01-12 15:53:02.480807', '5', 'Publicacion: El Super Pan', 2, '[{"changed": {"fields": ["Imagen"]}}]', 8, 1),
	(18, '2023-01-12 15:53:38.626422', '6', 'Publicacion: El dia de Hoy', 1, '[{"added": {}}]', 8, 1),
	(19, '2023-02-01 13:45:39.100943', '7', 'Publicacion: Otra publicaicon', 1, '[{"added": {}}]', 8, 1);
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;

-- Volcando estructura para tabla portafolio_django.django_content_type
CREATE TABLE IF NOT EXISTS `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) COLLATE utf32_unicode_ci NOT NULL,
  `model` varchar(100) COLLATE utf32_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf32 COLLATE=utf32_unicode_ci;

-- Volcando datos para la tabla portafolio_django.django_content_type: ~7 rows (aproximadamente)
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
	(1, 'admin', 'logentry'),
	(3, 'auth', 'group'),
	(2, 'auth', 'permission'),
	(4, 'auth', 'user'),
	(8, 'Blog', 'publicacion'),
	(5, 'contenttypes', 'contenttype'),
	(7, 'Portafolio', 'proyectos'),
	(6, 'sessions', 'session');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;

-- Volcando estructura para tabla portafolio_django.django_migrations
CREATE TABLE IF NOT EXISTS `django_migrations` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) COLLATE utf32_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf32_unicode_ci NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf32 COLLATE=utf32_unicode_ci;

-- Volcando datos para la tabla portafolio_django.django_migrations: ~19 rows (aproximadamente)
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
	(1, 'Portafolio', '0001_initial', '2023-01-02 05:19:35.685458'),
	(2, 'contenttypes', '0001_initial', '2023-01-02 05:19:35.720464'),
	(3, 'auth', '0001_initial', '2023-01-02 05:19:35.934511'),
	(4, 'admin', '0001_initial', '2023-01-02 05:19:35.983522'),
	(5, 'admin', '0002_logentry_remove_auto_add', '2023-01-02 05:19:35.992524'),
	(6, 'admin', '0003_logentry_add_action_flag_choices', '2023-01-02 05:19:35.999526'),
	(7, 'contenttypes', '0002_remove_content_type_name', '2023-01-02 05:19:36.042537'),
	(8, 'auth', '0002_alter_permission_name_max_length', '2023-01-02 05:19:36.072543'),
	(9, 'auth', '0003_alter_user_email_max_length', '2023-01-02 05:19:36.090547'),
	(10, 'auth', '0004_alter_user_username_opts', '2023-01-02 05:19:36.098549'),
	(11, 'auth', '0005_alter_user_last_login_null', '2023-01-02 05:19:36.122553'),
	(12, 'auth', '0006_require_contenttypes_0002', '2023-01-02 05:19:36.125555'),
	(13, 'auth', '0007_alter_validators_add_error_messages', '2023-01-02 05:19:36.134555'),
	(14, 'auth', '0008_alter_user_username_max_length', '2023-01-02 05:19:36.149559'),
	(15, 'auth', '0009_alter_user_last_name_max_length', '2023-01-02 05:19:36.165564'),
	(16, 'auth', '0010_alter_group_name_max_length', '2023-01-02 05:19:36.181566'),
	(17, 'auth', '0011_update_proxy_permissions', '2023-01-02 05:19:36.190569'),
	(18, 'auth', '0012_alter_user_first_name_max_length', '2023-01-02 05:19:36.205573'),
	(19, 'sessions', '0001_initial', '2023-01-02 05:19:36.225577'),
	(20, 'Blog', '0001_initial', '2023-01-02 18:03:44.728207');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;

-- Volcando estructura para tabla portafolio_django.django_session
CREATE TABLE IF NOT EXISTS `django_session` (
  `session_key` varchar(40) COLLATE utf32_unicode_ci NOT NULL,
  `session_data` longtext COLLATE utf32_unicode_ci NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf32 COLLATE=utf32_unicode_ci;

-- Volcando datos para la tabla portafolio_django.django_session: ~3 rows (aproximadamente)
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
	('1cv5h880s33989dncrlemna52hk3bhh3', '.eJxVjMEOgjAQRP-lZ9MA222pR-98Q7PbLRY1JaFwMv67kHDQ0yTz3sxbBdrWHLaaljCJuqpWXX47pvhM5QDyoHKfdZzLukysD0WftOphlvS6ne7fQaaa9zVbBhiRTIOIFDla79B30jtKgECjiIHOGmbZw0VqJTFJb4DFcOPV5wvwRTiE:1pCDI2:bpdsd6nA0ifxJgV5tgVMBr16OMmGekidbmIm3fVBH8I', '2023-01-16 05:23:14.141537'),
	('aa9u2qnl1hin7j05xqpfkkukspfnxlb7', '.eJxVjMEOgjAQRP-lZ9MA222pR-98Q7PbLRY1JaFwMv67kHDQ0yTz3sxbBdrWHLaaljCJuqpWXX47pvhM5QDyoHKfdZzLukysD0WftOphlvS6ne7fQaaa9zVbBhiRTIOIFDla79B30jtKgECjiIHOGmbZw0VqJTFJb4DFcOPV5wvwRTiE:1pCsC5:k8IEbP5FwFCsd6NhXOkN4kEnlfugvXR5b9sxWT_F4ak', '2023-01-18 01:03:49.291452'),
	('h3aojpaasx4g8uuf8guaksqzaibc1iah', '.eJxVjMEOgjAQRP-lZ9MA222pR-98Q7PbLRY1JaFwMv67kHDQ0yTz3sxbBdrWHLaaljCJuqpWXX47pvhM5QDyoHKfdZzLukysD0WftOphlvS6ne7fQaaa9zVbBhiRTIOIFDla79B30jtKgECjiIHOGmbZw0VqJTFJb4DFcOPV5wvwRTiE:1pNDQ1:LT4JY17i1sCu5Rl8a6lpcnvGTqmxNfKJ4Rk1jhcEFPg', '2023-02-15 13:44:57.616399');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;

-- Volcando estructura para tabla portafolio_django.portafolio_proyectos
CREATE TABLE IF NOT EXISTS `portafolio_proyectos` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `titulo` varchar(100) COLLATE utf32_unicode_ci NOT NULL,
  `descripcion` varchar(250) COLLATE utf32_unicode_ci NOT NULL,
  `imagen` varchar(100) COLLATE utf32_unicode_ci NOT NULL,
  `enlace` varchar(200) COLLATE utf32_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf32 COLLATE=utf32_unicode_ci;

-- Volcando datos para la tabla portafolio_django.portafolio_proyectos: ~3 rows (aproximadamente)
/*!40000 ALTER TABLE `portafolio_proyectos` DISABLE KEYS */;
INSERT INTO `portafolio_proyectos` (`id`, `titulo`, `descripcion`, `imagen`, `enlace`) VALUES
	(3, 'API Tasks', 'Api para la gestion de tareas a realizar', 'Portafolio/imagen/Captura_de_pantalla_181.png', 'https://github.com/AndresCarlosama-Dev'),
	(4, 'Web site Andrus Pizza', '¡Página web creada para la pizzería Andrus!', 'Portafolio/imagen/Captura_de_pantalla_182.png', 'https://github.com/AndresCarlosama-Dev'),
	(5, 'CRUD Universidad de Nariño', 'Aplicación en la cual podrás crear, visualizar, actualizar y eliminar estudiantes mediante una interfaz grafica', 'Portafolio/imagen/Captura_de_pantalla_180.png', 'https://github.com/AndresCarlosama-Dev'),
	(6, 'Portafolio con Django', 'Portafolio es un proyecto realizado mediante el uso de django', 'Portafolio/imagen/Captura_de_pantalla_165.png', 'https://github.com/AndresCarlosama-Dev');
/*!40000 ALTER TABLE `portafolio_proyectos` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
