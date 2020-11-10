DELETE FROM amx_user WHERE email = 'test@example.com';

INSERT INTO amx_user (
	USERNAME, 
	EMAIL, 
	PASSWORD, 
	OPCO_ID)
VALUES (
	'test', 
	'test@example.com', 
	SHA2('password', 256), 
	36);
