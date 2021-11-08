import psycopg2

username = 'Chernysh_Alina'
password = '111'
database = 'Chernysh_Alina_DB'
host = 'localhost'
port = '5432'


query_1 = '''
SELECT TRIM(CONCAT(first_name, ' ', last_name)) as "author_name", COUNT(title) as "count books"
FROM book
INNER JOIN author ON book.author_id = author.author_id
GROUP BY author_name
'''

query_2 = '''
SELECT TRIM(genre_name), COUNT(title)
FROM book
JOIN genre ON book.genre_id = genre.genre_id
GROUP BY genre_name
ORDER BY genre_name
'''

query_3 = '''
SELECT rank_period_name, COUNT(title)
FROM book
INNER JOIN rank_period ON book.period_id = rank_period.period_id
JOIN genre ON book.genre_id = genre.genre_id
where genre_name in ('Diary fiction', 'Science fiction')
GROUP BY rank_period_name
ORDER BY COUNT(title) desc
'''

con = psycopg2.connect(user=username, password=password, dbname=database, host=host, port=port)


with con:

    cur = con.cursor()

    print('1.  \n')
    cur.execute(query_1)
    for row in cur:
        print(row)

    print('\n2.  \n')
    cur.execute(query_2)
    for row in cur:
        print(row)

    print('\n3.  \n')
    cur.execute(query_3)
    for row in cur:
        print(row)
