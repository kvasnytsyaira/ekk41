use bookstore

select title, price
from books
order by price desc

select title, price
from books
where title = 'Діти капітана Гранта'

select title, price 
from books 
where price = (select max(price) 
from books)

select books.title, pub_house.name
from books
inner join pub_house
on books.pub_house_id = pub_house.id
order by pub_house.name

select books.title, author.first_name, author.last_name, genre.name
from books
inner join author
on books.author_id= author.id
inner join genre
on books.genre_id = genre.id
order by 4