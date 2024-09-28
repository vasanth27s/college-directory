CREATE TABLE users (
    id SERIAL PRIMARY KEY,
    username VARCHAR(50) UNIQUE NOT NULL,
    password VARCHAR(255) NOT NULL,
    role VARCHAR(20) NOT NULL
);

CREATE TABLE students (
    user_id INTEGER PRIMARY KEY REFERENCES users(id),
    department_id INTEGER NOT NULL,
    year VARCHAR(50)
);
