--User table
CREATE TABLE users(
    user_id INTEGER PRIMARY KEY AUTOINCREMENT,
    username VARCHAR(255) UNIQUE NOT NULL,
    password_hash TEXT NOT NULL,
    role_id INTEGER NOT NULL,
    FOREIGN KEY (role_id) REFERENCES roles(role_id),
);

--Role table
CREATE TABLE roles(
    role_id INTEGER PRIMARY KEY AUTOINCREMENT,
    role_name VARCHAR(255) UNIQUE NOT NULL,
);

--Credential Vault table
CREATE TABLE credential_vault(
    credential_id INTEGER PRIMARY KEY AUTOINCREMENT,
    service_name VARCHAR(255) NOT NULL,
    username VARCHAR(255) NOT NULL,
    password_hash TEXT NOT NULL,
    owner_id INTEGER NOT NULL,
    FOREIGN KEY (owner_id) REFERENCES users(user_id),
)