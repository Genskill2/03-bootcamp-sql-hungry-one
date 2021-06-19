SELECT b.title,p.name FROM books b, publisher p 
WHERE p.id=b.publisher AND p.country = 'UK';
