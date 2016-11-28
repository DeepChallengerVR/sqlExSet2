SELECT * FROM ap.terms
-- ex1
INSERT INTO terms(terms_id, terms_description, terms_due_days)
	VALUES (6, 'Net due 120 days', 120);

-- ex2
UPDATE terms
SET terms_description = 'Net due 125 days',
	terms_due_days = 125
WHERE terms_id = 6;

-- ex3
DELETE FROM terms
WHERE terms_id = 6;	

