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
INSERT INTO users (id, first_name, role_id) VALUES (1, 'Иван', 1);
INSERT INTO users (id, first_name, role_id) VALUES (2, 'Дмитрий', 1);

INSERT INTO users (id, first_name, role_id) VALUES (3, 'Анна', 2);
INSERT INTO users (id, first_name, role_id) VALUES (4, 'Владислав', 2);
-- group_user
INSERT INTO group_user(group_id, user_id) VALUES (1, 3);
INSERT INTO group_user(group_id, user_id) VALUES (1, 4);
-- group_subject
INSERT INTO group_subject(group_id, subject_id) VALUES (1, 1);
INSERT INTO group_subject(group_id, subject_id) VALUES (1, 2);
-- subject_user
INSERT INTO subject_user(subject_id, user_id) VALUES (1, 1);
INSERT INTO subject_user(subject_id, user_id) VALUES (2, 1);
-- score
INSERT INTO scores (id, user_id, subject_id, "value") VALUES (1, 3, 1, 3);
INSERT INTO scores (id, user_id, subject_id, "value") VALUES (2, 3, 2, 4);
INSERT INTO scores (id, user_id, subject_id, "value") VALUES (3, 3, 3, 5);
INSERT INTO scores (id, user_id, subject_id, "value") VALUES (4, 3, 4, 5);

INSERT INTO scores (id, user_id, subject_id, "value") VALUES (5, 4, 1, 4);
INSERT INTO scores (id, user_id, subject_id, "value") VALUES (6, 4, 2, 3);
INSERT INTO scores (id, user_id, subject_id, "value") VALUES (7, 4, 3, 4);
INSERT INTO scores (id, user_id, subject_id, "value") VALUES (8, 4, 4, 5);