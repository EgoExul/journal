-- subjects
INSERT INTO subjects (id, name) VALUES (1, 'Системы исксственного интелекта');
INSERT INTO subjects (id, name) VALUES (2, 'Математический анализ');
INSERT INTO subjects (id, name) VALUES (3, 'Дискретная математика');
INSERT INTO subjects (id, name) VALUES (4, 'Конструирование программного обеспечения');
-- controls
INSERT INTO controls(id, subject_id, type) VALUES (1, 1, 'TEST');
INSERT INTO controls(id, subject_id, type) VALUES (2, 1, 'EXAM');
INSERT INTO controls(id, subject_id, type) VALUES (3, 1, 'ATTENDANCE');
-- groups
INSERT INTO groups (id, name) VALUES (1, 'ПИб-1903а');
INSERT INTO groups (id, name) VALUES (2, 'ПМИб-1903в');
-- users
INSERT INTO users (id, first_name, role) VALUES (1, 'Иван', 'TEACHER');
INSERT INTO users (id, first_name, role) VALUES (2, 'Дмитрий', 'TEACHER');

INSERT INTO users (id, first_name, role) VALUES (3, 'Анна', 'STUDENT');
INSERT INTO users (id, first_name, role) VALUES (4, 'Владислав', 'STUDENT');
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
INSERT INTO scores (id, user_id, subject_id, "value", control_id) VALUES (1, 3, 1, 3, 1);
INSERT INTO scores (id, user_id, subject_id, "value", control_id) VALUES (2, 3, 1, 4, 2);
INSERT INTO scores (id, user_id, subject_id, "value", control_id) VALUES (3, 3, 1, 5, 3);

INSERT INTO scores (id, user_id, subject_id, "value") VALUES (5, 4, 1, 4);
INSERT INTO scores (id, user_id, subject_id, "value") VALUES (6, 4, 2, 3);
INSERT INTO scores (id, user_id, subject_id, "value") VALUES (7, 4, 3, 4);
INSERT INTO scores (id, user_id, subject_id, "value") VALUES (8, 4, 4, 5);