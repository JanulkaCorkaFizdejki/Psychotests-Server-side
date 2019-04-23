-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Czas generowania: 23 Kwi 2019, 07:01
-- Wersja serwera: 5.7.25
-- Wersja PHP: 5.5.38

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `mercuriu_projectpum`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `answerslist`
--

CREATE TABLE `answerslist` (
  `id` int(11) NOT NULL,
  `id_question_name_list` int(11) NOT NULL,
  `answere` text CHARACTER SET utf8 COLLATE utf8_polish_ci NOT NULL,
  `correct_answere` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin2;

--
-- Zrzut danych tabeli `answerslist`
--

INSERT INTO `answerslist` (`id`, `id_question_name_list`, `answere`, `correct_answere`) VALUES
(1, 1, '21', 0),
(2, 1, '18', 1),
(3, 1, '30', 0),
(4, 2, '152', 0),
(5, 2, '154', 0),
(6, 2, '156', 1),
(7, 3, '30', 0),
(8, 3, '29', 1),
(9, 3, '28', 0),
(10, 4, 'Kirgistan', 0),
(11, 4, 'Malezja', 0),
(12, 4, 'Japonia', 1),
(13, 5, '40 kilometrów ', 1),
(14, 5, '80 kilometrów', 0),
(15, 5, 'Żadna z powyższych odpowiedzi', 0),
(16, 6, 'Niezdecydowaniu', 0),
(17, 6, 'Pogardzie', 0),
(18, 6, 'Podejrzliwości', 1),
(19, 7, 'Prawdziwe', 0),
(20, 7, 'Fałszywe', 0),
(21, 7, 'Niepewne', 1),
(22, 8, '3,5', 1),
(23, 8, '2,5', 0),
(24, 8, '4,5', 0),
(25, 9, 'Więcej niż 6', 0),
(26, 9, 'Mniej niż 6', 0),
(27, 9, 'Żadna z powyższych odpowiedzi', 1),
(28, 10, '10 groszy', 1),
(29, 10, '0,2 zł', 0),
(30, 10, '1 zł', 0),
(31, 11, 'Tosty', 0),
(32, 11, 'Kanapki', 0),
(33, 11, 'Chleb', 1),
(34, 12, '100', 0),
(35, 12, '50', 1),
(36, 12, 'Żadna z powyższych odpowiedzi', 0),
(37, 13, 'Kilogram', 1),
(38, 13, '0,6 kg', 0),
(39, 13, '600 gram', 0),
(40, 14, 'ĄĆ', 1),
(41, 14, 'ĄD', 0),
(42, 14, 'ĄE', 0),
(43, 15, '47', 1),
(44, 15, '48', 0),
(45, 15, '24', 1),
(46, 16, '1', 0),
(47, 16, '2', 1),
(48, 16, 'Żadna z powyższych odpowiedzi', 0),
(49, 17, 'Przedostatnie', 0),
(50, 17, 'Ostatnie', 0),
(51, 17, 'Żadna z powyższych odpowiedźi', 1),
(52, 18, 'Nunu', 0),
(53, 18, 'Nyny', 0),
(54, 18, 'Żadna z powyższych odpowiedźi', 1),
(55, 19, '4100', 1),
(56, 19, '5000', 0),
(57, 19, '4000', 0),
(58, 20, 'Romb', 1),
(59, 20, 'Walec', 0),
(60, 20, 'Prostopadłościan', 0),
(61, 21, '120 zł', 0),
(62, 21, '96 zł', 1),
(63, 21, '100 zł', 0),
(64, 22, '-', 0),
(65, 22, '/', 0),
(66, 22, ',', 1),
(67, 23, 'B3', 0),
(68, 23, 'D3', 1),
(69, 23, 'D4', 0),
(70, 24, '16', 0),
(71, 24, '6', 0),
(72, 24, '12', 1),
(73, 25, '6', 0),
(74, 25, '12', 0),
(75, 25, '18', 1),
(76, 26, 'Kierowca jest kobietą', 1),
(77, 26, 'Kierowca jest mężczyzną', 0),
(78, 26, 'Kierowcy nie  ma', 0),
(79, 27, 'Średnica', 0),
(80, 27, 'Cięciwa', 1),
(81, 27, 'Promień', 0),
(82, 28, 'Wykręcić', 1),
(83, 28, 'Odkręcić', 0),
(84, 28, 'Wkręcić', 0),
(85, 29, 'Mysz do sera', 0),
(86, 29, 'Krowa do  mleka', 1),
(87, 29, 'Jajecznica do żółtka', 0),
(88, 30, 'Debetu', 0),
(89, 30, 'Numeru konta', 1),
(90, 30, 'Pieniędzy', 0),
(91, 31, '1', 1),
(92, 31, '10', 0),
(93, 31, '9', 0),
(94, 32, '6', 1),
(95, 32, '8', 0),
(96, 32, '2!', 0),
(97, 33, 'Koło', 0),
(98, 33, 'Kierownica', 1),
(99, 33, 'Linka', 0),
(100, 34, '6', 0),
(101, 34, '5', 1),
(102, 34, '4', 0),
(103, 35, 'Biały, czerwony, niebieski', 0),
(104, 35, 'Czerwony, żółty, zielony', 0),
(105, 35, 'Źółty, niebieski, czerwony', 1),
(106, 36, 'Tak samo często u kobiet', 0),
(107, 36, 'Częściej u kobiet', 0),
(108, 36, 'Częściej u mężczyzn', 1),
(109, 37, 'Zielonego', 0),
(110, 37, 'Niebieskiego', 1),
(111, 37, 'Żółtego', 0),
(112, 38, 'Czarnym', 1),
(113, 38, 'Białym', 0),
(114, 38, 'Niebieskim', 0),
(115, 39, 'Czerwony', 1),
(116, 39, 'Niebieski', 0),
(117, 39, 'Fioletowy', 0),
(118, 40, '8', 1),
(119, 40, '7', 0),
(120, 40, '6', 0),
(121, 41, '4', 0),
(122, 41, '5', 0),
(123, 41, '3', 1),
(124, 42, '1 kg piórek', 0),
(125, 42, '1 kg pomarańczy', 0),
(126, 42, 'Inna odpowiedź', 1),
(127, 43, '12', 1),
(128, 43, '0', 0),
(129, 43, 'W roku przestępnym nie ma wcale', 0),
(130, 44, 'strażak – ogień', 1),
(131, 44, 'pediatra – dziecko', 0),
(132, 44, 'konduktor –pociąg', 0),
(133, 45, 'Tomek', 1),
(134, 45, 'Adam', 0),
(135, 45, 'Jarek', 0),
(136, 46, '8', 1),
(137, 46, '9', 0),
(138, 46, '10', 0),
(139, 47, 'Prosiaczek nie zje miodu Kubusia', 1),
(140, 47, 'Jest taki miód, którego nie zje zarówno Kubuś i Prosiaczek', 0),
(141, 47, 'Żadna z powyższych', 0),
(142, 48, 'Trójkątne i żółte', 1),
(143, 48, 'Okrągłe i czerwone', 0),
(144, 48, 'Trójkątne i czerwone', 0),
(145, 49, '6000K', 0),
(146, 49, '4500K', 0),
(147, 49, '3000K', 1),
(148, 50, '6 minut', 1),
(149, 50, '8 minut', 0),
(150, 50, '10 minut', 0),
(151, 51, 'Zielony', 0),
(152, 51, 'Niebieski', 0),
(153, 51, 'Biały', 1),
(154, 52, 'Zakaz wjazdu pojazdów samochodowych', 0),
(155, 52, 'Ograniczenie prędkości do 20 km/h', 1),
(156, 52, 'Ograniczenie prędkości do 30 km/h', 0),
(157, 53, 'Pomarańczowy', 0),
(158, 53, 'Zielony', 1),
(159, 53, 'Błękitny', 0),
(160, 54, 'Brązowy', 0),
(161, 54, 'Fioletowy', 1),
(162, 54, 'Bordowy', 0),
(163, 55, 'Różowy', 0),
(164, 55, 'Pomarańczowy', 1),
(165, 55, 'Brązowy', 0),
(166, 56, 'Białe', 1),
(167, 56, 'Czarne', 0),
(168, 56, 'Amarantowe', 0),
(169, 57, 'Wszystkie', 1),
(170, 57, 'Dwa z wymienionych', 0),
(171, 57, '1 z  wymienionych', 0);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `listoftestanswers`
--

CREATE TABLE `listoftestanswers` (
  `id` int(11) NOT NULL,
  `id_user` varchar(100) CHARACTER SET utf8 COLLATE utf8_polish_ci NOT NULL,
  `id_tests` int(11) DEFAULT NULL,
  `points` int(11) DEFAULT NULL,
  `datetime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin2;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `QuestionsNameTest`
--

CREATE TABLE `QuestionsNameTest` (
  `id` int(11) NOT NULL,
  `questionname` text CHARACTER SET utf8 COLLATE utf8_polish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin2;

--
-- Zrzut danych tabeli `QuestionsNameTest`
--

INSERT INTO `QuestionsNameTest` (`id`, `questionname`) VALUES
(1, 'Jaka będzie kolejna liczba w ciągu 3, 6, 9, 12, 15?'),
(2, 'Ile to jest 2 × 78?'),
(3, 'Ile dni ma luty w roku przestępnym?'),
(4, 'Flaga którego państwa składa się z czerwonego koła na białym tle?'),
(5, 'Ciężarówka jedzie z prędkością 80 kilometrów na godzinę. Jaką odległość przejedzie w ciągu 30 minut? '),
(6, 'O czym świadczy zdanie: „Jest coś w jej zachowaniu, co powoduje, że wietrzę podstęp”?'),
(7, 'Jeżeli dwa pierwsze z podanych poniżej zdań są prawdziwe, to trzecie jest (?)\r\n\"Ludzie odnoszący sukces ciężko pracują. Paweł ciężko pracuje. Paweł odnosi sukces.\"'),
(8, 'Taboret ma cztery nogi o długości 40,5 cm, 40 cm, 41 cm i 42 cm. Jaka jest najmniejsza łączna liczba\r\ncentymetrów koniecznych do odcięcia z długości wszystkich nóg taboretu, aby utrzymał on poziom?'),
(9, 'Jaka jest maksymalna liczba pól, które mogą powstać przez przecięcie koła trzema prostymi liniami?'),
(10, 'Ołówek i pióro razem kosztują 1,10 zł. Pióro jest o 1 zł droższe od ołówka. Ile kosztuje ołówek?'),
(11, 'Co wkładasz do tostera?'),
(12, 'U dwóch rąk jest 10 palców. Ile palców jest u dziesięciu rąk? '),
(13, 'Kot ma 60 cm długości. Ile waży kilogram kota? '),
(14, 'Jaka para liter pasuje do tych: ŹĄ, ŻB, AC...\r\n'),
(15, 'Na stawie rozrasta się kępa lilii wodnych. Codziennie kępa staje się dwukrotnie większa. Jeśli zarośnięcie całego stawu zajmie liliom 48 dni, to ile dni potrzeba, żeby zarosły połowę stawu?'),
(16, 'Bierzesz udział w wyścigu. Wyprzedzasz osobę biegnącą jako druga. Którą pozycję zajmujesz?'),
(17, 'Jeśli prześcigniesz ostatnią osobę, które miejsce zajmiesz ...?'),
(18, 'Ojciec Mary ma pięć córek: 1. Nana, 2. Nene, 3. Nini, 4. Nono. Jak na imię\r\nma piąta córka?'),
(19, 'Weź 1000 i dodaj do tej liczby 40. Teraz dodaj kolejny 1000. Dodaj 30. Teraz\r\ndodaj kolejne 1000. Następnie dodaj 20. Dodaj 1000. I jeszcze 10. Jaki jest\r\nwynik?'),
(20, 'Która figura nie pasuje do pozostałych?'),
(21, 'Cena produktu o wartości  100 zł  zmalała o 20%  a następnie ponownie jego cena wzrosła o 20%. Ile wynosi ostateczny koszt:'),
(22, 'Jaki znak trzeba wstawić między cyframi 3 i 4, żeby wyszła liczba większa niż 3 i mniejsza niż 4?'),
(23, 'Proszę uzupełnić ciąg znaków  A9  B7  C5 ...?'),
(24, 'Ile krawędzi ma sześcian?'),
(25, 'Gdy dodamy do liczby 6,6 otrzymamy 12. Co się stanie gdy do otrzymanej liczby dodamy 6? '),
(26, 'Kierowca ma brata. Ale brat kierowcy nie ma brata. Jak to możliwe?'),
(27, 'Wybierz odpowiednie słowo: KWADRAT: PRZEKĄTNA = KOŁO : ...?'),
(28, 'Wybierz odpowiednie słowo: BIAŁY : CZARNY = PRZYKRĘCIĆ : ...?'),
(29, 'Kura do jajka ma się tak jak:'),
(30, 'Konto bankowe nie może istnieć bez:'),
(31, 'Ile razy można odjąć 10 od 100?'),
(32, '2 + 2 x 2 to?'),
(33, 'Budowa którego wyrazu nie pasuje do pozostałych?'),
(34, 'Basia potrzebuje 13 butelek ze sklepu. Jednorazowo jest w stanie unieść tylko 3. Ile razy minimum będzie musiała pójść do sklepu?'),
(35, 'Kolory podstawowe to:'),
(36, 'Wrodzone zaburzenie rozpoznawania barw zwane daltonizmem występuje... '),
(37, 'Kobaltowy, ultramaryna i indygo to nazwy odcieni koloru: '),
(38, 'Na klasycznej kostce Rubika nie ma kwadratów w kolorze:'),
(39, 'Najbardziej zewnętrzny kolor tęczy to?'),
(40, 'Ile cyfr 6 napotkasz wypisując liczby od 1 do 66?'),
(41, '1 tuzin to 12 sztuk, ile tuzinów stanowi 36 sztuk?'),
(42, 'Co jest cięższe: 1 kg pomarańczy czy 1 kg piórek?'),
(43, 'Przeciętna ilość dni w miesiącu to 30 dni, ile miesięcy ma minimum 28 dni?'),
(44, 'Wskaż podobną analogię: psychiatra - schizofrenia:'),
(45, 'Adam jest 2 dni starszy od Tomka. Ten 3 dni młodszy od Jarka. Marek jest 1 dzień starszy od Tomka. Kto jest najstarszy? '),
(46, 'Robert pracował 5 dni. Maciek pracował 15 dni, czyli więcej niż Kasia i Robert razem. Grzesiek pracował 8 dni, czyli mniej niż Kasia. Ile dni pracowała Kasia? '),
(47, 'Jeżeli Kubuś Puchatek zje każdy miód, a Prosiaczek nie je w ogóle miodu, to prawdą jest, że: '),
(48, 'Znaki ostrzegawcze są :'),
(49, 'Która żarówka LED ma najbardziej ciepłe światło?'),
(50, 'Chcesz ugotować jajko na miękko, ile gotujesz?'),
(51, 'Tablica informacyjna o obszarze zabudowanym ma kolor:'),
(52, 'Znak strefa zamieszkania informuje:'),
(53, 'Łącząc kolor żółty i niebieski powstaje kolor:'),
(54, 'Łącząc kolor czerwony i niebieski powstaje kolor:'),
(55, 'Łącząc kolor żółty i czerwony powstaje:'),
(56, 'Interferencja wiązki lasera koloru niebieskiego, zielonego i czerwonego daje światło:'),
(57, 'Węgiel kamienny, grafit, diament - ile  z wymienionych minerałów zawiera węgiel:');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `id_user` varchar(100) CHARACTER SET utf8 COLLATE utf8_polish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin2;

--
-- Zrzut danych tabeli `user`
--

INSERT INTO `user` (`id`, `id_user`) VALUES
(34, 'B7C71EC5-6644-494B-91B4-2506BB455C70'),
(35, 'F3C7C773-28FB-4726-87EE-2518E39BCDAE'),
(36, '17CDA5C2-0A5A-4756-8725-A89151730172'),
(37, 'E2E730B2-6923-4481-8D87-3561FD09349D'),
(38, 'CADBB8E3-0B38-49FE-8F38-1CF03160013A'),
(39, 'EC2D8B62-C11B-4309-89FF-C9E26091883B'),
(40, '39FD451D-8F19-4E90-98AC-905E3B5DBA3D'),
(41, '37FABE22-D66B-4EAE-BF92-CDD52A826F7F'),
(42, '82C4257F-0DA3-4D26-B512-39B319D31318'),
(43, 'A53179FC-1B30-47B7-81A4-EF06F896E644'),
(44, '286A3FED-B7DE-4336-82C3-57B7D45E4FE3'),
(45, '31E8D187-30D8-498A-9784-B5A92F87CDA4'),
(46, '69DBDD44-9A21-4AD3-87A9-8DBE3FEC117D'),
(47, '7C3EA14C-2231-4A8F-8E6C-EB17584EEF61'),
(48, '056F8084-1ED6-4A68-A0D4-D70508D089A2'),
(49, '71DAF5D2-7443-4DE8-AC90-EB20F36843B4'),
(50, '264AE7AD-1ED9-4BC9-AE9B-5C81188F5234'),
(51, '149EE4A5-B3AA-416A-AEA3-25A714CC6975'),
(52, '544A0953-DA69-4F45-9F86-D47F1015D570'),
(53, 'A67B7400-9158-45AE-A4C0-45AD0CA3F746'),
(54, '6F0B88A7-9CAD-4680-9F6D-E3C321E6E2E1'),
(55, 'AC3588F5-3CF2-4C63-BB71-DB6850041565'),
(56, '6311C97E-63AC-4847-ABC0-154721B692D9'),
(57, '26D71775-395D-41BE-87BA-6AC0D1B33DE3');

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `answerslist`
--
ALTER TABLE `answerslist`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `listoftestanswers`
--
ALTER TABLE `listoftestanswers`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `QuestionsNameTest`
--
ALTER TABLE `QuestionsNameTest`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT dla tabeli `answerslist`
--
ALTER TABLE `answerslist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=172;

--
-- AUTO_INCREMENT dla tabeli `listoftestanswers`
--
ALTER TABLE `listoftestanswers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=791;

--
-- AUTO_INCREMENT dla tabeli `QuestionsNameTest`
--
ALTER TABLE `QuestionsNameTest`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT dla tabeli `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
