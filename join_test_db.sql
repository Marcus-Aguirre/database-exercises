USE join_test_db;

INSERT INTO roles (name) VALUES ('admin');
INSERT INTO roles (name) VALUES ('author');
INSERT INTO roles (name) VALUES ('reviewer');
INSERT INTO roles (name) VALUES ('commenter');

INSERT INTO users (name, email, role_id) VALUES
('billy', 'bob@example.com', 2),
('joel', 'joe@example.com', 2),
('silly', 'sally@example.com', 2),
('mikey ', 'mike@example.com', null);