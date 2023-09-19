-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 19, 2023 at 03:09 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `00_l3_quotes_2023`
--

-- --------------------------------------------------------

--
-- Table structure for table `all_subjects`
--

CREATE TABLE `all_subjects` (
  `Subject_ID` int(11) NOT NULL,
  `Subject` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `all_subjects`
--

INSERT INTO `all_subjects` (`Subject_ID`, `Subject`) VALUES
(1, 'abilities'),
(2, 'activism'),
(3, 'adult'),
(4, 'adventure'),
(5, 'age'),
(6, 'alcohol'),
(7, 'beatles'),
(8, 'belief'),
(9, 'birth'),
(10, 'books'),
(11, 'change'),
(12, 'character'),
(13, 'children'),
(14, 'chocolate'),
(15, 'choices'),
(16, 'christianity'),
(17, 'classic'),
(18, 'comedy'),
(19, 'courage'),
(20, 'death'),
(21, 'determination'),
(22, 'dream'),
(23, 'drug'),
(24, 'education'),
(25, 'empathy'),
(26, 'evil'),
(27, 'failure'),
(28, 'faith'),
(29, 'fantasy'),
(30, 'fate'),
(31, 'fear'),
(32, 'food'),
(33, 'friends'),
(34, 'genius'),
(35, 'girls'),
(36, 'god'),
(37, 'good'),
(38, 'greatness'),
(39, 'growth'),
(40, 'happiness'),
(41, 'hate'),
(42, 'hope'),
(43, 'humor'),
(44, 'imagination'),
(45, 'imperfection'),
(46, 'indifference'),
(47, 'inspirational'),
(48, 'integrity'),
(49, 'justice'),
(50, 'knowledge'),
(51, 'learning'),
(52, 'library'),
(53, 'lies'),
(54, 'life'),
(55, 'lost'),
(56, 'love'),
(57, 'marriage'),
(58, 'mind'),
(59, 'miracles'),
(60, 'mistakes'),
(61, 'music'),
(62, 'n/a'),
(63, 'navigation'),
(64, 'obvious'),
(65, 'open-mind'),
(66, 'opposites'),
(67, 'peace'),
(68, 'people'),
(69, 'philosophy'),
(70, 'planning'),
(71, 'poetry'),
(72, 'reading'),
(73, 'reality'),
(74, 'regrets'),
(75, 'religion'),
(76, 'seuss'),
(77, 'simile'),
(78, 'simplicity'),
(79, 'stupidity'),
(80, 'success'),
(81, 'tea'),
(82, 'thought'),
(83, 'travel'),
(84, 'troubles'),
(85, 'trust'),
(86, 'truth'),
(87, 'understand'),
(88, 'value'),
(89, 'wander'),
(90, 'wisdom'),
(91, 'woman'),
(92, 'world'),
(93, 'writing'),
(94, 'yourself');

-- --------------------------------------------------------

--
-- Table structure for table `author`
--

CREATE TABLE `author` (
  `Author_ID` int(11) NOT NULL,
  `First` varchar(100) NOT NULL,
  `Middle` varchar(100) NOT NULL,
  `Last` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `author`
--

INSERT INTO `author` (`Author_ID`, `First`, `Middle`, `Last`) VALUES
(1, 'Douglas', '', 'Adams'),
(2, 'Jane', '', 'Austen'),
(3, 'James', '', 'Baldwin'),
(4, 'J.M.', '', 'Barrie'),
(5, 'George', 'Bernard', 'Shaw'),
(6, 'Charles', '', 'Bukowski'),
(7, 'George', '', 'Carlin'),
(8, 'Suzanne', '', 'Collins'),
(9, 'E.E.', '', 'Cummings'),
(10, 'Alexandre', 'fils', 'Dumas'),
(11, 'Thomas', 'A', 'Edison'),
(12, 'Albert', '', 'Einstein'),
(13, 'George', '', 'Eliot'),
(14, 'W.C.', '', 'Fields'),
(15, 'Andre', '', 'Gide'),
(16, 'Ernest', '', 'Hemingway'),
(17, 'Jimi', '', 'Hendrix'),
(18, 'Jim', '', 'Henson'),
(19, 'Theodor', '', 'Herzl'),
(20, 'Khaled', '', 'Hosseini'),
(21, 'Garrison', '', 'Keillor'),
(22, 'Helen', '', 'Keller'),
(23, 'Harper', '', 'Lee'),
(24, 'Madeleine', '', 'L\'Engle'),
(25, 'John', '', 'Lennon'),
(26, 'C.S.', '', 'Lewis'),
(27, 'Jorge', 'Luis', 'Borgis'),
(28, 'Martin', '', 'Luther'),
(29, 'Charles', 'M.', 'Schultz'),
(30, 'Bob', '', 'Marley'),
(31, 'Steve', '', 'Martin'),
(32, 'Stephenie', '', 'Meyer'),
(33, 'Marilyn', '', 'Monroe'),
(34, 'Haruki', '', 'Murakami'),
(35, 'Pablo', '', 'Neruda'),
(36, 'William', '', 'Nicholson'),
(37, 'Friedrich', '', 'Nietzsche'),
(38, 'Terry', '', 'Pratchett'),
(39, 'George', 'R.R.', 'Martin'),
(40, 'Ayn', '', 'Rand'),
(41, 'Eleanor', '', 'Roosevelt'),
(42, 'J.K.', '', 'Rowling'),
(43, 'J.D.', '', 'Salinger'),
(44, 'Allen', '', 'Saunders'),
(45, 'Dr.', '', 'Seuss'),
(46, 'Alfred', '', 'Tennyson'),
(47, 'Mother', '', 'Teresa'),
(48, 'J.R.R.', '', 'Tolkien'),
(49, 'Mark', '', 'Twain'),
(50, 'Ralph', 'Waldo', 'Emerson'),
(51, 'Elie', '', 'Wiesel');

-- --------------------------------------------------------

--
-- Table structure for table `quotes`
--

CREATE TABLE `quotes` (
  `ID` int(11) NOT NULL,
  `Author_ID` int(11) NOT NULL,
  `Quote` text NOT NULL,
  `Subject1_ID` int(11) NOT NULL,
  `Subject2_ID` int(11) NOT NULL,
  `Subject3_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `quotes`
--

INSERT INTO `quotes` (`ID`, `Author_ID`, `Quote`, `Subject1_ID`, `Subject2_ID`, `Subject3_ID`) VALUES
(1, 1, 'I may not have gone where I intended to go, but I think I have ended up where I needed to be. ', 54, 63, 62),
(2, 2, 'The person, be it gentleman or lady, who has not pleasure in a good novel, must be intolerably stupid. ', 10, 17, 43),
(3, 2, 'There is nothing I would not do for those who are really my friends. I have no notion of loving people by halves, it is not my nature. ', 33, 56, 62),
(4, 2, 'A lady\'s imagination is very rapid; it jumps from admiration to love, from love to matrimony in a moment. ', 43, 56, 91),
(5, 2, 'I declare after all there is no enjoyment like reading! How much sooner one tires of any thing than of a book! -- When I have a house of my own, I shall be miserable if I have not an excellent library. ', 10, 52, 72),
(6, 2, 'There are few people whom I really love, and still fewer of whom I think well. The more I see of the world, the more am I dissatisfied with it; and every day confirms my belief of the inconsistency of all human characters, and of the little dependence that can be placed on the appearance of merit or sense. ', 17, 10, 62),
(7, 3, 'Love does not begin and end the way we seem to think it does. Love is a battle, love is a war; love is a growing up. ', 56, 62, 62),
(8, 4, 'To die will be an awfully big adventure. ', 4, 56, 62),
(9, 5, 'Life isn\'t about finding yourself. Life is about creating yourself. ', 47, 54, 94),
(10, 6, 'That\'s the problem with drinking, I thought, as I poured myself a drink. If something bad happens you drink in an attempt to forget; if something good happens you drink in order to celebrate; and if nothing happens you drink to make something happen. ', 6, 62, 62),
(11, 6, 'Some people never go crazy. What truly horrible lives they must lead. ', 43, 62, 62),
(12, 7, 'The reason I talk to myself is because I\'m the only one whose answers I accept. ', 43, 62, 62),
(13, 8, 'You don\'t forget the face of the person who was your last hope. ', 68, 42, 62),
(14, 8, 'Remember, we\'re madly in love, so it\'s all right to kiss me anytime you feel like it. ', 43, 62, 62),
(15, 9, 'It takes courage to grow up and become who you really are. ', 19, 62, 62),
(16, 10, 'The difference between genius and stupidity is: genius has its limits. ', 34, 79, 62),
(17, 11, 'I have not failed. I\'ve just found 10,000 ways that won\'t work. ', 27, 47, 62),
(18, 12, 'The world as we have created it is a process of our thinking. It cannot be changed without changing our thinking. ', 11, 82, 92),
(19, 12, 'There are only two ways to live your life. One is as though nothing is a miracle. The other is as though everything is a miracle. ', 47, 54, 59),
(20, 12, 'Try not to become a man of success. Rather become a man of value. ', 3, 80, 88),
(21, 12, 'If you can\'t explain it to a six year old, you don\'t understand it yourself. ', 78, 87, 62),
(22, 12, 'If you want your children to be intelligent, read them fairy tales. If you want them to be more intelligent, read them more fairy tales. ', 13, 72, 62),
(23, 12, 'Logic will get you from A to Z; imagination will get you everywhere. ', 44, 62, 62),
(24, 12, 'Any fool can know. The point is to understand. ', 50, 51, 87),
(25, 12, 'Life is like riding a bicycle. To keep your balance, you must keep moving. ', 54, 62, 62),
(26, 12, 'If I were not a physicist, I would probably be a musician. I often think in music. I live my daydreams in music. I see my life in terms of music. ', 61, 62, 62),
(27, 12, 'Anyone who has never made a mistake has never tried anything new. ', 60, 62, 62),
(28, 13, 'It is never too late to be what you might have been. ', 47, 62, 62),
(29, 14, 'I am free of all prejudice. I hate everyone equally. ', 43, 41, 62),
(30, 15, 'It is better to be hated for what you are than to be loved for what you are not. ', 54, 56, 41),
(31, 16, 'There is no friend as loyal as a book. ', 10, 33, 62),
(32, 16, 'There is nothing to writing. All you do is sit down at a typewriter and bleed. ', 37, 93, 62),
(33, 17, 'I\'m the one that\'s got to die when it\'s time for me to die, so let me live my life the way I want to. ', 20, 54, 62),
(34, 18, 'Beauty is in the eye of the beholder and it may be necessary from time to time to give a stupid or misinformed beholder a black eye. ', 43, 62, 62),
(35, 19, 'If you will it, it is no dream.', 47, 21, 22),
(36, 19, 'Whoever would change men must change the conditions of their lives.', 54, 68, 11),
(37, 20, 'But better to get hurt by the truth than comforted with a lie. ', 54, 62, 62),
(38, 21, 'Anyone who thinks sitting in church can make you a Christian must also think that sitting in a garage can make you a car. ', 43, 75, 62),
(39, 22, 'When one door of happiness closes, another opens; but often we look so long at the closed door that we do not see the one which has been opened for us. ', 47, 62, 62),
(40, 23, 'You never really understand a person until you consider things from his point of view... Until you climb inside of his skin and walk around in it. ', 54, 25, 62),
(41, 24, 'You have to write the book that wants to be written. And if the book will be too difficult for grown-ups, then you write it for children. ', 10, 13, 3),
(42, 25, 'You may say I\'m a dreamer, but I\'m not the only one. I hope someday you\'ll join us. And the world will live as one. ', 7, 22, 67),
(43, 26, 'You can never get a cup of tea large enough or a book long enough to suit me. ', 10, 72, 81),
(44, 26, 'To love at all is to be vulnerable. Love anything and your heart will be wrung and possibly broken. If you want to make sure of keeping it intact you must give it to no one, not even an animal. Wrap it carefully round with hobbies and little luxuries; avoid all entanglements. Lock it up safe in the casket or coffin of your selfishness. But in that casket, safe, dark, motionless, airless, it will change. It will not be broken; it will become unbreakable, impenetrable, irredeemable. To love is to be vulnerable. ', 56, 62, 62),
(45, 26, 'Some day you will be old enough to start reading fairy tales again. ', 5, 72, 3),
(46, 26, 'We are not necessarily doubting that God will do the best for us; we are wondering how painful the best will turn out to be. ', 36, 62, 62),
(47, 26, 'I believe in Christianity as I believe that the sun has risen: not only because I see it, but because by it I see everything else. ', 16, 28, 75),
(48, 27, 'I have always imagined that Paradise will be a kind of library. ', 10, 52, 62),
(49, 28, 'Only in the darkness can you see the stars. ', 42, 47, 62),
(50, 29, 'All you need is love. But a little chocolate now and then doesn\'t hurt. ', 14, 32, 43),
(51, 30, 'You may not be her first, her last, or her only. She loved before she may love again. But if she loves you now, what else matters? She\'s not perfect”you aren\'t either, and the two of you may never be perfect together but if she can make you laugh, cause you to think twice, and admit to being human and making mistakes, hold onto her and give her the most you can. She may not be thinking about you every second of the day, but she will give you a part of her that she knows you can break”her heart. So don\'t hurt her, don\'t change her, don\'t analyze and don\'t expect more than she can give. Smile when she makes you happy, let her know when she makes you mad, and miss her when she\'s not there. ', 56, 62, 62),
(52, 30, 'One good thing about music, when it hits you, you feel no pain. ', 61, 62, 62),
(53, 30, 'The truth is, everyone is going to hurt you. You just got to find the ones worth suffering for. ', 33, 62, 62),
(54, 31, 'A day without sunshine is like, you know, night. ', 43, 64, 77),
(55, 32, 'He\'s like a drug for you, Bella. ', 23, 56, 77),
(56, 33, 'Imperfection is beauty, madness is genius and it\'s better to be absolutely ridiculous than absolutely boring. ', 47, 45, 34),
(57, 33, 'This life is what you make it. No matter what, you\'re going to mess up sometimes, it\'s a universal truth. But the good part is you get to decide how you\'re going to mess it up. Girls will be your friends - they\'ll act like it anyway. But just remember, some come, some go. The ones that stay with you through everything - they\'re your true best friends. Don\'t let go of them. Also remember, sisters make the best friends in the world. As for lovers, well, they\'ll come and go too. And baby, I hate to say it, most of them - actually pretty much all of them are going to break your heart, but you can\'t give up because if you give up, you\'ll never find your soulmate. You\'ll never find that half who makes you whole and that goes for everything. Just because you fail once, doesn\'t mean you\'re gonna fail at everything. Keep trying, hold on, and always, always, always believe in yourself, because if you don\'t, then who will, sweetie? So keep your head high, keep your chin up, and most importantly, keep smiling, because life\'s a beautiful thing and there\'s so much to smile about. ', 54, 80, 27),
(58, 33, 'You believe lies so you eventually learn to trust no one but yourself. ', 85, 8, 53),
(59, 33, 'If you can make a woman laugh, you can make her do anything. ', 35, 56, 62),
(60, 33, 'The real lover is the man who can thrill you by kissing your forehead or smiling into your eyes or just staring into space. ', 56, 62, 62),
(61, 33, 'A wise girl kisses but doesn\'t love, listens but doesn\'t believe, and leaves before she is left. ', 56, 90, 62),
(62, 33, 'I am good, but not an angel. I do sin, but I am not the devil. I am just a small girl in a big world trying to find someone to love. ', 56, 37, 26),
(63, 34, 'If you only read the books that everyone else is reading, you can only think what everyone else is thinking. ', 10, 82, 62),
(64, 35, 'I love you without knowing how, or when, or from where. I love you simply, without problems or pride: I love you in this way because I do not know any other way of loving but this, in which there is no I or you, so intimate that your hand upon my chest is my hand, so intimate that when I fall asleep your eyes close. ', 56, 71, 62),
(65, 36, 'We read to know we\'re not alone. ', 72, 62, 62),
(66, 37, 'It is not a lack of love, but a lack of friendship that makes unhappy marriages. ', 56, 33, 57),
(67, 38, 'The trouble with having an open mind, of course, is that people will insist on coming along and trying to put things in it. ', 43, 65, 82),
(68, 39, 'A reader lives a thousand lives before he dies, said Jojen. The man who never reads lives only one. ', 72, 10, 72),
(69, 39, '... a mind needs books as a sword needs a whetstone, if it is to keep its edge. ', 10, 58, 62),
(70, 40, 'The question isn\'t who is going to let me; it\'s who is going to stop me. ', 47, 62, 62),
(71, 41, 'A woman is like a tea bag; you never know how strong it is until it\'s in hot water. ', 91, 12, 62),
(72, 41, 'Do one thing every day that scares you. ', 31, 47, 62),
(73, 42, 'It is our choices, Harry, that show what we truly are, far more than our abilities. ', 1, 15, 1),
(74, 42, 'It takes a great deal of bravery to stand up to our enemies, but just as much to stand up to our friends. ', 19, 33, 19),
(75, 42, 'It is impossible to live without failing at something, unless you live so cautiously that you might as well not have lived at all - in which case, you fail by default. ', 54, 27, 80),
(76, 42, 'Of course it is happening inside your head, Harry, but why on earth should that mean that it is not real?', 73, 44, 62),
(77, 42, 'To the well-organized mind, death is but the next great adventure. ', 20, 47, 62),
(78, 42, 'It matters not what someone is born, but what they grow to be. ', 9, 39, 62),
(79, 42, 'Do not pity the dead, Harry. Pity the living, and, above all those who live without love. ', 54, 20, 56),
(80, 42, 'Remember, if the time should come when you have to make a choice between what is right and what is easy, remember what happened to a boy who was good, and kind, and brave, because he strayed across the path of Lord Voldemort. Remember Cedric Diggory. ', 48, 62, 62),
(81, 42, 'The truth.\" Dumbledore sighed. \"It is a beautiful and terrible thing, and should therefore be treated with great caution. ', 86, 62, 62),
(82, 43, 'What really knocks me out is a book that, when you\'re all done reading it, you wish the author that wrote it was a terrific friend of yours and you could call him up on the phone whenever you felt like it. That doesn\'t happen much, though. ', 10, 72, 62),
(83, 44, 'Life is what happens to us while we are making other plans. ', 30, 54, 70),
(84, 45, 'I like nonsense, it wakes up the brain cells. Fantasy is a necessary ingredient in living. ', 29, 62, 62),
(85, 45, 'Today you are You, that is truer than true. There is no one alive who is Youer than You. ', 18, 54, 94),
(86, 45, 'The more that you read, the more things you will know. The more that you learn, the more places you\'ll go. ', 51, 72, 76),
(87, 45, 'I have heard there are troubles of more than one kind. Some come from ahead and some come from behind. But I\'ve bought a big bat. I\'m all ready you see. Now my troubles are going to have troubles with me!', 84, 62, 62),
(88, 45, 'Think left and think right and think low and think high. Oh, the thinks you can think up if only you try!', 43, 69, 62),
(89, 45, 'A person\'s a person, no matter how small. ', 47, 62, 62),
(90, 46, 'If I had a flower for every time I thought of you...I could walk through my garden forever. ', 33, 56, 62),
(91, 47, 'If you judge people, you have no time to love them. ', 68, 49, 56),
(92, 47, 'Not all of us can do great things. But we can do small things with great love. ', 56, 38, 62),
(93, 48, 'Not all those who wander are lost. ', 83, 55, 89),
(94, 49, 'Good friends, good books, and a sleepy conscience: this is the ideal life. ', 10, 33, 62),
(95, 49, 'I have never let my schooling interfere with my education. ', 24, 62, 62),
(96, 49, '²Classic² - a book which people praise and don\'t read. ', 10, 17, 72),
(97, 49, 'The fear of death follows from the fear of life. A man who lives fully is prepared to die at any time. ', 20, 54, 62),
(98, 49, 'A lie can travel half way around the world while the truth is putting on its shoes. ', 86, 62, 62),
(99, 49, 'Never tell the truth to people who are not worthy of it. ', 86, 62, 62),
(100, 50, 'For every minute you are angry you lose sixty seconds of happiness. ', 40, 62, 62),
(101, 50, 'Finish each day and be done with it. You have done what you could. Some blunders and absurdities no doubt crept in; forget them as soon as you can. Tomorrow is a new day. You shall begin it serenely and with too high a spirit to be encumbered with your old nonsense. ', 54, 74, 62),
(102, 51, 'The opposite of love is not hate, it\'s indifference. The opposite of art is not ugliness, it\'s indifference. The opposite of faith is not heresy, it\'s indifference. And the opposite of life is not death, it\'s indifference. ', 2, 46, 66);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `User_ID` int(11) NOT NULL,
  `username` varchar(200) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`User_ID`, `username`, `password`) VALUES
(1, 'admin', '$2y$08$iQsu1h2zAKT5g03s9rFSpeLYmjB8S6EalB9hNpeWIChVRANzkgOQG');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `all_subjects`
--
ALTER TABLE `all_subjects`
  ADD PRIMARY KEY (`Subject_ID`);

--
-- Indexes for table `author`
--
ALTER TABLE `author`
  ADD PRIMARY KEY (`Author_ID`);

--
-- Indexes for table `quotes`
--
ALTER TABLE `quotes`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`User_ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `all_subjects`
--
ALTER TABLE `all_subjects`
  MODIFY `Subject_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=95;

--
-- AUTO_INCREMENT for table `author`
--
ALTER TABLE `author`
  MODIFY `Author_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `quotes`
--
ALTER TABLE `quotes`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=103;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `User_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
