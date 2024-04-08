-- create a dataset of 4 tables,
-- author book adaptation bookreview 

-- autor -authorid,name,birthyear,deathyear,
-- book - bookid,authorid,title,publishyear,publishinghouse,rating
-- adaptation - bookid,type,title,releaseyear,rating
-- bookreview - bookid,review,author,

-- q- list all books and their authors - booktitle,publishyear,authorname
-- q- list authors and book published after 2005
-- q- show the title of each book and title of adaptation and date of release -all books 
-- q- join the bookreview and booktable using right join show title of book and corresponding review and name of reviews author consider all books even though they weren't reviewed
-- q- using full join display the title of each book along with name of author


------------------------------------------------------------------------------------------------------------------------------------------------------


-- select book.title, book.publishyear,author.name from book join author on author.authorid = book.authorid

-- select book.title, author.name,book.publishyear from book left join author on author.authorid = book.authorid where publishyear>2005;


-- select book.title, adaptation.title,adaptation.releaseyear from book left join adaptation on adaptation.bookid= book.bookid;


-- select book.title,bookreview.review, bookreview.author from bookreview right join book on book.bookid= bookreview.bookid;


-- select book.title,author.name from book full join author on author.authorid=book.authorid;




