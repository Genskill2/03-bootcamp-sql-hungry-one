SELECT title FROM books WHERE (
	SELECT id FROM publisher WHERE name = 'PHI'
);
