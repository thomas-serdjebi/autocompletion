-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : jeu. 28 avr. 2022 à 14:13
-- Version du serveur :  5.7.31
-- Version de PHP : 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `autocompletion`
--

-- --------------------------------------------------------

--
-- Structure de la table `spiders`
--

DROP TABLE IF EXISTS `spiders`;
CREATE TABLE IF NOT EXISTS `spiders` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nom_commun` varchar(255) NOT NULL,
  `nom_latin` varchar(255) NOT NULL,
  `region` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `mortelle` tinyint(1) NOT NULL,
  `image` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `spiders`
--

INSERT INTO `spiders` (`id`, `nom_commun`, `nom_latin`, `region`, `description`, `mortelle`, `image`) VALUES
(1, 'Araignée-banane', 'Phoneutria nigriventer', 'Brésil', 'Aussi appelée araignée-banane à cause du fait qu\'elle vit majoritairement dans les régimes de bananes, cette espèce vivant au Brésil est connue comme étant l\'une des plus dangereuses au monde ! Leur morsure, pouvant abattre une personne de 80 kilos, est plutôt violente et provoque des vertiges, des problèmes cardiaques et de longues et douloureuses érections chez les hommes.', 1, 'https://i.ibb.co/DRJFx6K/araignee-banane.jpg'),
(2, 'Araignée toile-entonnoir', 'Atrax formidabilis', 'Australie', 'Connue aussi sous le nom d\'araignée à toile-entonnoir, elle est crainte en Australie pour son venin hyper puissant, et on comprend la raison de cette peur quand on regarde la liste des symptômes. Du fait de la taille des mandibules, la morsure est dès le début très douloureuse et dès les premières minutes peuvent apparaître chair de poule, suée, augmentation de la tension et convulsions involontaires. Par la suite si aucun venin n\'est administré les vomissements, la gêne respiratoire et un œdème pulmonaire peuvent se déclencher et le dernier stade comporte des symptômes comme pupilles dilatées, inconscience et augmentation de l’hypertension du crâne !', 0, 'https://i.ibb.co/gFVZhBm/toile-entonnoir.jpg'),
(3, 'Tarentule asiatique', 'Haplopelma Schmidti', 'Sud de la Chine, Vietnam', 'Cette espèce de tarentule évoluant dans le sud de la Chine et au Vietnam est réputée dans cette région pour son extrême agressivité et la dangerosité de son venin, pouvant provoquer des lésions nerveuses ( qui empêchent de bouger ) et parfois entraîner la mort si aucun venin n\'est délivré.', 1, 'https://i.ibb.co/Fb4YD1z/haplopelma-schimdti.jpg'),
(4, 'Araignée tigre', 'Poecilotheria', 'Sri Lanka', 'Cette espèce de mygale faisant à peu près la taille d\'un visage humain évolue dans les forêts et les bâtiments désaffectées (aussi à cause de la déforestation ) est connue depuis peu, mais est plutôt venimeuse et carrément rapide : sa morsure bien qu\'elle ne soit pas mortelle provoque engourdissements, fièvres et nausées pouvant aller jusqu\'à la perte de conscience. C\'est là où l\'hospitalisation est nécessaire pour pouvoir s\'en tirer.', 0, 'https://i.ibb.co/CsC7p4W/poecilotheria.jpg'),
(5, 'Veuve noire d\'Europe', 'Latrodectus tredecimguttatus', 'Sud de la France, Corse', 'Cette petite araignée vivant dans le sud de la France et en Corse est une des rares araignées en France à être réellement dangereuse, et malgré sa taille de quelques millimètres, sa morsure elle peut être monumentale. La morsure est en plus généralement indolore, ce qui renforce la prudence à appliquer par rapport à cette espèce : après quelques minutes de violentes douleurs s\'étendent dans tout le corps et les muscles provoquant spasmes et convulsions, puis pendant les jours suivant la blessure le venin neurotoxique laissera place à une sensation d’anxiété et d\'angoisse, suivies de cauchemars à répétition et pouvant entraîner des troubles psychiques !', 1, 'https://i.ibb.co/0jhGVKs/veuve-noire.jpg'),
(6, 'Veuve noire d\'Amérique', 'Latrodectus mactans', 'Amérique du Nord', 'Cette cousine américaine de la veuve noire d\'Europe a un venin qui est quinze fois plus toxique que celui des serpents à sonnette ! Bien qu\'elle n\'injecte pas tout son venin à chaque morsure mais juste une partie, les symptômes sont quand même des transpirations, sueurs froides, spasmes musculaires, des hallucinations ou parfois même des œdèmes locaux !', 0, 'https://i.ibb.co/JRV4hPD/veuve-noire-amerique.jpg'),
(7, 'Araignée \"géante\" d\'inde', 'Mygalomorphae', 'Inde', 'Ça pourrait être digne d\'un scénario de film d\'horreur : en 2012 dans le nord de la péninsule indienne un village qui célébrait une fête Hindoue s\'est retrouvé envahi par une espèce inconnue d\'araignée, qui s\'est aussi attaqué aux hommes provoquant deux morts et plusieurs blessés. Depuis l\'araignée ( pas si géante tout de même avec une taille de 4 cm ) s\'est installée et s\'est plu en Inde, rassurant pour les locaux non ?', 1, 'https://i.ibb.co/0ZZ8tr2/geante-inde.jpg'),
(8, 'Mygale Goliath', 'Theraphosa blondi', 'Forêts tropicales', 'Appelée également araignée Goliath à cause de sa taille, elle est l\'une voire la plus grande espèce de mygale au monde avec une trentaine de centimètres et le poids d\'un chiot ! Son venin neurotoxique est assez faible pour les humains, mais pour cette mygale la douleur de la morsure viendra de la taille de ses crochets de 2 cm ! Son autre moyen de défense consiste à envoyer une nuée de poils urticants microscopiques qui peuvent être très douloureux, logés dans l’œil par exemple, ils peuvent y rester pendant des jours !', 0, 'https://i.ibb.co/bFsTvbK/leblond.jpg'),
(9, 'Araignée des grottes', 'Heterodopa maxima', 'Asie, Australie', 'Cette araignée cavernicole ( que l\'on trouve dans les grottes ) se dispute le titre de plus grande araignée du monde avec l\'araignée Goliath, l\'Heteropoda peut atteindre 30  cm d\'envergure ! Assez rare cette espèce peu dangereuse pour l\'homme ne fut aperçue que quelques fois dans les grottes du Laos, où elle se nourrit essentiellement de criquets.', 0, 'https://i.ibb.co/zsbyLMH/heterodopa-maxima.jpg'),
(10, 'Araignée des sables à six yeux', 'Sicarius hahni', 'Déserts africains', 'Surnommée araignée des sables à six yeux, cette araignée vit dans les paysages désertiques et sablonneux de l\'Afrique. Son venin très puissant ne connaît pas de remède pour le moment et provoque une rupture des vaisseaux sanguins et une destruction des tissus !', 1, 'https://i.ibb.co/KXwfYLP/sable-six-yeux.jpg'),
(11, 'Araignée souris', 'Missulena', 'Australie', 'Aussi appelée araignée souris de par le régime de ces araignées, cette espèce d\'Australie au venin toxique ne fut recensée que très peu de fois dans des cas d\'envenimation car la plupart de ses morsures sont sèches, c\'est-à-dire qu\'elle n\'injecte pas de venin.\r\n\r\n', 0, 'https://i.ibb.co/6g9ZGnM/araign-e-souris.jpg'),
(12, 'Recluse brune', 'Loxosceles reclusa ', 'Amérique du Nord', 'Cette petite araignée vivant principalement en Amérique du Nord n\'est pas forcément agressive mais n\'hésitera pas à piquer si elle se sent en danger : comme lorsque vous roulez dans votre lit ou que vous enfiler vêtements ou chaussures elle qu\'elle se retrouve coincée contre votre peau. En cas de morsure un remède doit être administré dans les deux jours car elle peut faire éclater les vaisseaux sanguins et nécroser les tissus : la peau noircit et pourri comme une gangrène !', 1, 'https://i.ibb.co/zFF8yYw/recluse-brune.jpg'),
(13, 'Mygale australienne', 'Atrax robustus', 'Australie', 'Dans le monde des mygales, l\'Atrax robustus fait sûrement partie des plus redoutables avec un venin neurotoxique puissant et des crochets capables de transpercer un ongle ! Cette araignée sévit surtout dans le sud de l\'Australie et la région de Sydney. Les morts suites aux morsures de cette mygale ont presque disparu depuis l\'apparition d\'un anti-venin efficace dans les années 80, mais elle a tout de même la capacité de tuer un enfant ou un adulte affaiblit.', 1, 'https://i.ibb.co/zGpYWM2/mygale-australienne.jpg'),
(14, 'Mygale australienne', 'Atrax robustus', 'Australie', 'Dans le monde des mygales, l\'Atrax robustus fait sûrement partie des plus redoutables avec un venin neurotoxique puissant et des crochets capables de transpercer un ongle ! Cette araignée sévit surtout dans le sud de l\'Australie et la région de Sydney. Les morts suites aux morsures de cette mygale ont presque disparu depuis l\'apparition d\'un anti-venin efficace dans les années 80, mais elle a tout de même la capacité de tuer un enfant ou un adulte affaiblit.', 1, 'https://i.ibb.co/zGpYWM2/mygale-australienne.jpg'),
(15, 'Araignée chameau', 'Solifugae', 'Moyen-Orient', 'Découverte en Irak par des soldats américains, cette cousine des araignées qui ressemble à un scorpion est un arthropode, et certaines rumeurs veulent que ces petites bêtes pourraient courir jusqu\'à 20 km/h et bondir sur le ventre des chameaux pour prélever de leur chair avec leurs mandibules. Bien que douloureuse la morsure n\'est pas venimeuse.', 0, 'https://i.ibb.co/ByNVNBF/araignee-chameau.jpg'),
(16, 'Araignée-loup', 'Lycosidae ', 'Europe', 'Tirant son nom de sa technique de chasse qui vise à courir après ses proies avant de les planter, cette araignée ne tisse pas de toile et est aussi connue pour transporter ses petits sur son dos : ce sont en général les araignées loup que l\'on voit sur internet dans des vidéos où leurs centaines ou milliers de bébés se répandent dans les maisons.', 0, 'https://i.ibb.co/sj8p9SS/araignee-loup.jpg'),
(17, 'Araignée aveugle', 'Adelocosa anops', 'HawaÏ', 'Vivant dans les grottes des îles d’Hawaï, cette petite araignée de 2 cm n\'est pas un danger pour l\'homme mais présente la particularité de ne pas avoir de yeux du tout ! Comme elle vit en permanence dans les sombres grottes, elle ne se fie qu\'à ses autres sens pour chasser et se déplacer, avouez que c\'est quand même assez étrange de ne pas voir un seul œil sur une araignée !', 0, 'https://i.ibb.co/Xp2syP9/araignee-aveugle.jpg'),
(18, 'Araignée assassine', 'Archaeidaes ', 'Afrique du Sud, Australie', 'Aussi appelée araignée pélican, cette espèce qui ne tisse pas de toile non plus à du développer une technique de chasse un peu particulière : comme elle ne tue et mange que d\'autres araignées, celle-ci a évoluée pour avoir un long cou et de grands crochets pour maintenir le corps de ses proies à distance, le temps que le venin fasse effet.\r\n\r\n', 0, 'https://i.ibb.co/Ct6WTSp/araignee-assassine.jpg'),
(19, 'Phrynarachne', 'Phrynarachne', 'Asie du Sud-Est', 'On ne compte plus les exemples des maîtres du camouflage dans le monde animal, mais cette araignée d\'Asie du sud-est est passée à l\'étape supérieure : elle se déguise littéralement en fiente d\'oiseaux en prenant l\'apparence, la forme et l\'odeur de leurs déjections ! Ceci lui permet à la fois d’éloigner les prédateurs mais aussi d\'attirer les insectes qui suivraient l\'odeur...', 0, 'https://i.ibb.co/L538bwB/phryrachne.jpg'),
(20, 'Araignée jaune', 'Cheiracanthium mildei ', 'Zone Arctique', 'Souvent confondue à cause de sa taille et sa couleur avec la recluse brune, cette petite araignée ne présente pas de grand danger pour l\'homme : bien que ses morsures soient douloureuses, le venin qu\'elle contient n\'est pas connu pour provoquer la mort mais dans quelques complications plus rares, la cytotoxine contenue dans les morsures de cette araignée peuvent provoquer une nécrose de la peau près de la blessure.', 0, 'https://i.ibb.co/mJz0DDd/araignee-jaune.jpg'),
(21, 'Araignée redback', 'Latrodectus hasselti', 'Australie', 'Cette autre cousine de la veuve noire se trouve cette fois parmi les animaux fous d\'Australie. Reconnaissable par la marque rouge en forme de sablier sur son dos, elle est reconnue comme potentiellement dangereuse ( comme l\'araignée banane ou les mygales australiennes ) de par la force de son venin.', 1, 'https://i.ibb.co/61fC6yh/araignee-redback.jpg');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
