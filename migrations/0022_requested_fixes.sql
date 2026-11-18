-- Requested payment proof, USD default, and campaign/provider workflow improvements.
ALTER TABLE manual_payment_requests ADD COLUMN proof_data TEXT;
ALTER TABLE manual_payment_requests ADD COLUMN reference_id TEXT NOT NULL DEFAULT '';
UPDATE users SET currency_code='USD' WHERE currency_code='USDT' OR currency_code IS NULL OR currency_code='';
