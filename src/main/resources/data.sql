-- subjects
INSERT INTO subjects (id, name) VALUES (1, 'Системы исксственного интелекта');
INSERT INTO subjects (id, name) VALUES (2, 'Математический анализ');
INSERT INTO subjects (id, name) VALUES (3, 'Дискретная математика');
INSERT INTO subjects (id, name) VALUES (4, 'Конструирование программного обеспечения');
-- roles
INSERT INTO roles (id, name) VALUES (1, 'teacher');
INSERT INTO roles (id, name) VALUES (2, 'student');
-- groups
INSERT INTO groups (id, name) VALUES (1, 'ПИб-1903а');
INSERT INTO groups (id, name) VALUES (2, 'ПМИб-1903в');
-- users
INSERT INTO users (id, first_name, role_id, group_id) VALUES (1, 'Иван', 1, 1);
INSERT INTO users (id, first_name, role_id, group_id) VALUES (2, 'Дмитрий', 1, 2);
INSERT INTO users (id, first_name, role_id, group_id) VALUES (3, 'Анна', 2, 1);
INSERT INTO users (id, first_name, role_id, group_id) VALUES (4, 'Владислав', 2, 2);
-- score
INSERT INTO users (user_id, subject_id, 'value') VALUES (1, 1, 3);
INSERT INTO users (user_id, subject_id, 'value') VALUES (2, 2, 4);
INSERT INTO users (user_id, subject_id, 'value') VALUES (1, 3, 5);
INSERT INTO users (user_id, subject_id, 'value') VALUES (2, 4, 5);
INSERT INTO users (user_id, subject_id, 'value') VALUES (1, 1, 4);
INSERT INTO users (user_id, subject_id, 'value') VALUES (2, 2, 3);
INSERT INTO users (user_id, subject_id, 'value') VALUES (1, 3, 4);
INSERT INTO users (user_id, subject_id, 'value') VALUES (2, 4, 5);