-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 17-10-2024 a las 23:35:35
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `blog`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `blog_post`
--

CREATE TABLE `blog_post` (
  `id` bigint(20) NOT NULL,
  `title` varchar(250) NOT NULL,
  `slug` varchar(250) NOT NULL,
  `body` longtext NOT NULL,
  `publish` datetime(6) NOT NULL,
  `created` datetime(6) NOT NULL,
  `updated` datetime(6) NOT NULL,
  `status` varchar(2) NOT NULL,
  `author_id` int(11) NOT NULL,
  `image` varchar(100) DEFAULT NULL,
  `video` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `blog_post`
--

INSERT INTO `blog_post` (`id`, `title`, `slug`, `body`, `publish`, `created`, `updated`, `status`, `author_id`, `image`, `video`) VALUES
(1, 'Reforestando En Familia', 'reforestando-en-familia', 'Hoy ha sido un día lleno de significado. Dos pequeños, acompañados por su padre, se unieron para sembrar esperanza en la tierra. Juntos, plantaron varios árboles que no solo embellecerán el entorno, sino que también cuidarán del planeta para las generaciones venideras.', '2024-10-17 08:06:18.000000', '2024-10-17 08:09:14.216180', '2024-10-17 08:09:14.216180', 'PB', 1, 'images/main_image.png', ''),
(2, 'Unidos por un Entorno Limpio: ¡Manos a la Obra!', 'unidos-por-un-entorno-limpio-manos-a-la-obra', 'Hoy, un grupo de voluntarios se reunió en nuestra querida ciudad para hacer la diferencia. Armados con guantes y bolsas de basura, salimos a las calles con un objetivo: recoger desechos y devolver la belleza a nuestro entorno.\r\n\r\nCada botella, cada envoltura y cada trozo de papel que recogimos fue un paso hacia una ciudad más limpia y saludable. ✨ Es impresionante ver cómo pequeñas acciones pueden tener un gran impacto.', '2024-10-17 08:18:08.000000', '2024-10-17 08:18:35.815941', '2024-10-17 08:19:04.398781', 'PB', 1, 'images/depositphotos_68974283-stock-photo-environmental-activists-picking-up-trash.jpg', ''),
(3, 'Caminando Hacia un Futuro Sostenible', 'caminando-hacia-un-futuro-sostenible', 'Hoy, nuestra familia decidió disfrutar de un día al aire libre caminando por el vecindario. Cada paso que damos no solo es saludable para nosotros, sino que también ayuda a cuidar nuestro planeta.', '2024-10-17 08:19:41.000000', '2024-10-17 08:20:42.023853', '2024-10-17 08:20:42.023853', 'PB', 1, 'images/Los-beneficios-de-caminar-al-aire-libre.jpg', ''),
(4, 'Pedaleando Hacia un Futuro Sostenible', 'pedaleando-hacia-un-futuro-sostenible', 'Cada vez que elegimos la bicicleta en lugar del coche, estamos reduciendo la contaminación del aire y el tráfico. Es una pequeña acción que puede generar un gran cambio. Además, recorrer la ciudad en dos ruedas nos permite disfrutar de nuestra comunidad de una manera más cercana y personal.', '2024-10-17 08:20:44.000000', '2024-10-17 08:21:51.160005', '2024-10-17 08:21:51.160005', 'PB', 1, 'images/Moverse-en-bicicleta-4-1536x1024.jpg', ''),
(5, 'Un Futuro Verde: Juntos por la Reforestación', 'un-futuro-verde-juntos-por-la-reforestacion', '¿Por qué reforestar? La reforestación ayuda a combatir el cambio climático, protege la biodiversidad y mejora la calidad del aire. Cada árbol cuenta y cada esfuerzo suma.', '2024-10-17 10:34:37.000000', '2024-10-17 10:36:11.276561', '2024-10-17 10:36:11.276561', 'PB', 1, '', 'videos/ssstik.io_muni_xela_1729015744099.mp4');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `blog_post`
--
ALTER TABLE `blog_post`
  ADD PRIMARY KEY (`id`),
  ADD KEY `blog_post_publish_bb7600_idx` (`publish`),
  ADD KEY `blog_post_author_id_dd7a8485_fk_auth_user_id` (`author_id`),
  ADD KEY `blog_post_slug_b95473f2` (`slug`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `blog_post`
--
ALTER TABLE `blog_post`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `blog_post`
--
ALTER TABLE `blog_post`
  ADD CONSTRAINT `blog_post_author_id_dd7a8485_fk_auth_user_id` FOREIGN KEY (`author_id`) REFERENCES `auth_user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
