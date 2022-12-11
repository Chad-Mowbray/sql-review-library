-- Get all the patrons
select * from patron;


--Get all the books
select * from book;

-- all the checked out book titles
select title from book where patron_id is not null;

-- Count of non-checked out books
select count(*) from book where patron_id is null;

-- Names of all the authors of books that Kim has checked out
select author_name from (
  select distinct author_name 
    from patron 
    join book
      on patron.id = book.patron_id
    join bookauthors
      on book.id = bookauthors.book_id
    join author 
      on author.id = bookauthors.author_id
    where patron.name = 'Kim'
) as x 
where author_name = 'Bob'

