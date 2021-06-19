SELECT name FROM subjects WHERE id IN (
	SELECT subject FROM books_subjects WHERE book IN (
		SELECT id FROM books WHERE title = 'Atomic Habits'
	)
);
