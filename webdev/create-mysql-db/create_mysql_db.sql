SET @DATABASENAME = "";
SET @USERNAME = "";
SET @USERPASSWORD = "";

-- Create Database
SET @CREATE_DB = concat("CREATE DATABASE ",@DATABASENAME," character set utf8mb4 collate utf8mb4_unicode_ci");
PREPARE statement FROM @CREATE_DB;
EXECUTE statement;

-- Create User
SET @CREATE_USER = concat("CREATE USER '",@USERNAME,"' IDENTIFIED BY '",@USERPASSWORD,"'");
PREPARE statement FROM @CREATE_USER;
EXECUTE statement;

-- Grant Permissions
SET @GRANT_PERMISSIONS = concat("GRANT ALL PRIVILEGES ON ",@DATABASENAME,".* TO '",@USERNAME,"'");
PREPARE statement FROM @GRANT_PERMISSIONS;
EXECUTE statement;

