CREATE DATABASE  IF NOT EXISTS tag;
CREATE USER 'rrc_user' IDENTIFIED WITH mysql_native_password BY 'rrc_password';
GRANT ALL PRIVILEGES ON tag.* TO 'rrc_user'; 

