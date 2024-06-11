
CREATE TABLE `itemek` (
  `id` int(11) NOT NULL,
  `nev` varchar(255) NOT NULL,
  `leiras` varchar(255) NOT NULL,
  `faj` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

INSERT INTO `itemek` (`id`, `nev`, `leiras`, `faj`) VALUES
(1, 'Rozi', 'rozi röfög nagyon aranyos teknős színe van a hugom hozta haza velencéről pedig én nagyon nem akartam nnnnnnnnnnnn nnnnnnnnnnnnnnnn nnnnnnn nnnnnnnn nnnnnnnnnnnnnnnnnn nnnnnnn nnnnnnnnnnnnnn nnnnnnnnnnnnnnnnnnnnnn nnnnnnn nnnnn nnnnn nnnnn nnnn nnniga', 'cica'),
(2, 'dönci', 'az án macskám volt míg a nagyim el nem lopta tőllem és dagi átlagos cirmos cica szine van és nagyon cuki szegénynek a gerincével baj van de még a nagyim nem vitte dokihoz mert gonosz', 'cica'),
(3, 'macska', 'nagy atutia', 'cica'),
(4, 'stella', 'német juhász vagyok cuki kutya peti a gazdi aki  dagadt mint én és szeretem a kutya kaját és anyávaé meg apával sétálgatni \"amúgy petinek az ágyába szartam\"', 'kutya'),
(5, 'Gyulus', 'cukipofa zabálni való falatka yorki szeretem simizem kakiját szedem', 'kutya');

ALTER TABLE `itemek`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `itemek`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;