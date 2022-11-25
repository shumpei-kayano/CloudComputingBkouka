create table score (
	id int auto_increment primary key, 
	student_id int not null,
    times int not null,
	rika int not null,
    kokugo int not null,
    eigo int not null,
    syakai int not null,
    sugaku int not null
);

-- ----------2019年度生第１回------------
insert into score values(1, 1, 1, 100, 100, 100, 100, 100);
insert into score values(2, 2, 1, 35, 54, 87, 99, 86);
insert into score values(3, 3, 1, 75, 22, 90, 70, 73);
insert into score values(4, 4, 1, 76, 65, 46, 76, 43);
insert into score values(5, 5, 1, 94, 48, 89, 50, 74);
insert into score values(6, 6, 1, 39, 29, 34, 74, 45);
insert into score values(7, 7, 1, 66, 84, 63, 33, 88);
insert into score values(8, 8, 1, 12, 53, 48, 85, 83);
insert into score values(9, 9, 1, 90, 44, 57, 32, 36);
insert into score values(10, 10, 1, 75, 97, 38, 22, 44);
insert into score values(11, 11, 1, 89, 72, 53, 74, 84);
insert into score values(12, 12, 1, 47, 37, 84, 49, 57);
insert into score values(13, 13, 1, 63, 78, 88, 90, 28);
insert into score values(14, 14, 1, 51, 49, 55, 70, 52);
insert into score values(15, 15, 1, 94, 56, 66, 37, 43);
insert into score values(16, 16, 1, 73, 79, 74, 66, 95);
insert into score values(17, 17, 1, 65, 98, 48, 27, 56);
insert into score values(18, 18, 1, 39, 63, 59, 11, 75);
insert into score values(19, 19, 1, 58, 88, 73, 59, 34);
insert into score values(20, 20, 1, 89, 69, 56, 73, 73);
insert into score values(21, 21, 1, 90, 57, 69, 58, 73);
insert into score values(22, 22, 1, 12, 85, 53, 63, 67);
insert into score values(23, 23, 1, 64, 38, 85, 72, 83);
insert into score values(24, 24, 1, 79, 29, 58, 58, 68);
insert into score values(25, 25, 1, 44, 96, 99, 90, 67);
insert into score values(26, 26, 1, 52, 58, 100, 50, 90);
insert into score values(27, 27, 1, 78, 53, 63, 88, 100);
insert into score values(28, 28, 1, 96, 67, 74, 99, 63);
insert into score values(29, 29, 1, 90, 68, 85, 50, 79);
insert into score values(30, 30, 1, 100, 74, 43, 71, 37);

-- ----------2019年度生第2回------------
insert into score values(31,1,2,25,8,56,42,38);
insert into score values(32,2,2,29,64,92,94,67);
insert into score values(33,3,2,62,12,20,82,20);
insert into score values(34,4,2,35,80,5,38,36);
insert into score values(35,5,2,36,37,73,31,40);
insert into score values(36,6,2,49,99,15,30,83);
insert into score values(37,7,2,91,60,82,3,3);
insert into score values(38,8,2,11,35,25,33,71);
insert into score values(39,9,2,16,42,55,33,54);
insert into score values(40,10,2,15,46,77,90,57);
insert into score values(41,11,2,28,96,32,38,45);
insert into score values(42,12,2,85,26,70,41,59);
insert into score values(43,13,2,21,52,39,42,47);
insert into score values(44,14,2,52,31,17,26,52);
insert into score values(45,15,2,76,44,66,33,71);
insert into score values(46,16,2,53,67,47,76,15);
insert into score values(47,17,2,57,11,70,40,49);
insert into score values(48,18,2,44,1,2,48,19);
insert into score values(49,19,2,14,9,87,76,69);
insert into score values(50,20,2,15,79,78,18,26);
insert into score values(51,21,2,39,63,19,13,56);
insert into score values(52,22,2,60,31,85,97,22);
insert into score values(53,23,2,64,93,40,51,67);
insert into score values(54,24,2,16,70,30,88,79);
insert into score values(55,25,2,25,24,3,84,24);
insert into score values(56,26,2,20,61,41,64,57);
insert into score values(57,27,2,22,18,10,15,5);
insert into score values(58,28,2,42,4,50,16,75);
insert into score values(59,29,2,2,1,0,57,7);
insert into score values(60,30,2,48,26,3,84,24);

-- ----------2020年度生第1回------------
insert into score values(61,31,1,78,81,44,69,62);
insert into score values(62,32,1,47,81,59,23,57);
insert into score values(63,33,1,97,62,74,97,52);
insert into score values(64,34,1,18,61,2,14,25);
insert into score values(65,35,1,49,41,41,0,20);
insert into score values(66,36,1,23,14,13,0,94);
insert into score values(67,37,1,0,87,84,75,26);
insert into score values(68,38,1,29,38,8,67,73);
insert into score values(69,39,1,27,64,50,50,24);
insert into score values(70,40,1,83,28,81,15,33);
insert into score values(71,41,1,91,6,52,56,29);
insert into score values(72,42,1,25,72,41,3,77);
insert into score values(73,43,1,79,34,33,81,78);
insert into score values(74,44,1,23,58,75,93,20);
insert into score values(75,45,1,31,64,92,17,38);
insert into score values(76,46,1,56,53,43,5,72);
insert into score values(77,47,1,21,38,64,42,81);
insert into score values(78,48,1,76,87,58,5,19);
insert into score values(79,49,1,91,69,22,68,64);
insert into score values(80,50,1,33,72,25,51,31);
insert into score values(81,51,1,7,20,54,95,78);
insert into score values(82,52,1,33,91,38,43,84);
insert into score values(83,53,1,94,3,58,76,65);
insert into score values(84,54,1,76,29,92,69,48);
insert into score values(85,55,1,37,21,44,26,48);
insert into score values(86,56,1,55,94,46,37,1);
insert into score values(87,57,1,25,8,24,51,84);
insert into score values(88,58,1,3,31,33,89,15);
insert into score values(89,59,1,9,25,67,40,9);
insert into score values(90,60,1,58,76,53,91,60);

-- ----------2020年度生第2回------------
insert into score values(91,31,2,1,77,90,96,23);
insert into score values(92,32,2,14,33,78,77,73);
insert into score values(93,33,2,24,38,22,13,6);
insert into score values(94,34,2,60,55,75,95,92);
insert into score values(95,35,2,75,12,33,55,22);
insert into score values(96,36,2,49,13,22,35,45);
insert into score values(97,37,2,46,6,1,3,28);
insert into score values(98,38,2,88,52,22,60,74);
insert into score values(99,39,2,98,9,98,11,63);
insert into score values(100,40,2,65,55,98,98,5);
insert into score values(101,41,2,14,95,78,44,80);
insert into score values(102,42,2,70,51,85,98,29);
insert into score values(103,43,2,13,16,6,29,20);
insert into score values(104,44,2,28,57,71,46,2);
insert into score values(105,45,2,78,37,22,59,61);
insert into score values(106,46,2,49,85,97,93,92);
insert into score values(107,47,2,28,6,11,1,77);
insert into score values(108,48,2,81,48,99,53,58);
insert into score values(109,49,2,61,54,58,99,52);
insert into score values(110,50,2,9,38,36,88,53);
insert into score values(111,51,2,42,5,26,31,38);
insert into score values(112,52,2,8,59,13,78,27);
insert into score values(113,53,2,67,78,32,16,39);
insert into score values(114,54,2,25,42,85,56,41);
insert into score values(115,55,2,0,64,94,62,87);
insert into score values(116,56,2,25,77,27,30,52);
insert into score values(117,57,2,58,84,89,71,54);
insert into score values(118,58,2,13,56,92,30,48);
insert into score values(119,59,2,91,36,70,97,96);
insert into score values(120,60,2,14,16,89,4,25);

-- ----------2021年度生第1回------------
insert into score values(121,61,1,9,79,87,4,8);
insert into score values(122,62,1,9,61,95,37,14);
insert into score values(123,63,1,12,69,10,25,72);
insert into score values(124,64,1,55,15,49,25,66);
insert into score values(125,65,1,44,14,83,45,42);
insert into score values(126,66,1,65,92,35,79,41);
insert into score values(127,67,1,89,85,4,74,10);
insert into score values(128,68,1,42,72,64,32,49);
insert into score values(129,69,1,12,33,9,44,99);
insert into score values(130,70,1,89,78,14,11,21);
insert into score values(131,71,1,55,80,5,86,31);
insert into score values(132,72,1,63,42,73,16,97);
insert into score values(133,73,1,25,92,88,23,78);
insert into score values(134,74,1,8,11,69,78,1);
insert into score values(135,75,1,56,60,88,17,4);
insert into score values(136,76,1,50,55,29,95,17);
insert into score values(137,77,1,97,68,29,16,66);
insert into score values(138,78,1,27,4,50,43,68);
insert into score values(139,79,1,28,61,22,17,10);
insert into score values(140,80,1,40,21,40,67,44);
insert into score values(141,81,1,84,13,82,13,92);
insert into score values(142,82,1,65,75,4,64,43);
insert into score values(143,83,1,2,7,84,89,25);
insert into score values(144,84,1,34,45,33,25,52);
insert into score values(145,85,1,37,65,19,94,29);
insert into score values(146,86,1,39,40,31,75,66);
insert into score values(147,87,1,1,96,63,30,84);
insert into score values(148,88,1,88,58,33,10,79);
insert into score values(149,89,1,65,64,73,17,16);
insert into score values(150,90,1,64,81,64,26,42);

-- ----------2021年度生第2回------------
insert into score values(151,61,2,2,60,53,81,35);
insert into score values(152,62,2,22,3,65,82,12);
insert into score values(153,63,2,85,12,45,93,43);
insert into score values(154,64,2,72,66,47,30,21);
insert into score values(155,65,2,12,61,70,92,77);
insert into score values(156,66,2,38,29,24,72,33);
insert into score values(157,67,2,74,77,64,87,50);
insert into score values(158,68,2,43,1,67,63,49);
insert into score values(159,69,2,73,61,2,9,49);
insert into score values(160,70,2,83,29,95,67,87);
insert into score values(161,71,2,7,89,68,32,50);
insert into score values(162,72,2,84,63,19,67,36);
insert into score values(163,73,2,92,9,10,5,23);
insert into score values(164,74,2,79,9,69,33,1);
insert into score values(165,75,2,65,69,36,96,85);
insert into score values(166,76,2,84,41,22,43,22);
insert into score values(167,77,2,85,11,58,41,85);
insert into score values(168,78,2,6,52,57,69,15);
insert into score values(169,79,2,55,71,50,60,24);
insert into score values(170,80,2,36,33,47,43,35);
insert into score values(171,81,2,61,42,31,32,64);
insert into score values(172,82,2,37,70,34,33,9);
insert into score values(173,83,2,53,48,70,92,21);
insert into score values(174,84,2,85,30,90,88,57);
insert into score values(175,85,2,80,51,57,57,90);
insert into score values(176,86,2,34,34,25,15,3);
insert into score values(177,87,2,6,37,20,2,92);
insert into score values(178,88,2,51,48,35,14,92);
insert into score values(179,89,2,15,10,4,67,81);
insert into score values(180,90,2,53,44,43,51,13);

-- ----------2022年度生第1回------------
insert into score values(181,91,1,0,0,0,0,0);
insert into score values(182,92,1,0,0,0,0,0);
insert into score values(183,93,1,0,0,0,0,0);
insert into score values(184,94,1,0,0,0,0,0);
insert into score values(185,95,1,0,0,0,0,0);
insert into score values(186,96,1,0,0,0,0,0);
insert into score values(187,97,1,0,0,0,0,0);
insert into score values(188,98,1,0,0,0,0,0);
insert into score values(189,99,1,0,0,0,0,0);
insert into score values(190,100,1,0,0,0,0,0);
insert into score values(191,101,1,0,0,0,0,0);
insert into score values(192,102,1,0,0,0,0,0);
insert into score values(193,103,1,0,0,0,0,0);
insert into score values(194,104,1,0,0,0,0,0);
insert into score values(195,105,1,0,0,0,0,0);
insert into score values(196,106,1,0,0,0,0,0);
insert into score values(197,107,1,0,0,0,0,0);
insert into score values(198,108,1,0,0,0,0,0);
insert into score values(199,109,1,0,0,0,0,0);
insert into score values(200,110,1,0,0,0,0,0);
insert into score values(201,111,1,0,0,0,0,0);
insert into score values(202,112,1,0,0,0,0,0);
insert into score values(203,113,1,0,0,0,0,0);
insert into score values(204,114,1,0,0,0,0,0);
insert into score values(205,115,1,0,0,0,0,0);
insert into score values(206,116,1,0,0,0,0,0);
insert into score values(207,117,1,0,0,0,0,0);
insert into score values(208,118,1,0,0,0,0,0);
insert into score values(209,119,1,0,0,0,0,0);
insert into score values(210,120,1,0,0,0,0,0);

-- ----------2022年度生第2回------------
insert into score values(211,91,1,0,0,0,0,0);
insert into score values(212,92,1,0,0,0,0,0);
insert into score values(213,93,1,0,0,0,0,0);
insert into score values(214,94,1,0,0,0,0,0);
insert into score values(215,95,1,0,0,0,0,0);
insert into score values(216,96,1,0,0,0,0,0);
insert into score values(217,97,1,0,0,0,0,0);
insert into score values(218,98,1,0,0,0,0,0);
insert into score values(219,99,1,0,0,0,0,0);
insert into score values(220,100,1,0,0,0,0,0);
insert into score values(221,101,1,0,0,0,0,0);
insert into score values(222,102,1,0,0,0,0,0);
insert into score values(223,103,1,0,0,0,0,0);
insert into score values(224,104,1,0,0,0,0,0);
insert into score values(225,105,1,0,0,0,0,0);
insert into score values(226,106,1,0,0,0,0,0);
insert into score values(227,107,1,0,0,0,0,0);
insert into score values(228,108,1,0,0,0,0,0);
insert into score values(229,109,1,0,0,0,0,0);
insert into score values(230,110,1,0,0,0,0,0);
insert into score values(231,111,1,0,0,0,0,0);
insert into score values(232,112,1,0,0,0,0,0);
insert into score values(233,113,1,0,0,0,0,0);
insert into score values(234,114,1,0,0,0,0,0);
insert into score values(235,115,1,0,0,0,0,0);
insert into score values(236,116,1,0,0,0,0,0);
insert into score values(237,117,1,0,0,0,0,0);
insert into score values(238,118,1,0,0,0,0,0);
insert into score values(239,119,1,0,0,0,0,0);
insert into score values(240,120,1,0,0,0,0,0);