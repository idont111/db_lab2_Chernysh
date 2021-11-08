INSERT INTO author (author_id, first_name, last_name)
VALUES 
('101b', 'Jeff', 'Kinney'),
('102b', 'Suzanne', 'Collins'),
('103b', 'Elie', 'Wiesel'),
('104b', 'Charlaine', 'Harris'),
('105d', 'Walter', 'Isaacson'),
('106b', 'Michelle', 'Obama'),
('107d', 'Rupi', 'Kaur'),
('108d', 'Andy', 'Weir'),
('109c', 'James', 'Dashner');

INSERT INTO genre (genre_id, genre_name)
VALUES 
('01', 'Memoir'),
('02', 'Diary fiction'),
('03', 'Science fiction'),
('04', 'Fantasy Fiction'),
('05', 'Drama'),
('06', 'Poetry'),
('07', 'Young-adult fiction');

INSERT INTO rank_period(period_id, rank_period_name)
VALUES 
('11n', to_date('2019-11-11', 'yyyy-mm-dd')),
('12d', to_date('2009-12-12', 'yyyy-mm-dd')),
('01j', to_date('2018-01-01', 'yyyy-mm-dd')),
('02f', to_date('2012-02-02', 'yyyy-mm-dd'));

INSERT INTO book (book_id, title, author_id, genre_id, period_id )
VALUES 
(1, 'Becoming', '106b', '01', '11n'),
(2, 'Dog Days (Diary of a Wimpy Kid)', '101b','02', '12d'),
(3, 'Double Down (Diary of a Wimpy Kid)','101b', '02', '01j'),
(4, 'Old School (Diary of a Wimpy Kid )', '101b', '02', '02f'),
(5, 'Catching Fire (The Hunger Games)', '102b', '03', '11n'),
(6, 'Mockingjay (The Hunger Games)', '102b', '03', '01j'),
(7, 'Night (Night)', '103b', '01', '02f'),
(8, 'Sookie Stackhouse', '104b', '04', '12d'),
(9, 'Steve Jobs', '105d', '05', '02f'),
(10, 'Milk and Honey','107d', '06', '11n'),
(11, 'Milk and Vine','107d', '06', '01j'),
(12, 'The Martian', '108d', '03', '01j'),
(13, 'The Maze Runner','109c','07', '02f');
