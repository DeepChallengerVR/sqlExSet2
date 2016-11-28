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

-- ex4
INSERT INTO invoices VALUES 
	(NULL, 32, 'AX-014-027', '8/1/2011', 434.58, 0.00, 0.00, 2, '8/31/2011', NULL);
    
-- ex5
INSERT INTO invoice_line_items(invoice_id, account_number, line_item_amount, line_item_description)
	(SELECT invoice_id FROM invoices WHERE invoice_number = 'AX-014-027',
		1, 160, 180.23, 'Hard Drive'), 
	(SELECT invoice_id FROM invoices WHERE invoice_number = 'AX-014-027',
		2, 527, 254.35, 'Exhange Server Update');
        
-- ex6
UPDATE invoices
SET (credit_total = .10*invoice_total, payment_total = invoice_total - credit_total)
WHERE invoice_number = 'AX-014-027';

-- ex7
UPDATE vendors
SET default_account_number = 403
WHERE vender_id = 44;

        

	
