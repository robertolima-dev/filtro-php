-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Tempo de geração: 20/05/2019 às 15:07
-- Versão do servidor: 10.1.36-MariaDB
-- Versão do PHP: 7.2.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `paginacao`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `tb_alunos`
--

CREATE TABLE `tb_alunos` (
  `id_aluno` int(11) DEFAULT NULL,
  `nome` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `idade` int(11) DEFAULT NULL,
  `interesse` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `estado` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Fazendo dump de dados para tabela `tb_alunos`
--

INSERT INTO `tb_alunos` (`id_aluno`, `nome`, `idade`, `interesse`, `email`, `estado`) VALUES
(1, 'Jorden', 47, 'Esporte', 'vel.mauris.Integer@nec.net', 'DF'),
(2, 'Lacey', 59, 'Jogos', 'ligula.eu.enim@egetlaoreetposuere.com', 'SC'),
(3, 'Lillith', 48, 'Saude', 'Curabitur@atvelitCras.org', 'MA'),
(4, 'Zephania', 63, 'Saude', 'erat.vitae@loremtristiquealiquet.net', 'RS'),
(5, 'Scarlett', 95, 'Informatica', 'facilisis.Suspendisse.commodo@placeratCrasdictum.org', 'MS'),
(6, 'Nash', 39, 'Musica', 'Aliquam@Maurisquisturpis.org', 'BA'),
(7, 'Indigo', 62, 'Informatica', 'mus.Proin@laoreet.co.uk', 'GO'),
(8, 'Bernard', 77, 'Esporte', 'ut@Craspellentesque.net', 'PA'),
(9, 'Cheyenne', 78, 'Musica', 'vel.pede@liberoduinec.co.uk', 'PR'),
(10, 'Nerea', 88, 'Musica', 'non@facilisisvitae.edu', 'PB'),
(11, 'Lucius', 57, 'Esporte', 'eu.erat@interdum.ca', 'PE'),
(12, 'Fallon', 38, 'Saude', 'risus@Etiamimperdietdictum.net', 'MT'),
(13, 'Steven', 35, 'Musica', 'tellus@netus.org', 'CE'),
(14, 'Paul', 37, 'Musica', 'sollicitudin.adipiscing@magnaCras.edu', 'GO'),
(15, 'Bradley', 31, 'Musica', 'massa.Vestibulum@vitaesemperegestas.com', 'AP'),
(16, 'Jeanette', 46, 'Informatica', 'vitae@accumsannequeet.co.uk', 'MG'),
(17, 'Craig', 40, 'Informatica', 'magna.et.ipsum@tellusid.edu', 'MS'),
(18, 'Maia', 94, 'Esporte', 'ac@tempusnon.co.uk', 'PB'),
(19, 'Harriet', 16, 'Jogos', 'ante.ipsum@maurissitamet.com', 'AL'),
(20, 'Finn', 99, 'Informatica', 'metus.vitae@vitaerisusDuis.com', 'MT'),
(21, 'Rafael', 71, 'Esporte', 'adipiscing.elit.Etiam@vel.edu', 'MG'),
(22, 'Cynthia', 85, 'Esporte', 'Donec.nibh.Quisque@Sed.org', 'RN'),
(23, 'Evelyn', 13, 'Informatica', 'lacus.Aliquam.rutrum@etrutrumeu.edu', 'MA'),
(24, 'Sybil', 39, 'Saude', 'semper@nuncsed.com', 'ES'),
(25, 'Uriel', 10, 'Esporte', 'semper.pretium.neque@eumetusIn.ca', 'PB'),
(26, 'Dakota', 99, 'Esporte', 'ipsum@etrutrumnon.co.uk', 'PB'),
(27, 'Stewart', 31, 'Saude', 'natoque.penatibus.et@inhendrerit.org', 'CE'),
(28, 'Cruz', 96, 'Saude', 'Cum.sociis.natoque@elementumloremut.org', 'RS'),
(29, 'Kadeem', 57, 'Informatica', 'consectetuer@faucibusleoin.net', 'MS'),
(30, 'Wyatt', 36, 'Musica', 'feugiat.non@dolorsitamet.net', 'SC'),
(31, 'Griffith', 28, 'Jogos', 'Lorem@elementumsem.com', 'RO'),
(32, 'Yvette', 39, 'Saude', 'mauris@dignissim.com', 'RO'),
(33, 'Burton', 14, 'Esporte', 'leo.elementum.sem@arcuVestibulumante.edu', 'SC'),
(34, 'Tatum', 4, 'Saude', 'eget.lacus@nequeInornare.com', 'PA'),
(35, 'Graham', 88, 'Informatica', 'ac@necurna.com', 'ES'),
(36, 'Aretha', 37, 'Esporte', 'malesuada.augue@Nunc.com', 'ES'),
(37, 'Sloane', 5, 'Saude', 'parturient@purusMaecenaslibero.net', 'CE'),
(38, 'Uriel', 81, 'Saude', 'Praesent.interdum@enimnon.net', 'AL'),
(39, 'Cameran', 61, 'Esporte', 'sem.consequat@senectus.com', 'PR'),
(40, 'Chiquita', 8, 'Jogos', 'nisl.Quisque@utodio.co.uk', 'MA'),
(41, 'Tanek', 40, 'Esporte', 'nonummy@lectusNullamsuscipit.org', 'AL'),
(42, 'Bruno', 3, 'Jogos', 'semper.Nam@atpretium.ca', 'DF'),
(43, 'Winter', 14, 'Jogos', 'Quisque.nonummy@dolorNulla.ca', 'RS'),
(44, 'Jacob', 82, 'Musica', 'nec.eleifend.non@sapien.ca', 'RR'),
(45, 'Kuame', 98, 'Esporte', 'placerat@ametorci.ca', 'PR'),
(46, 'Orli', 74, 'Saude', 'eu.erat.semper@dolorsitamet.co.uk', 'ES'),
(47, 'Amber', 24, 'Informatica', 'eleifend.non@quamvelsapien.org', 'AL'),
(48, 'Roary', 77, 'Saude', 'quis.pede.Suspendisse@Duisa.com', 'SE'),
(49, 'Octavius', 28, 'Jogos', 'euismod.in.dolor@posuere.edu', 'PA'),
(50, 'Isabella', 54, 'Informatica', 'eu@euarcuMorbi.ca', 'RR'),
(51, 'Driscoll', 70, 'Informatica', 'sem@malesuada.com', 'SP'),
(52, 'Brendan', 45, 'Informatica', 'arcu.et.pede@magna.com', 'SC'),
(53, 'Quon', 18, 'Informatica', 'elit@adipiscingnon.org', 'AP'),
(54, 'Rajah', 48, 'Informatica', 'magna.tellus@Quisquefringilla.org', 'RJ'),
(55, 'Lewis', 32, 'Informatica', 'faucibus@vulputate.com', 'PA'),
(56, 'Ronan', 34, 'Esporte', 'tellus.non@eleifend.com', 'CE'),
(57, 'Baxter', 72, 'Esporte', 'enim.sit@urnanec.ca', 'DF'),
(58, 'Kyla', 6, 'Esporte', 'facilisis.eget@sociosquadlitora.net', 'AM'),
(59, 'Ava', 54, 'Jogos', 'velit@acmattis.edu', 'RN'),
(60, 'Leonard', 59, 'Musica', 'fermentum.arcu@consequatenim.ca', 'MS'),
(61, 'Byron', 17, 'Musica', 'Pellentesque.habitant.morbi@sapienNunc.edu', 'MT'),
(62, 'Roary', 52, 'Jogos', 'nec.eleifend.non@velvenenatis.org', 'GO'),
(63, 'Amery', 89, 'Informatica', 'mauris.aliquam.eu@Proindolor.net', 'PA'),
(64, 'Adele', 40, 'Saude', 'scelerisque@velvenenatisvel.com', 'RR'),
(65, 'Ronan', 14, 'Saude', 'posuere.cubilia@Donecnonjusto.co.uk', 'RJ'),
(66, 'Marny', 53, 'Saude', 'convallis.in.cursus@blanditatnisi.com', 'PA'),
(67, 'Camden', 31, 'Musica', 'magna@mauriseu.edu', 'RJ'),
(68, 'Yoko', 13, 'Musica', 'dolor@vehiculaet.com', 'AM'),
(69, 'Ina', 71, 'Informatica', 'gravida.sagittis@tempusscelerisquelorem.com', 'AL'),
(70, 'Tyler', 3, 'Esporte', 'Proin.dolor.Nulla@nascetur.org', 'PI'),
(71, 'Destiny', 19, 'Saude', 'augue.id@elementum.edu', 'MG'),
(72, 'Glenna', 82, 'Jogos', 'dui@interdumligula.ca', 'AP'),
(73, 'Buffy', 55, 'Esporte', 'dictum.eu@placeratvelitQuisque.net', 'MA'),
(74, 'Hashim', 27, 'Musica', 'est.congue@enim.org', 'MA'),
(75, 'Hiram', 67, 'Saude', 'nunc.sit.amet@nibhPhasellus.co.uk', 'RN'),
(76, 'Kenneth', 50, 'Esporte', 'a.nunc.In@Integermollis.edu', 'AL'),
(77, 'Ariel', 9, 'Jogos', 'Etiam.vestibulum.massa@egestas.edu', 'PA'),
(78, 'Barrett', 24, 'Informatica', 'fringilla.mi@liberoIntegerin.com', 'PA'),
(79, 'Kato', 25, 'Musica', 'cursus.in.hendrerit@eu.org', 'BA'),
(80, 'Lance', 50, 'Saude', 'Nullam@necurna.net', 'CE'),
(81, 'Porter', 50, 'Jogos', 'ultrices.mauris@nequesed.org', 'PA'),
(82, 'Zeus', 26, 'Informatica', 'hymenaeos@Integereu.net', 'RR'),
(83, 'Oleg', 36, 'Informatica', 'Nam@morbitristiquesenectus.ca', 'AL'),
(84, 'Erin', 25, 'Saude', 'ligula@Nullam.edu', 'TO'),
(85, 'Wade', 61, 'Esporte', 'odio.Aliquam.vulputate@egestas.edu', 'MS'),
(86, 'Ross', 92, 'Musica', 'tortor.at.risus@ac.edu', 'DF'),
(87, 'Martina', 24, 'Musica', 'Cras@lacusAliquam.com', 'MS'),
(88, 'Rowan', 75, 'Saude', 'erat@afelisullamcorper.com', 'RO'),
(89, 'Aristotle', 22, 'Esporte', 'at.auctor@Utnecurna.net', 'PI'),
(90, 'Bernard', 24, 'Saude', 'placerat.orci.lacus@vitaesemperegestas.edu', 'RJ'),
(91, 'Teegan', 9, 'Musica', 'id@Fuscealiquam.co.uk', 'DF'),
(92, 'Graiden', 7, 'Jogos', 'ante.dictum@nibhAliquam.co.uk', 'AL'),
(93, 'Alec', 50, 'Musica', 'vestibulum.neque.sed@nislQuisque.co.uk', 'PE'),
(94, 'Savannah', 61, 'Jogos', 'odio.a.purus@nequeSedeget.co.uk', 'ES'),
(95, 'Rafael', 45, 'Informatica', 'a@dolorsit.net', 'PB'),
(96, 'Clementine', 32, 'Saude', 'dictum@Aliquamerat.edu', 'RS'),
(97, 'Tasha', 53, 'Esporte', 'in@justoProin.co.uk', 'AC'),
(98, 'Hector', 83, 'Musica', 'Class.aptent@et.co.uk', 'AM'),
(99, 'Tara', 95, 'Jogos', 'Donec.porttitor.tellus@nonfeugiat.co.uk', 'DF'),
(100, 'Charissa', 50, 'Informatica', 'orci@elementumduiquis.ca', 'AP');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
