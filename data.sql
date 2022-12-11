
insert into author(author_name) values('Bob'), ('Jane'), ('Jill');

insert into patron(name) values('Bill'), ('Kim');

insert into book(title, patron_id) values('Snails!', 2), ('Astronomy and You', 1), ('All about Fruit', 2);

insert into bookauthors(author_id, book_id) values(1,1), (2,1), (3,1), (1,2), (3,3);