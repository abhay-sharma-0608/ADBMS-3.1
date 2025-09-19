CREATE INDEX idx_title ON LibraryBooks(title);

EXPLAIN 
SELECT *
FROM LibraryBooks
WHERE title = 'Clean Code';
