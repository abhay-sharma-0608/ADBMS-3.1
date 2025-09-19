book_id INT PRIMARY KEY,
    title VARCHAR(100),
    author VARCHAR(100),
    genre VARCHAR(100),
    published_year YEAR
);

INSERT INTO LibraryBooks(book_id, title, author, genre, published_year) VALUES
(1, 'The Alchemist', 'Paulo Coelho', 'Fiction', 1988),
(2, 'Clean Code', 'Robert C. Martin', 'Programming', 2008),
(3, 'The Pragmatic Programmer', 'Andrew Hunt', 'Programming', 1999);

SELECT book_id, title, author, genre, published_year
FROM LibraryBooks
WHERE title = 'Clean Code';
