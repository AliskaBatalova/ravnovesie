-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Май 26 2024 г., 12:18
-- Версия сервера: 10.8.4-MariaDB
-- Версия PHP: 8.1.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `ravnovesie`
--

-- --------------------------------------------------------

--
-- Структура таблицы `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `name` varchar(35) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `category`
--

INSERT INTO `category` (`id`, `name`, `image`) VALUES
(1, 'Булочки', '3.jpg'),
(2, 'Хлеб', '6.jpg'),
(3, 'Пироги', '4.jpg');

-- --------------------------------------------------------

--
-- Структура таблицы `comment`
--

CREATE TABLE `comment` (
  `id` int(11) NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `post_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `comment`
--

INSERT INTO `comment` (`id`, `description`, `post_id`, `user_id`, `created_at`, `updated_at`, `created_by`, `updated_by`) VALUES
(47, 'Тренировка очень понравилась!', 1, 17, 1716020924, 1716020924, 17, 17),
(49, 'Всё было отлично', 2, 18, 1716139599, 1716139599, 18, 18),
(50, 'Были на пробном занятие , а после  купили абонемент,  прекрасный центр, много зон занятий, очень понравился тренер, ребёнок 3,5 года в восторге!', 1, 21, 1716142218, 1716142218, 21, 21),
(51, 'Прийдя на первую тренировку, несмотря на периодические протесты ребёнка заниматься, были в полном восторге -- чистота, разнообразие снарядов для упражнений, приветливость персонала.', 2, 21, 1716142268, 1716142268, 21, 21),
(52, 'Прийдя на первую тренировку, несмотря на периодические протесты ребёнка заниматься, были в полном восторге -- чистота, разнообразие снарядов для упражнений, приветливость персонала.', 3, 21, 1716142323, 1716142323, 21, 21),
(53, 'Хороший центр! Рады что рядом с домом !!! Сходили на пробное занятие ребенок счастлив, купили абонемент !!Очень добросовестно относится к своему делу, ребенок просто счастлив заниматься !! Спасибо центру за хороших работников !! Приятный администратор все объяснила, рассказала !', 4, 21, 1716142349, 1716142349, 21, 21),
(54, 'Самый удобный фитнес-клуб в центре: +Большая парковка. +Время работы с 7 до 24. +Просторный тренажерный зал. И все это за сравнительно небольшие деньги.', 1, 23, 1716142628, 1716142628, 23, 23),
(55, 'Комфортный, чистый и светлый клуб. Приветливый персонал, удобная парковка. Приятно заниматься, очень много места, люди не мешают друг другу.', 2, 23, 1716142671, 1716142671, 23, 23),
(56, 'Зал очень хороший, большой и просторный, с отличной кардио зоной! Тренерский состав подобран хорошо, все тренера опытные и грамотные. Очень нравится сам персонал, улыбчивые и хорошие люди', 3, 23, 1716142691, 1716142691, 23, 23),
(57, 'Нам бы хотелось бы поделиться впечатлением об этом клубе! Уютная атмосфера, затянула в Норму даже абсолютно не спортивных ранее людей. Грамотные и вежливые администраторы и тренера! Мы с подругой начали пробовать себя на всех тренировках! Спустя 3 месяца, каждый раз возвращаемся сюда с огромной мотивацией и не думаем останавливаться! ', 4, 23, 1716142724, 1716142724, 23, 23),
(58, 'Добрый день! Я помешанный на чистоте и очень брезгливый человек, но красивое тело иметь очень хочется. Для меня очень важна чистота где бы то ни было. Взял сначала гостевой абонемент, чтобы понять на сколько здесь за этим следят. Меня о очень порадовало, когда узнал, что убираются постоянно. Я сам всегда вижу, как в каком-нибудь из помещений обязательно кто-то моет пол или протирает оборудование. И самое главное, что здесь проводят полную дезинфекцию сауны, куда тоже люблю заглядывать, и тренажёров в залах, так что я очень рад, что такой фитнес оказался еще и в двух шагах от дома.', 1, 24, 1716142822, 1716142822, 24, 24),
(59, 'Здравствуйте. Хотела бы оставить отзыв. Занимаюсь уже четыре месяца. Тренера просто супер. Занимаюсь по три раза в неделю. Тренерам можно задать любой вопрос по упражнениям. Хожу на занятия как на праздник. Мне очень нравится тут заниматься, результаты я вижу, худеем дальше.', 2, 24, 1716142841, 1716142841, 24, 24),
(60, 'Пришла в этот зал относительно недавно.Есть с чем сравнить,поэтому сразу о плюсах:просторный зал,много тренажеров,для любителей поработать с свободными весами,так же все обустроено. Отличная кардиозона:разнообразна и функциональна.Предусмотрена отдельная площадка для растяжки,что приятно для тех,кто после тяжелой тренировки хочет растянуться.Так же отдельное,огромное спасибо тренеру её позитив и улыбчивость подкупают.Да и в целом работа персонала,как отлаженный механизм часиков:вовремя и на уровне.Спасибо за приятное время,проведенное в вашем зале.', 3, 24, 1716142918, 1716142918, 24, 24),
(61, 'Мне очень нравится этот зал! Ходим вдвоем с мужем. Для меня, как для девушки, очень важна атмосфера и состояние тренажеров,а там с этим все хорошо. Тренеры очень дружелюбные и естественные( нет ни капли навязчивости, тебе всегда помогут и подскажут). Девочки администраторы приветливые и милые. Это первый зал, в который я хожу с удовольствием и чувствую себя очень комфортно. К тому же они не стоят на месте и привносят что-то новенькое. А от мужа напишу коротко: большой зал, нет очередей на тренажеры и в наличии есть все для полноценных тренеровок.', 4, 24, 1716142944, 1716142944, 24, 24),
(66, 'круто', 1, 17, 1716489357, 1716489357, 17, 17);

-- --------------------------------------------------------

--
-- Структура таблицы `galery`
--

CREATE TABLE `galery` (
  `id` int(11) NOT NULL,
  `image` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL,
  `napravlenia_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `galery`
--

INSERT INTO `galery` (`id`, `image`, `napravlenia_id`) VALUES
(1, 'ariale.jpg', 1),
(2, 'arial.jpg', 1),
(3, 'aria.jpg', 1),
(4, 'iogazan.jpg', 2),
(5, 'iogaza.jpg', 2),
(6, 'iogaz.jpg', 2),
(7, 'gens.jpg', 3),
(8, 'gen.jpg', 3),
(10, 'pil.jpg', 4),
(12, 'pilo.jpg', 4),
(15, 'tt.png', 4);

-- --------------------------------------------------------

--
-- Структура таблицы `napravlenia`
--

CREATE TABLE `napravlenia` (
  `id` int(11) NOT NULL,
  `name` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `napravlenia`
--

INSERT INTO `napravlenia` (`id`, `name`, `image`, `body`) VALUES
(1, 'Воздушные полотна', 'polotna.jpg', 'Грациозное направление циркового искусства, в котором силовая акробатика органично сочетается с хореографией и состоянием свободного полета.'),
(2, 'Йога', 'ioga.jpg', 'Религиозно-философское учение Индии, разработавшее систему и методы самопознания человека, управление собственной психикой.'),
(3, 'Женская хореография', 'hor.jpg', 'Направление для тех девушек, которые мечтают стать воплощением женственности и чувственности, хотят научиться пластичности и гибкости.'),
(4, 'Pole Dance', 'pole.jpg', 'Танец, выполняемый на металлическом шесте (пилоне). Он объединяет в себе элементы акробатики, хореографии и спортивной гимнастики. ');

-- --------------------------------------------------------

--
-- Структура таблицы `post`
--

CREATE TABLE `post` (
  `id` int(11) NOT NULL,
  `title` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL,
  `napravlenia_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `post`
--

INSERT INTO `post` (`id`, `title`, `body`, `image`, `napravlenia_id`) VALUES
(1, 'Баталова Алиса', 'Тренер по акробатике, воздушной гимнастике, растяжке. Занятия подойдут не только для акробатов, но и для танцоров, гимнасток, фигуристов, борцов. Также мои занятия подойдут не только для профессионалов, но и для любителей.\r\nПомимо акробатики и воздушной гимнастики, доступна отработка прыжков и вращений, а также, постановка воздушных и акробатических номеров.', 'polotna.jpg', 1),
(2, 'Ольга Капанадзе', 'Альтернативный взгляд на жизнь и практику, предполагающие качественное долголетие.\r\nОдно из основных направлений - йогатерапия в индивидуальной работе, также составление индивидуальной программы для практики с целью улучшения физического и психоэмоционального состояний.', 'ioga.jpg', 2),
(3, 'Вероника Дружкова', 'Преподаю хореографию детям, спортсменам и врослым с нуля. Обучаю свадебному этикету. Постановка свадебного танца, свадебный этикет.\r\nПреподаю barre -фитнес, боди- балет, стрип- пластику, растанцовка с 0.\r\nСоздаю танцевальные постановки. Командный танец. Тим- билдинг.\r\nТанцевальная подготовка к Балу, проведение мастер- класса- Бал эпохи модерн.', 'hor.jpg', 3),
(4, 'Ольга Капанадзе', 'Постановка танца любой сложности, индивидуальные уроки стрип-пластики, pole-dance. Постановка свадебного танца. Постановка шоу-программ, написание сценариев. Занятия с детьми по хореографии и растяжке. Корпоративные мероприятия. Танцевальные тренинги. Имею профессиональный опыт работы с 1998 года.', 'pole.jpg', 4);

-- --------------------------------------------------------

--
-- Структура таблицы `price`
--

CREATE TABLE `price` (
  `id` int(11) NOT NULL,
  `cena` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `napravlenia_id` int(11) NOT NULL,
  `opisanie` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `naprav` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `price`
--

INSERT INTO `price` (`id`, `cena`, `napravlenia_id`, `opisanie`, `naprav`) VALUES
(18, '✓ 1200руб/дети - 1100(абонемент на 4 занятия)\r\n\r\n✓ 2200руб/дети - 2000(абонемент на 8 занятий)\r\n\r\n✓ 3000руб/дети - 2800(абонемент на 12 занятий)\r\n\r\n✓ Разовое занятие в группе - 350руб/дети -300руб', 1, 'На тренировках по воздушной гимнастике развиваются четыре из пяти основных физических качеств — сила, выносливость, гибкость.', 'Воздушные полотна/Pole Dance'),
(19, '✓ 2000руб/дети - 1100(абонемент на 4 занятия)\r\n\r\n✓ 2500руб/дети - 2000(абонемент на 8 занятий)\r\n\r\n✓ 4000руб/дети - 2800(абонемент на 12 занятий)\r\n\r\n✓ Разовое занятие в группе - 850руб дети - 700руб', 4, 'Индивидуальные программы мотивируют клиентов быть более ответственными, учитывают их индивидуальные цели и потребности.', 'Индивидуальные занятия'),
(20, '✓ 2500руб/дети - 1500(абонемент на 4 занятия)\r\n\r\n✓ 2500руб/дети - 2000(абонемент на 8 занятий)\r\n\r\n✓ 3500руб/дети - 3000(абонемент на 12 занятий)\r\n\r\n✓ Разовое занятие в группе - 350руб дети - 300руб', 3, 'Избавление от хронический болей в позвоночнике, укрепление мышечного корсета и увеличение подвижности.', 'Женская хореография/Йога');

-- --------------------------------------------------------

--
-- Структура таблицы `sobitia`
--

CREATE TABLE `sobitia` (
  `id` int(11) NOT NULL,
  `image` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `surname` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `napravlenia` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mesto` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `sobitia`
--

INSERT INTO `sobitia` (`id`, `image`, `name`, `surname`, `napravlenia`, `mesto`) VALUES
(1, 'masha.jpg', 'Мария', 'Климова', 'Воздушные полотна', '1 место'),
(2, 'liza.jpg', 'Елизавета', 'Егорова', 'Воздушные полотна', '4 место'),
(3, 'siv.jpg', 'Анастасия', 'Сивун', 'Pole Dance', '2');

-- --------------------------------------------------------

--
-- Структура таблицы `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `authKey` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `accessToken` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `role` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `user`
--

INSERT INTO `user` (`id`, `username`, `password`, `email`, `authKey`, `accessToken`, `created_at`, `updated_at`, `role`) VALUES
(17, 'alisa', '$2y$13$2USH6jWtZbpCr9s.eeZ/lOxNGDuB3LaUt3KBD44HKiqsPdJ9nxdJm', 'assdff@fghj.ghj', 'e-G8Zp__vpR9akExYjSYaqVB3yqXp5LX', 'kwPkAOHiyVc1HBvh-IpR9zkj604YI6XY', 1715597447, 1715597447, 0),
(18, 'admin', '$2y$13$S9F7t6NuCn346LueuRKF7OXBGVOpCixXTPFkW./fx0hg1ozp50.Ii', 'admin@mail.ru', 'bM4wxgrxuuME5ES2KLg5-2rBoRaimaVL', '0MV312m-s7T_driH2_m13WDFzpSo31OY', 1715799673, 1715799673, 1),
(19, 'kristina', '$2y$13$aWAmUJfBsEROMF1e/vkJK.Fd6a9aShOF93q4XhImgI0733fMYWsVO', 'sdfgh@hj.fg', 'ikDkzDVrQxhAFWE9AFOSg5NIJP3txhd7', 'LEMjAysZbYiBNPPSyucpZUcKVz2XK8I4', 1715801992, 1715801992, 0),
(20, 'Юлия', '$2y$13$2turtBPXD0j.nQub7ST5k.I/sulXUUq/hwsgCvtZn4bFdnHyfQbTi', 'asdf@mail.ru', '2WsrrOWNB6nGRGyrJ7FAVnHk2rajC1ht', 'jdaXW0nVCcqMSoC32cfiNxjbpC4MV8xk', 1715879010, 1715879010, 0),
(21, 'Анастасия', '$2y$13$Qu4GM8w6tuuoa5MfGnhfVOrkZb0BH6RMXno2uTZUutBgc7WqxlbC2', 'admin@mail.ru', '9Je4JdF8V__Fe5H_Vo9TA0AZY1TryOLa', 'dxAcVDGbruOa8iOAewBlHSYs91IFKqQu', 1715879076, 1715879076, 0),
(22, 'Анастасия', '$2y$13$.9.DiXX9iKlaYpBZTQ6lUuqgRGqRRiCQIamd0.Bt1wWQ6dvQYUwgu', 'zxcv@gh.dfg', '3jGU_Y-N95e8rwHN40gL1SPGwDtHAFrY', 'RIRZlpm018vL4NKmyIDiOBTrYe9vSYbT', 1716142116, 1716142116, 0),
(23, 'Александра', '$2y$13$.GuKq1DJrB3kLLWEodIoP.NmhKmIB06e.bj.O.MmM0mzGYL6u6KEK', 'sdfgh@hj.fg', 'OrPivuL-gkfewlPPikNdLBzYwAaD8a9k', 'Yy6KabuEfl4yjb20Y1cN_S5zm-9-5iOL', 1716142443, 1716142443, 0),
(24, 'София', '$2y$13$SXuBaayircFrMC./Kvs33uHRK2wOHmpm5H3hjwUTS4tjGmosc22Oi', 'sdfgh@hj.fg', 'iBTgHwUnBC2Vx2O9jfTDwKlg4T_xLjti', 'C0DxVgMvMLbbNf61tUWbvm_qbvp3qlqP', 1716142771, 1716142771, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `zapis`
--

CREATE TABLE `zapis` (
  `id` int(11) NOT NULL,
  `name` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `surname` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `patronymic` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `number` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `napravlenia_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `zapis`
--

INSERT INTO `zapis` (`id`, `name`, `surname`, `patronymic`, `number`, `napravlenia_id`, `user_id`, `created_at`, `updated_at`, `created_by`, `updated_by`) VALUES
(19, 'Алиса', 'Баталова', 'Романовна', '+7 (965) 838-49-68', 2, 17, 1716473706, 1716473706, 17, 17),
(21, 'Алиса', 'Баталова', 'Романовна', '+7 (965) 838-49-68', 4, 17, 1716473938, 1716473938, 17, 17),
(24, 'Кристина', 'Федулова', 'Павловна', '+7 (965) 838-49-68', 2, 18, 1716651637, 1716651637, 18, 18),
(25, 'Кристина', 'Федулова', 'Павловна', '89658384968', 3, 18, 1716655406, 1716655406, 18, 18);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Индексы таблицы `galery`
--
ALTER TABLE `galery`
  ADD PRIMARY KEY (`id`),
  ADD KEY `napravlenia_id` (`napravlenia_id`);

--
-- Индексы таблицы `napravlenia`
--
ALTER TABLE `napravlenia`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `post`
--
ALTER TABLE `post`
  ADD PRIMARY KEY (`id`),
  ADD KEY `napravlenia_id` (`napravlenia_id`);

--
-- Индексы таблицы `price`
--
ALTER TABLE `price`
  ADD PRIMARY KEY (`id`),
  ADD KEY `napravlenia_id` (`napravlenia_id`);

--
-- Индексы таблицы `sobitia`
--
ALTER TABLE `sobitia`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`);

--
-- Индексы таблицы `zapis`
--
ALTER TABLE `zapis`
  ADD PRIMARY KEY (`id`),
  ADD KEY `napravlenia_id` (`napravlenia_id`),
  ADD KEY `user_id` (`user_id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `comment`
--
ALTER TABLE `comment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

--
-- AUTO_INCREMENT для таблицы `galery`
--
ALTER TABLE `galery`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT для таблицы `napravlenia`
--
ALTER TABLE `napravlenia`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT для таблицы `post`
--
ALTER TABLE `post`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT для таблицы `price`
--
ALTER TABLE `price`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT для таблицы `sobitia`
--
ALTER TABLE `sobitia`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT для таблицы `zapis`
--
ALTER TABLE `zapis`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `comment`
--
ALTER TABLE `comment`
  ADD CONSTRAINT `comment_ibfk_1` FOREIGN KEY (`post_id`) REFERENCES `post` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `comment_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE;

--
-- Ограничения внешнего ключа таблицы `galery`
--
ALTER TABLE `galery`
  ADD CONSTRAINT `galery_ibfk_1` FOREIGN KEY (`napravlenia_id`) REFERENCES `napravlenia` (`id`) ON DELETE CASCADE;

--
-- Ограничения внешнего ключа таблицы `post`
--
ALTER TABLE `post`
  ADD CONSTRAINT `post_ibfk_1` FOREIGN KEY (`napravlenia_id`) REFERENCES `napravlenia` (`id`) ON DELETE CASCADE;

--
-- Ограничения внешнего ключа таблицы `price`
--
ALTER TABLE `price`
  ADD CONSTRAINT `price_ibfk_1` FOREIGN KEY (`napravlenia_id`) REFERENCES `napravlenia` (`id`) ON DELETE CASCADE;

--
-- Ограничения внешнего ключа таблицы `zapis`
--
ALTER TABLE `zapis`
  ADD CONSTRAINT `zapis_ibfk_1` FOREIGN KEY (`napravlenia_id`) REFERENCES `napravlenia` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `zapis_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
