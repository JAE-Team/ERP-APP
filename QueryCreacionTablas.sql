/*Este archivo se ejecuta en SSMS
Nos debemos conectar a la conexion que creamos al inicio de
la UF2 con nuestro nombre
La mia por ejemplo se llama A80167811050681\AMS2_AFG*/

IF OBJECT_ID('users', 'U') IS NOT NULL
    DROP TABLE users;

IF OBJECT_ID('transactions', 'U') IS NOT NULL
    DROP TABLE transactions;

CREATE TABLE users(
  id INT NOT NULL IDENTITY(1,1),
  userId VARCHAR(255),
  userPassword VARCHAR(255),
  userName VARCHAR(255),
  userSurname VARCHAR(255),
  userEmail VARCHAR(255),
  userBalance FLOAT,
  userStatus VARCHAR(50) DEFAULT 'active',
  lastStatusChange DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
  sessionToken VARCHAR(255),
  PRIMARY KEY(id)
);

CREATE TABLE transactions(
token VARCHAR(255) PRIMARY KEY,
userOrigin VARCHAR(255),
userDestiny VARCHAR(255),
ammount FLOAT,
accepted VARCHAR(50) CHECK (accepted IN ('waitingAcceptance', 'acceptedByUser', 'rejectedByUser', 'insufficient balance', 'otherError')),
timeSetup DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
timeStart DATETIME,
timeFinish DATETIME
);

INSERT INTO users (userId, userPassword, userName, userSurname, userEmail, userBalance)
VALUES ('+34600700800', 'contrasenya1', 'John', 'Doe', 'johndoe@example.com', 100.0);

INSERT INTO users (userId, userPassword, userName, userSurname, userEmail, userBalance)
VALUES ('+34600450500', '1q2w3e4r', 'Jack', 'Sparrow', 'jsparrow@pirate.com', 100.0);

INSERT INTO users (userId, userPassword, userName, userSurname, userEmail, userBalance)
VALUES ('+34200300', 'nopassword', 'Obi Wan', 'Kenobi', 'obiwKenobi@jedi.com', 100.0);
