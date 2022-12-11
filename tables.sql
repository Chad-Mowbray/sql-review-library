drop table if exists patron cascade;
drop table if exists author cascade;
drop table if exists book cascade;
drop table if exists bookauthors cascade;


create table patron(
  id serial primary key,
  name varchar
);

create table author(
  id serial primary key,
  author_name varchar
);

create table book(
  id serial primary key,
  title varchar,
  patron_id integer,
  foreign key (patron_id) references patron(id)
);

create table bookauthors(
  id serial primary key,
  author_id integer,
  book_id integer,
  foreign key (author_id) REFERENCES author(id),
  foreign key (book_id) REFERENCES book(id)
);