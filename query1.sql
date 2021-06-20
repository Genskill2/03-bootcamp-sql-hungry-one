SELECT title FROM books WHERE publisher IN (
	SELECT id FROM publisher WHERE name = 'PHI'
);
