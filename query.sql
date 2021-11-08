--Кількість книжок написаних кожним автором
SELECT TRIM(CONCAT(first_name, ' ', last_name)) as "author_name", COUNT(title) as "count books"
FROM book
INNER JOIN author ON book.author_id = author.author_id
GROUP BY author_name


--Кількість жанрів відповідної книжки
SELECT TRIM(genre_name), COUNT(title)
FROM book
JOIN genre ON book.genre_id = genre.genre_id
GROUP BY genre_name
ORDER BY genre_name 


--Зв'язок між кількістю книжок у конкретний період часу, причому жанром є фантастика
SELECT rank_period_name, COUNT(title)
FROM book
INNER JOIN rank_period ON book.period_id = rank_period.period_id
JOIN genre ON book.genre_id = genre.genre_id
where genre_name in ('Diary fiction', 'Science fiction')
GROUP BY rank_period_name
ORDER BY COUNT(title) desc
