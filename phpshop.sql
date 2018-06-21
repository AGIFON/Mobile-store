-- phpMyAdmin SQL Dump
-- version 4.7.3
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Июн 19 2018 г., 14:19
-- Версия сервера: 5.6.37
-- Версия PHP: 5.5.38

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `phpshop`
--

-- --------------------------------------------------------

--
-- Структура таблицы `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `sort_order` int(11) NOT NULL DEFAULT '0',
  `status` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `category`
--

INSERT INTO `category` (`id`, `name`, `sort_order`, `status`) VALUES
(13, 'Huawei', 1, 1),
(14, 'Apple', 2, 1),
(15, 'Samsung', 3, 1),
(16, 'Xiaomi ', 4, 1),
(17, 'Sony ', 5, 1),
(18, 'LG', 6, 1),
(19, 'Google', 7, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `Customer`
--

CREATE TABLE `Customer` (
  `Id_Customer` int(11) NOT NULL,
  `Products` text NOT NULL,
  `Counts` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `Customer`
--

INSERT INTO `Customer` (`Id_Customer`, `Products`, `Counts`) VALUES
(1, 'asd', 10),
(2, '{\"39\":3}', 10),
(3, '{\"39\":3}', 10),
(4, '{\"45\":1}', 10);

-- --------------------------------------------------------

--
-- Структура таблицы `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `category_id` int(11) NOT NULL,
  `code` int(11) NOT NULL,
  `price` float NOT NULL,
  `availability` int(11) NOT NULL,
  `brand` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `is_new` int(11) NOT NULL DEFAULT '0',
  `is_recommended` int(11) NOT NULL DEFAULT '0',
  `status` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `product`
--

INSERT INTO `product` (`id`, `name`, `category_id`, `code`, `price`, `availability`, `brand`, `description`, `is_new`, `is_recommended`, `status`) VALUES
(34, 'Huawei P20 Lite (ANE-LX1)', 13, 1839707, 600, 1, 'Huawei ', 'Android 8.0, количество SIM-карт: 2, оперативная память 4096 Мб, встроенная память 64 Гб, 3G, LTE, экран IPS, 5.84\'\', (1080x2280), камера 16 Мп, Wi-Fi, NFC, GPS, аккумулятор 3000 мА*ч', 0, 0, 1),
(35, 'Xiaomi Redmi 4X 32Gb ', 16, 2343847, 308, 1, 'Xiaomi ', 'Xiaomi Redmi 4X 32Gb – компактный и удобный смартфон от компании Xiaomi. Данная модель оснащена мощным восьмиядерным процессором Qualcomm Snapdragon 435 обеспечивающим устройству завидное быстродействие. Тонкий металлический корпус с закругленными краями и небольшая диагональ экрана позволит удобно держать аппарат даже в небольшой руке. Благодаря емкой батарее на 4100 мАч, небольшому экрану, энергоэффективному процессору и продвинутым алгоритмам экономии энергии Redmi 4X является одним из лучших телефонов по уровню автономной работы за всю историю Xiaomi, обеспечивая работу устройства в режиме ожидания до 18 дней. Яркий 5-дюймовый экран Redmi 4X с разрешением HD и закаленным стеклом с изогнутыми краями обеспечит передачу полного спектра цветов и оттенков.', 1, 1, 1),
(36, 'Xiaomi Redmi 5 Plus 3/32Gb', 16, 2028027, 370, 1, 'Xiaomi ', 'Android 7.1, количество SIM-карт: 2, оперативная память 3072 Мб, встроенная память 32 Гб, 3G, LTE, экран IPS, 6\'\', (1080x2160), камера 12 Мп, Wi-Fi Direct, GPS, аккумулятор 4000 мА*ч', 0, 1, 1),
(37, 'Huawei P20 Pro', 13, 2019487, 1750, 1, 'Huawei ', 'Android 8.1, количество SIM-карт: 2, оперативная память 6000 Мб, встроенная память 128 Гб, 3G, LTE, экран AMOLED, 6.1\'\', (1080x2240), камера 40 Мп, Wi-Fi, NFC, GPS, аккумулятор 4000 мА*ч', 0, 1, 1),
(38, 'Samsung Galaxy S8 64GB SM-G950FD', 15, 1953212, 1200, 1, 'Samsung ', 'Флагманский смартфон Samsung Galaxy S8 64GB SM-G950FD позволит в полной мере насладиться качеством красочных фотографий, широкоформатных видео и захватывающих игр благодаря уникальному безрамочному дисплею, занимающему почти 84% площади передней панели. 12-ти МП камера смартфона оснащена технологией Dual Pixel и светосильным объективом F1.7, обеспечивающими быструю фокусировку и превосходное качество снимков, независимо в движении, днем или ночью. Надежную защиту всех данных обеспечивают сразу несколько систем: сканер радужной оболочки глаза, система распознавания лиц, а также привычный дактилоскопический сканер. Емкий аккумулятор, а также новейший техпроцесс 10-нм обеспечат быструю и долгую работу при минимальных энергозатратах. Встроенный интеллектуальный помощник Bixby существенно облегчит управление устройством, а функция вызова по Wi-Fi позволит всегда оставаться на связи, даже при отсутствии покрытия мобильной сети.', 0, 0, 1),
(39, 'Apple iPhone 7 32Gb', 14, 1602042, 1300, 1, 'Apple', 'iPhone 7 - это флагманский смартфон компании Apple, вобравший в себя последние разработки в индустрии и все лучшие черты предыдущих поколений. Визуальные отличия в дизайне можно по праву назвать минимальными, наиболее заметным изменение является измененная конструкция разделителей антенны и отсутствие классического 3,5-мм аудиоразъема. Его роль теперь возложена на порт Apple Lightning. Дисплей также не претерпел кардинальных изменений, это по-прежнему качественная IPS-матрица с широким цветовым охватом. Сердцем смартфона теперь является четырехъядерный процессор Apple A10 Fusion, оснащенный мощным графическим ускорителем. Время автономной работы также подверглось улучшению. Теперь, по заявлению производителя, iPhone 7 способен проработать на насколько часов дальше во многих стандартных режимах использования. Фотографические возможности смартфона представлены основной 12-мегапиксельной камерой с апертурой f/1.8 и фронтальной 7-мп камерой для селфи. Конструкция iPhone полностью обновлена и впервые получила защиту от влаги и пыли по стандарту IP67.', 0, 0, 1),
(40, 'Sony Xperia XA1 Plus 32Gb', 17, 2028367, 540, 0, 'Sony ', 'Android 7.0, количество SIM-карт: 2, оперативная память 4096 Мб, встроенная память 32 Гб, 3G, LTE, экран IPS, 5.5\'\', (1080x1920), камера 23 Мп, Wi-Fi, NFC, GPS, аккумулятор 3430 мА*ч', 0, 1, 1),
(41, 'LG G6 H870DS 64Gb ', 18, 1129365, 880, 1, 'LG', 'Android 7.0, количество SIM-карт: 2, оперативная память 4096 Мб, встроенная память 64 Гб, 3G, LTE, экран IPS, 5.7\'\', (1440x2880), камера 13 Мп, Wi-Fi Direct, NFC, DLNA, GPS, аккумулятор 3300 мА*ч', 1, 1, 1),
(42, 'Google Pixel 2 XL 128Gb', 19, 1128670, 1970, 1, 'Google', 'Android 8.0, оперативная память 4096 Мб, встроенная память 128 Гб, 3G, LTE, экран AMOLED, 6\'\', (1440x2880), камера 12.2 Мп, Wi-Fi Direct, NFC, GPS, аккумулятор 3520 мА*ч', 0, 0, 1),
(43, 'Sony Xperia XZ2 Dual 6/64Gb', 17, 683364, 1410, 1, 'Sony ', 'Android 8.0, количество SIM-карт: 2, оперативная память 6000 Мб, встроенная память 64 Гб, 3G, LTE, экран IPS, 5.7\'\', (1080x2160), камера 19 Мп, Wi-Fi, NFC, GPS, аккумулятор 3180 мА*ч', 0, 0, 1),
(44, 'Huawei Mate RS Porsche Design 256Gb', 13, 355025, 2890, 1, 'Huawei ', 'Android 8.1, количество SIM-карт: 2, оперативная память 6000 Мб, встроенная память 256 Гб, 3G, LTE, экран AMOLED, 6\'\', (1440x2880), камера 40 Мп, Wi-Fi Direct, NFC, GPS, аккумулятор 4000 мА*ч', 0, 0, 1),
(45, 'Samsung Galaxy S9+ 256Gb Exynos 9810', 15, 1563832, 1950, 1, 'Samsung ', 'Android 8.0, количество SIM-карт: 2, оперативная память 6000 Мб, встроенная память 256 Гб, 3G, LTE, экран AMOLED, 6.2\'\', (1440x2960), камера 12 Мп, Wi-Fi Direct, NFC, GPS, аккумулятор 3500 мА*ч', 0, 0, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `product_order`
--

CREATE TABLE `product_order` (
  `id` int(11) NOT NULL,
  `user_name` varchar(255) NOT NULL,
  `user_phone` varchar(255) NOT NULL,
  `user_comment` text NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `products` text NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `product_order`
--

INSERT INTO `product_order` (`id`, `user_name`, `user_phone`, `user_comment`, `user_id`, `date`, `products`, `status`) VALUES
(45, 'fsdfsd', '1', '123123123', 4, '2015-05-14 09:54:45', '{\"1\":1,\"2\":1,\"3\":2}', 3),
(46, 'САША1', 'g3424242342', '', 4, '2015-05-18 15:34:42', '{\"44\":3,\"43\":3}', 1),
(47, 'Александр Держицкий', '+375297199665', 'Тригер на заказ и удаление и количества. Если на складе меньше двух телефонов добавить таблицу на заказ.  ', 3, '2018-06-14 10:39:13', '{\"40\":1}', 1),
(48, 'Ploy', '+375289455251', '', 0, '2018-06-14 12:22:46', '{\"40\":3}', 1),
(49, 'ывав', '+375297199665', '', 0, '2018-06-14 12:24:08', '{\"34\":1,\"37\":1,\"44\":1}', 1),
(50, 'Ploy', '+375297199665', '', 0, '2018-06-14 12:29:32', '{\"38\":1}', 1),
(51, 'Ploy', '+375297199665', '', 0, '2018-06-14 12:30:03', '{\"40\":7}', 1),
(52, 'Ploy', '+375297199665', '', 0, '2018-06-14 12:32:19', '{\"40\":1}', 1),
(53, 'Виктория Вячеславовна', '+375297199665', '', 5, '2018-06-14 12:56:58', '{\"40\":5}', 1),
(54, 'Ploy', '+375297199665', '', 0, '2018-06-14 12:58:42', '{\"45\":1}', 1),
(55, 'ывав', '+375297199665', '', 1, '2018-06-14 12:59:02', '{\"45\":1}', 1),
(56, 'ывав', '+375297199665', 'sa', 0, '2018-06-14 13:00:11', '{\"39\":3}', 2),
(57, 'ывав', '+375297199665', '', 0, '2018-06-14 13:00:31', '{\"38\":1,\"45\":1,\"34\":1,\"37\":1,\"44\":2}', 3),
(58, 'Виктория Вячеславовна', '+375297199665', 'asdasdsadasd', 5, '2018-06-19 06:25:39', '{\"45\":1}', 3);

--
-- Триггеры `product_order`
--
DELIMITER $$
CREATE TRIGGER `Customer` BEFORE INSERT ON `product_order` FOR EACH ROW UPDATE product set product.availability = product.availability - 1 WHERE product.id = 40
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `trig` BEFORE UPDATE ON `product_order` FOR EACH ROW INSERT INTO Customer (Products, Counts)
SELECT products, 10 as Counts from product_order WHERE product_order.id = new.id
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Структура таблицы `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `user`
--

INSERT INTO `user` (`id`, `name`, `email`, `password`, `role`) VALUES
(3, 'Александр Держицкий', 'alex@mail.com', '111111', ''),
(4, 'Виктор Сидоров', 'zinchenko.us@gmail.com', '222222', 'admin'),
(5, 'Виктория Вячеславовна', 'vika@mail.com', '111111', 'admin');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `Customer`
--
ALTER TABLE `Customer`
  ADD PRIMARY KEY (`Id_Customer`);

--
-- Индексы таблицы `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_id` (`category_id`);

--
-- Индексы таблицы `product_order`
--
ALTER TABLE `product_order`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Индексы таблицы `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
--
-- AUTO_INCREMENT для таблицы `Customer`
--
ALTER TABLE `Customer`
  MODIFY `Id_Customer` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT для таблицы `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;
--
-- AUTO_INCREMENT для таблицы `product_order`
--
ALTER TABLE `product_order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;
--
-- AUTO_INCREMENT для таблицы `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `category`
--
ALTER TABLE `category`
  ADD CONSTRAINT `category_ibfk_1` FOREIGN KEY (`id`) REFERENCES `product` (`category_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `user`
--
ALTER TABLE `user`
  ADD CONSTRAINT `user_ibfk_1` FOREIGN KEY (`id`) REFERENCES `product_order` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
