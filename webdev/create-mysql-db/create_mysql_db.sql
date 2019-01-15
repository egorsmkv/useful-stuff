SET @DATABASENAME = "online_stores";
SET @USERPASSWORD = "EI_D$eitxvf9ihH.0Mf";

-- ======== PERFORM =========

-- Create Database
SET @CREATE_DB = concat("CREATE DATABASE ",@DATABASENAME," character set utf8mb4 collate utf8mb4_unicode_ci");
PREPARE statement FROM @CREATE_DB;
EXECUTE statement;

-- Create User
SET @CREATE_USER = concat("CREATE USER '",@DATABASENAME,"' IDENTIFIED BY '",@USERPASSWORD,"'");
PREPARE statement FROM @CREATE_USER;
EXECUTE statement;

-- Grant Permissions
SET @GRANT_PERMISSIONS = concat("GRANT ALL PRIVILEGES ON ",@DATABASENAME,".* to '",@DATABASENAME,"'");
PREPARE statement FROM @GRANT_PERMISSIONS;
EXECUTE statement;

-- ====== END PERFORM =======

 
