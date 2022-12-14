-- H2 2.1.214; 
;              
CREATE USER IF NOT EXISTS "SA" SALT '985b70459bfcbd8b' HASH '3c02d1e0c09874c6a220d87b0c5f5c3d862aa3edff07bf4690f8e77a9adaed11' ADMIN;          
CREATE CACHED TABLE "PUBLIC"."SCORE"(
    "ID" INTEGER GENERATED BY DEFAULT AS IDENTITY(START WITH 1) NOT NULL,
    "STUDENT_ID" INTEGER NOT NULL,
    "TIMES" INTEGER NOT NULL,
    "RIKA" INTEGER NOT NULL,
    "KOKUGO" INTEGER NOT NULL,
    "EIGO" INTEGER NOT NULL,
    "SYAKAI" INTEGER NOT NULL,
    "SUGAKU" INTEGER NOT NULL
);      
ALTER TABLE "PUBLIC"."SCORE" ADD CONSTRAINT "PUBLIC"."CONSTRAINT_4" PRIMARY KEY("ID");         
-- 240 +/- SELECT COUNT(*) FROM PUBLIC.SCORE;  
INSERT INTO "PUBLIC"."SCORE" VALUES
(1, 1, 1, 100, 99, 99, 99, 100),
(2, 2, 1, 30, 54, 100, 99, 100),
(3, 3, 1, 75, 22, 90, 70, 73),
(4, 4, 1, 76, 65, 46, 76, 43),
(5, 5, 1, 94, 48, 89, 50, 74),
(6, 6, 1, 39, 29, 34, 74, 45),
(7, 7, 1, 66, 84, 63, 33, 88),
(8, 8, 1, 12, 53, 48, 85, 83),
(9, 9, 1, 90, 44, 57, 32, 36),
(10, 10, 1, 75, 97, 38, 22, 44),
(11, 11, 1, 89, 72, 53, 74, 84),
(12, 12, 1, 47, 37, 84, 49, 57),
(13, 13, 1, 63, 78, 88, 90, 28),
(14, 14, 1, 51, 49, 55, 70, 52),
(15, 15, 1, 94, 56, 66, 37, 43),
(16, 16, 1, 73, 79, 74, 66, 95),
(17, 17, 1, 65, 98, 48, 27, 56),
(18, 18, 1, 39, 63, 59, 11, 75),
(19, 19, 1, 58, 88, 73, 59, 34),
(20, 20, 1, 89, 69, 56, 73, 73),
(21, 21, 1, 90, 57, 69, 58, 73),
(22, 22, 1, 12, 85, 53, 63, 67),
(23, 23, 1, 64, 38, 85, 72, 83),
(24, 24, 1, 79, 29, 58, 58, 68),
(25, 25, 1, 44, 96, 99, 90, 67),
(26, 26, 1, 52, 58, 100, 50, 90),
(27, 27, 1, 78, 53, 63, 88, 100),
(28, 28, 1, 96, 67, 74, 99, 63),
(29, 29, 1, 90, 68, 85, 50, 79),
(30, 30, 1, 100, 74, 43, 71, 37),
(31, 1, 2, 25, 8, 56, 42, 38),
(32, 2, 2, 29, 64, 92, 94, 67),
(33, 3, 2, 62, 12, 20, 82, 20),
(34, 4, 2, 35, 80, 5, 38, 36),
(35, 5, 2, 36, 37, 73, 31, 40),
(36, 6, 2, 49, 99, 15, 30, 83),
(37, 7, 2, 91, 60, 82, 3, 3),
(38, 8, 2, 11, 35, 25, 33, 71),
(39, 9, 2, 16, 42, 55, 33, 54),
(40, 10, 2, 15, 46, 77, 90, 57),
(41, 11, 2, 28, 96, 32, 38, 45),
(42, 12, 2, 85, 26, 70, 41, 59),
(43, 13, 2, 21, 52, 39, 42, 47),
(44, 14, 2, 52, 31, 17, 26, 52),
(45, 15, 2, 76, 44, 66, 33, 71),
(46, 16, 2, 53, 67, 47, 76, 15),
(47, 17, 2, 57, 11, 70, 40, 49),
(48, 18, 2, 44, 1, 2, 48, 19),
(49, 19, 2, 14, 9, 87, 76, 69),
(50, 20, 2, 15, 79, 78, 18, 26),
(51, 21, 2, 39, 63, 19, 13, 56),
(52, 22, 2, 60, 31, 85, 97, 22),
(53, 23, 2, 64, 93, 40, 51, 67),
(54, 24, 2, 16, 70, 30, 88, 79),
(55, 25, 2, 25, 24, 3, 84, 24),
(56, 26, 2, 20, 61, 41, 64, 57),
(57, 27, 2, 22, 18, 10, 15, 5),
(58, 28, 2, 42, 4, 50, 16, 75),
(59, 29, 2, 2, 1, 0, 57, 7),
(60, 30, 2, 48, 26, 3, 84, 24),
(61, 31, 1, 80, 81, 44, 69, 62),
(62, 32, 1, 49, 81, 59, 23, 57),
(63, 33, 1, 97, 62, 74, 97, 52),
(64, 34, 1, 18, 61, 2, 14, 25),
(65, 35, 1, 49, 41, 41, 0, 20),
(66, 36, 1, 23, 14, 13, 0, 94),
(67, 37, 1, 0, 87, 84, 75, 26),
(68, 38, 1, 29, 38, 8, 67, 73),
(69, 39, 1, 27, 64, 50, 50, 24),
(70, 40, 1, 83, 28, 81, 15, 33),
(71, 41, 1, 91, 6, 52, 56, 29),
(72, 42, 1, 25, 72, 41, 3, 77),
(73, 43, 1, 79, 34, 33, 81, 78),
(74, 44, 1, 23, 58, 75, 93, 20),
(75, 45, 1, 31, 64, 92, 17, 38),
(76, 46, 1, 56, 53, 43, 5, 72),
(77, 47, 1, 21, 38, 64, 42, 81),
(78, 48, 1, 76, 87, 58, 5, 19),
(79, 49, 1, 91, 69, 22, 68, 64),
(80, 50, 1, 33, 72, 25, 51, 31),
(81, 51, 1, 7, 20, 54, 95, 78),
(82, 52, 1, 33, 91, 38, 43, 84),
(83, 53, 1, 94, 3, 58, 76, 65),
(84, 54, 1, 76, 29, 92, 69, 48),
(85, 55, 1, 37, 21, 44, 26, 48),
(86, 56, 1, 55, 94, 46, 37, 1),
(87, 57, 1, 25, 8, 24, 51, 84),
(88, 58, 1, 3, 31, 33, 89, 15),
(89, 59, 1, 9, 25, 67, 40, 9),
(90, 60, 1, 58, 76, 53, 91, 60),
(91, 31, 2, 1, 77, 90, 96, 23),
(92, 32, 2, 14, 33, 78, 77, 73),
(93, 33, 2, 24, 38, 22, 13, 6),
(94, 34, 2, 60, 55, 75, 95, 92),
(95, 35, 2, 75, 12, 33, 55, 22),
(96, 36, 2, 49, 13, 22, 35, 45),
(97, 37, 2, 46, 6, 1, 3, 28),
(98, 38, 2, 88, 52, 22, 60, 74),
(99, 39, 2, 98, 9, 98, 11, 63),
(100, 40, 2, 65, 55, 98, 98, 5),
(101, 41, 2, 14, 95, 78, 44, 80),
(102, 42, 2, 70, 51, 85, 98, 29),
(103, 43, 2, 13, 16, 6, 29, 20),
(104, 44, 2, 28, 57, 71, 46, 2),
(105, 45, 2, 78, 37, 22, 59, 61),
(106, 46, 2, 49, 85, 97, 93, 92),
(107, 47, 2, 28, 6, 11, 1, 77),
(108, 48, 2, 81, 48, 99, 53, 58),
(109, 49, 2, 61, 54, 58, 99, 52),
(110, 50, 2, 9, 38, 36, 88, 53),
(111, 51, 2, 42, 5, 26, 31, 38),
(112, 52, 2, 8, 59, 13, 78, 27),
(113, 53, 2, 67, 78, 32, 16, 39),
(114, 54, 2, 25, 42, 85, 56, 41),
(115, 55, 2, 0, 64, 94, 62, 87),
(116, 56, 2, 25, 77, 27, 30, 52),
(117, 57, 2, 58, 84, 89, 71, 54),
(118, 58, 2, 13, 56, 92, 30, 48),
(119, 59, 2, 91, 36, 70, 97, 96),
(120, 60, 2, 14, 16, 89, 4, 25),
(121, 61, 1, 9, 79, 87, 4, 8),
(122, 62, 1, 9, 61, 95, 37, 14),
(123, 63, 1, 12, 69, 10, 25, 72),
(124, 64, 1, 55, 15, 49, 25, 66),
(125, 65, 1, 44, 14, 83, 45, 42);            
INSERT INTO "PUBLIC"."SCORE" VALUES
(126, 66, 1, 65, 92, 35, 79, 41),
(127, 67, 1, 89, 85, 4, 74, 10),
(128, 68, 1, 42, 72, 64, 32, 49),
(129, 69, 1, 12, 33, 9, 44, 99),
(130, 70, 1, 89, 78, 14, 11, 21),
(131, 71, 1, 55, 80, 5, 86, 31),
(132, 72, 1, 63, 42, 73, 16, 97),
(133, 73, 1, 25, 92, 88, 23, 78),
(134, 74, 1, 8, 11, 69, 78, 1),
(135, 75, 1, 56, 60, 88, 17, 4),
(136, 76, 1, 50, 55, 29, 95, 17),
(137, 77, 1, 97, 68, 29, 16, 66),
(138, 78, 1, 27, 4, 50, 43, 68),
(139, 79, 1, 28, 61, 22, 17, 10),
(140, 80, 1, 40, 21, 40, 67, 44),
(141, 81, 1, 84, 13, 82, 13, 92),
(142, 82, 1, 65, 75, 4, 64, 43),
(143, 83, 1, 2, 7, 84, 89, 25),
(144, 84, 1, 34, 45, 33, 25, 52),
(145, 85, 1, 37, 65, 19, 94, 29),
(146, 86, 1, 39, 40, 31, 75, 66),
(147, 87, 1, 1, 96, 63, 30, 84),
(148, 88, 1, 88, 58, 33, 10, 79),
(149, 89, 1, 65, 64, 73, 17, 16),
(150, 90, 1, 64, 81, 64, 26, 42),
(151, 61, 2, 5, 60, 53, 81, 35),
(152, 62, 2, 22, 3, 65, 82, 12),
(153, 63, 2, 85, 12, 45, 93, 43),
(154, 64, 2, 72, 66, 47, 30, 21),
(155, 65, 2, 12, 61, 70, 92, 77),
(156, 66, 2, 38, 29, 24, 72, 33),
(157, 67, 2, 74, 77, 64, 87, 50),
(158, 68, 2, 43, 1, 67, 63, 49),
(159, 69, 2, 73, 61, 2, 9, 49),
(160, 70, 2, 83, 29, 95, 67, 87),
(161, 71, 2, 7, 89, 68, 32, 50),
(162, 72, 2, 84, 63, 19, 67, 36),
(163, 73, 2, 92, 9, 10, 5, 23),
(164, 74, 2, 79, 9, 69, 33, 1),
(165, 75, 2, 65, 69, 36, 96, 85),
(166, 76, 2, 84, 41, 22, 43, 22),
(167, 77, 2, 85, 11, 58, 41, 85),
(168, 78, 2, 6, 52, 57, 69, 15),
(169, 79, 2, 55, 71, 50, 60, 24),
(170, 80, 2, 36, 33, 47, 43, 35),
(171, 81, 2, 61, 42, 31, 32, 64),
(172, 82, 2, 37, 70, 34, 33, 9),
(173, 83, 2, 53, 48, 70, 92, 21),
(174, 84, 2, 85, 30, 90, 88, 57),
(175, 85, 2, 80, 51, 57, 57, 90),
(176, 86, 2, 34, 34, 25, 15, 3),
(177, 87, 2, 6, 37, 20, 2, 92),
(178, 88, 2, 51, 48, 35, 14, 92),
(179, 89, 2, 15, 10, 4, 67, 81),
(180, 90, 2, 53, 44, 43, 51, 13),
(181, 91, 1, 11, 0, 0, 0, 0),
(182, 92, 1, 0, 0, 0, 0, 0),
(183, 93, 1, 0, 0, 0, 0, 0),
(184, 94, 1, 0, 0, 0, 0, 0),
(185, 95, 1, 0, 0, 0, 0, 0),
(186, 96, 1, 0, 0, 0, 0, 0),
(187, 97, 1, 0, 0, 0, 0, 0),
(188, 98, 1, 0, 0, 0, 0, 0),
(189, 99, 1, 0, 0, 0, 0, 0),
(190, 100, 1, 0, 0, 0, 0, 0),
(191, 101, 1, 0, 0, 0, 0, 0),
(192, 102, 1, 0, 0, 0, 0, 0),
(193, 103, 1, 0, 0, 0, 0, 0),
(194, 104, 1, 0, 0, 0, 0, 0),
(195, 105, 1, 0, 0, 0, 0, 0),
(196, 106, 1, 0, 0, 0, 0, 0),
(197, 107, 1, 0, 0, 0, 0, 0),
(198, 108, 1, 0, 0, 0, 0, 0),
(199, 109, 1, 0, 0, 0, 0, 0),
(200, 110, 1, 0, 0, 0, 0, 0),
(201, 111, 1, 0, 0, 0, 0, 0),
(202, 112, 1, 0, 0, 0, 0, 0),
(203, 113, 1, 0, 0, 0, 0, 0),
(204, 114, 1, 0, 0, 0, 0, 0),
(205, 115, 1, 0, 0, 0, 0, 0),
(206, 116, 1, 0, 0, 0, 0, 0),
(207, 117, 1, 0, 0, 0, 0, 0),
(208, 118, 1, 0, 0, 0, 0, 0),
(209, 119, 1, 0, 0, 0, 0, 0),
(210, 120, 1, 0, 0, 0, 0, 0),
(211, 91, 1, 0, 0, 0, 0, 0),
(212, 92, 1, 0, 0, 0, 0, 0),
(213, 93, 1, 0, 0, 0, 0, 0),
(214, 94, 1, 0, 0, 0, 0, 0),
(215, 95, 1, 0, 0, 0, 0, 0),
(216, 96, 1, 0, 0, 0, 0, 0),
(217, 97, 1, 0, 0, 0, 0, 0),
(218, 98, 1, 0, 0, 0, 0, 0),
(219, 99, 1, 0, 0, 0, 0, 0),
(220, 100, 1, 0, 0, 0, 0, 0),
(221, 101, 1, 0, 0, 0, 0, 0),
(222, 102, 1, 0, 0, 0, 0, 0),
(223, 103, 1, 0, 0, 0, 0, 0),
(224, 104, 1, 0, 0, 0, 0, 0),
(225, 105, 1, 0, 0, 0, 0, 0),
(226, 106, 1, 0, 0, 0, 0, 0),
(227, 107, 1, 0, 0, 0, 0, 0),
(228, 108, 1, 0, 0, 0, 0, 0),
(229, 109, 1, 0, 0, 0, 0, 0),
(230, 110, 1, 0, 0, 0, 0, 0),
(231, 111, 1, 0, 0, 0, 0, 0),
(232, 112, 1, 0, 0, 0, 0, 0),
(233, 113, 1, 0, 0, 0, 0, 0),
(234, 114, 1, 0, 0, 0, 0, 0),
(235, 115, 1, 0, 0, 0, 0, 0),
(236, 116, 1, 0, 0, 0, 0, 0),
(237, 117, 1, 0, 0, 0, 0, 0),
(238, 118, 1, 0, 0, 0, 0, 0),
(239, 119, 1, 0, 0, 0, 0, 0),
(240, 120, 1, 0, 0, 0, 0, 0);  
CREATE CACHED TABLE "PUBLIC"."STUDENT"(
    "ID" INTEGER GENERATED BY DEFAULT AS IDENTITY(START WITH 1) NOT NULL,
    "STUDENT_NAME" CHARACTER VARYING(255) NOT NULL,
    "ENTRANCE_YEAR" INTEGER NOT NULL
);  
ALTER TABLE "PUBLIC"."STUDENT" ADD CONSTRAINT "PUBLIC"."CONSTRAINT_B" PRIMARY KEY("ID");       
-- 120 +/- SELECT COUNT(*) FROM PUBLIC.STUDENT;
INSERT INTO "PUBLIC"."STUDENT" VALUES
(1, U&'2019\5e741\756a\541b', 2019),
(2, U&'2019\5e742\756a\541b', 2019),
(3, U&'2019\5e743\756a\541b', 2019),
(4, U&'2019\5e744\756a\541b', 2019),
(5, U&'2019\5e745\756a\541b', 2019),
(6, U&'2019\5e746\756a\541b', 2019),
(7, U&'2019\5e747\756a\541b', 2019),
(8, U&'2019\5e748\756a\541b', 2019),
(9, U&'2019\5e749\756a\541b', 2019),
(10, U&'2019\5e7410\756a\541b', 2019),
(11, U&'2019\5e7411\756a\541b', 2019),
(12, U&'2019\5e7412\756a\541b', 2019),
(13, U&'2019\5e7413\756a\541b', 2019),
(14, U&'2019\5e7414\756a\541b', 2019),
(15, U&'2019\5e7415\756a\541b', 2019),
(16, U&'2019\5e7416\756a\541b', 2019),
(17, U&'2019\5e7417\756a\541b', 2019),
(18, U&'2019\5e7418\756a\541b', 2019),
(19, U&'2019\5e7419\756a\541b', 2019),
(20, U&'2019\5e7420\756a\541b', 2019),
(21, U&'2019\5e7421\756a\541b', 2019),
(22, U&'2019\5e7422\756a\541b', 2019),
(23, U&'2019\5e7423\756a\541b', 2019),
(24, U&'2019\5e7424\756a\541b', 2019),
(25, U&'2019\5e7425\756a\541b', 2019),
(26, U&'2019\5e7426\756a\541b', 2019),
(27, U&'2019\5e7427\756a\541b', 2019),
(28, U&'2019\5e7428\756a\541b', 2019),
(29, U&'2019\5e7429\756a\541b', 2019),
(30, U&'2019\5e7430\756a\541b', 2019),
(31, U&'2020\5e741\756a\541b', 2020),
(32, U&'2020\5e742\756a\541b', 2020),
(33, U&'2020\5e743\756a\541b', 2020),
(34, U&'2020\5e744\756a\541b', 2020),
(35, U&'2020\5e745\756a\541b', 2020),
(36, U&'2020\5e746\756a\541b', 2020),
(37, U&'2020\5e747\756a\541b', 2020),
(38, U&'2020\5e748\756a\541b', 2020),
(39, U&'2020\5e749\756a\541b', 2020),
(40, U&'2020\5e7410\756a\541b', 2020),
(41, U&'2020\5e7411\756a\541b', 2020),
(42, U&'2020\5e7412\756a\541b', 2020),
(43, U&'2020\5e7413\756a\541b', 2020),
(44, U&'2020\5e7414\756a\541b', 2020),
(45, U&'2020\5e7415\756a\541b', 2020),
(46, U&'2020\5e7416\756a\541b', 2020),
(47, U&'2020\5e7417\756a\541b', 2020),
(48, U&'2020\5e7418\756a\541b', 2020),
(49, U&'2020\5e7419\756a\541b', 2020),
(50, U&'2020\5e7420\756a\541b', 2020),
(51, U&'2020\5e7421\756a\541b', 2020),
(52, U&'2020\5e7422\756a\541b', 2020),
(53, U&'2020\5e7423\756a\541b', 2020),
(54, U&'2020\5e7424\756a\541b', 2020),
(55, U&'2020\5e7425\756a\541b', 2020),
(56, U&'2020\5e7426\756a\541b', 2020),
(57, U&'2020\5e7427\756a\541b', 2020),
(58, U&'2020\5e7428\756a\541b', 2020),
(59, U&'2020\5e7429\756a\541b', 2020),
(60, U&'2020\5e7430\756a\541b', 2020),
(61, U&'2021\5e741\756a\541b', 2021),
(62, U&'2021\5e742\756a\541b', 2021),
(63, U&'2021\5e743\756a\541b', 2021),
(64, U&'2021\5e744\756a\541b', 2021),
(65, U&'2021\5e745\756a\541b', 2021),
(66, U&'2021\5e746\756a\541b', 2021),
(67, U&'2021\5e747\756a\541b', 2021),
(68, U&'2021\5e748\756a\541b', 2021),
(69, U&'2021\5e749\756a\541b', 2021),
(70, U&'2021\5e7411\756a\541b', 2021),
(71, U&'2021\5e7410\756a\541b', 2021),
(72, U&'2021\5e7412\756a\541b', 2021),
(73, U&'2021\5e7413\756a\541b', 2021),
(74, U&'2021\5e7414\756a\541b', 2021),
(75, U&'2021\5e7415\756a\541b', 2021),
(76, U&'2021\5e7416\756a\541b', 2021),
(77, U&'2021\5e7417\756a\541b', 2021),
(78, U&'2021\5e7418\756a\541b', 2021),
(79, U&'2021\5e7419\756a\541b', 2021),
(80, U&'2021\5e7420\756a\541b', 2021),
(81, U&'2021\5e7421\756a\541b', 2021),
(82, U&'2021\5e7422\756a\541b', 2021),
(83, U&'2021\5e7423\756a\541b', 2021),
(84, U&'2021\5e7424\756a\541b', 2021),
(85, U&'2021\5e7425\756a\541b', 2021),
(86, U&'2021\5e7426\756a\541b', 2021),
(87, U&'2021\5e7427\756a\541b', 2021),
(88, U&'2021\5e7428\756a\541b', 2021),
(89, U&'2021\5e7429\756a\541b', 2021),
(90, U&'2021\5e7430\756a\541b', 2021),
(91, U&'2022\5e741\756a\541b', 2022),
(92, U&'2022\5e742\756a\541b', 2022),
(93, U&'2022\5e743\756a\541b', 2022),
(94, U&'2022\5e744\756a\541b', 2022),
(95, U&'2022\5e745\756a\541b', 2022),
(96, U&'2022\5e746\756a\541b', 2022),
(97, U&'2022\5e747\756a\541b', 2022),
(98, U&'2022\5e748\756a\541b', 2022),
(99, U&'2022\5e749\756a\541b', 2022),
(100, U&'2022\5e7411\756a\541b', 2022),
(101, U&'2022\5e7410\756a\541b', 2022),
(102, U&'2022\5e7412\756a\541b', 2022),
(103, U&'2022\5e7413\756a\541b', 2022),
(104, U&'2022\5e7414\756a\541b', 2022),
(105, U&'2022\5e7415\756a\541b', 2022),
(106, U&'2022\5e7416\756a\541b', 2022);          
INSERT INTO "PUBLIC"."STUDENT" VALUES
(107, U&'2022\5e7417\756a\541b', 2022),
(108, U&'2022\5e7418\756a\541b', 2022),
(109, U&'2022\5e7419\756a\541b', 2022),
(110, U&'2022\5e7420\756a\541b', 2022),
(111, U&'2022\5e7421\756a\541b', 2022),
(112, U&'2022\5e7422\756a\541b', 2022),
(113, U&'2022\5e7423\756a\541b', 2022),
(114, U&'2022\5e7424\756a\541b', 2022),
(115, U&'2022\5e7425\756a\541b', 2022),
(116, U&'2022\5e7426\756a\541b', 2022),
(117, U&'2022\5e7427\756a\541b', 2022),
(118, U&'2022\5e7428\756a\541b', 2022),
(119, U&'2022\5e7429\756a\541b', 2022),
(120, U&'2022\5e7430\756a\541b', 2022);          