SELECT * FROM ap.terms
-- ex1
INSERT INTO ap.terms(terms_id, terms_description, terms_due_days)
	VALUES (6, 'Net due 120 days', 120);

-- ex2
UPDATE ap.terms
SET terms_description = 'Net due 125 days',
	terms_due_days = 125
WHERE terms_id = 6;

-- ex3
DELETE FROM ap.terms
WHERE terms_id = 6;	

-- ex4
INSERT INTO ap.invoices VALUES 
	(NULL, 32, 'AX-014-027', '2001-8-1', 434.58, 0.00, 0.00, 2, '2011-8-31', NULL);
    
-- ex5
INSERT INTO ap.invoice_line_items(invoice_id, account_number, line_item_amount, line_item_description)
	(SELECT invoice_id FROM ap.invoices WHERE invoice_id = '115',
		1, 160, '180.23', 'Hard Drive'), 
	(SELECT invoice_id FROM ap.invoices WHERE invoice_id = '115',
		2, 527, '254.35', 'Exhange Server Update');
        
-- ex6
UPDATE ap.invoices
SET credit_total = '0.10'*invoice_total, payment_total = invoice_total - credit_total
WHERE invoice_id = '115';

-- ex7
UPDATE ap.vendors
SET default_account_number = '403'
WHERE vendor_id = '44';

        

	
