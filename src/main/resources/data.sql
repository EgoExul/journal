-- subjects
INSERT INTO subjects (id, name) VALUES (1, 'Системы искусственного интеллекта');
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
INSERT INTO users (id, first_name, middle_name, last_name, email, password, role) VALUES (1, 'Иван', 'Сергеевич', 'Волынский', 'Ivan@mail.com', 111, 'TEACHER');
INSERT INTO users (id, first_name, middle_name, last_name, email, password, role) VALUES (2, 'Дмитрий', 'Анатольевич',  'Середнёв', 'Dmitry@gmail.ru', 112, 'TEACHER');

INSERT INTO users (id, first_name, middle_name, last_name, email, password, role) VALUES (3, 'Анна', 'Ивановна', 'Морозова', 'Anna@yandex.ru', 113, 'STUDENT');
INSERT INTO users (id, first_name, middle_name, last_name, email, password, role) VALUES (4, 'Владислав', 'Николаевич', 'Путов', 'Vladislav@mail.com', 114, 'STUDENT');
-- group_user
INSERT INTO group_user(group_id, user_id) VALUES (1, 3);
INSERT INTO group_user(group_id, user_id) VALUES (2, 4);

INSERT INTO group_user(group_id, user_id) VALUES (1, 1);
INSERT INTO group_user(group_id, user_id) VALUES (2, 1);
INSERT INTO group_user(group_id, user_id) VALUES (1, 2);
INSERT INTO group_user(group_id, user_id) VALUES (2, 2);
-- group_subject
INSERT INTO group_subject(group_id, subject_id) VALUES (1, 1);
INSERT INTO group_subject(group_id, subject_id) VALUES (1, 2);
INSERT INTO group_subject(group_id, subject_id) VALUES (1, 3);
INSERT INTO group_subject(group_id, subject_id) VALUES (1, 4);
INSERT INTO group_subject(group_id, subject_id) VALUES (2, 1);
INSERT INTO group_subject(group_id, subject_id) VALUES (2, 2);
INSERT INTO group_subject(group_id, subject_id) VALUES (2, 3);
INSERT INTO group_subject(group_id, subject_id) VALUES (2, 4);
-- subject_user
INSERT INTO subject_user(subject_id, user_id) VALUES (1, 1);
INSERT INTO subject_user(subject_id, user_id) VALUES (2, 1);
INSERT INTO subject_user(subject_id, user_id) VALUES (3, 2);
INSERT INTO subject_user(subject_id, user_id) VALUES (4, 2);

INSERT INTO subject_user(subject_id, user_id) VALUES (1, 3);
INSERT INTO subject_user(subject_id, user_id) VALUES (2, 3);
INSERT INTO subject_user(subject_id, user_id) VALUES (3, 3);
INSERT INTO subject_user(subject_id, user_id) VALUES (4, 3);
INSERT INTO subject_user(subject_id, user_id) VALUES (1, 4);
INSERT INTO subject_user(subject_id, user_id) VALUES (2, 4);
INSERT INTO subject_user(subject_id, user_id) VALUES (3, 4);
INSERT INTO subject_user(subject_id, user_id) VALUES (4, 4);
-- score
INSERT INTO scores (id, user_id, subject_id, "value", control_id) VALUES (1, 3, 1, 3, 1);
INSERT INTO scores (id, user_id, subject_id, "value", control_id) VALUES (2, 3, 1, 4, 1);
INSERT INTO scores (id, user_id, subject_id, "value", control_id) VALUES (3, 3, 1, 5, 1);
INSERT INTO scores (id, user_id, subject_id, "value", control_id) VALUES (4, 3, 1, 3, 2);
INSERT INTO scores (id, user_id, subject_id, "value", control_id) VALUES (5, 3, 1, 4, 2);
INSERT INTO scores (id, user_id, subject_id, "value", control_id) VALUES (6, 3, 1, 5, 3);
INSERT INTO scores (id, user_id, subject_id, "value", control_id) VALUES (7, 3, 1, 4, 3);

INSERT INTO scores (id, user_id, subject_id, "value", control_id) VALUES (8, 3, 2, 3, 1);
INSERT INTO scores (id, user_id, subject_id, "value", control_id) VALUES (9, 3, 2, 4, 1);
INSERT INTO scores (id, user_id, subject_id, "value", control_id) VALUES (10, 3, 2, 5, 1);
INSERT INTO scores (id, user_id, subject_id, "value", control_id) VALUES (11, 3, 2, 3, 2);
INSERT INTO scores (id, user_id, subject_id, "value", control_id) VALUES (12, 3, 2, 3, 2);
INSERT INTO scores (id, user_id, subject_id, "value", control_id) VALUES (13, 3, 2, 3, 3);
INSERT INTO scores (id, user_id, subject_id, "value", control_id) VALUES (14, 3, 2, 3, 3);

INSERT INTO scores (id, user_id, subject_id, "value", control_id) VALUES (15, 3, 3, 3, 1);
INSERT INTO scores (id, user_id, subject_id, "value", control_id) VALUES (16, 3, 3, 4, 1);
INSERT INTO scores (id, user_id, subject_id, "value", control_id) VALUES (17, 3, 3, 5, 1);
INSERT INTO scores (id, user_id, subject_id, "value", control_id) VALUES (18, 3, 3, 4, 2);
INSERT INTO scores (id, user_id, subject_id, "value", control_id) VALUES (19, 3, 3, 4, 2);
INSERT INTO scores (id, user_id, subject_id, "value", control_id) VALUES (20, 3, 3, 4, 3);
INSERT INTO scores (id, user_id, subject_id, "value", control_id) VALUES (21, 3, 3, 4, 3);

INSERT INTO scores (id, user_id, subject_id, "value", control_id) VALUES (22, 3, 4, 3, 1);
INSERT INTO scores (id, user_id, subject_id, "value", control_id) VALUES (23, 3, 4, 4, 1);
INSERT INTO scores (id, user_id, subject_id, "value", control_id) VALUES (24, 3, 4, 5, 1);
INSERT INTO scores (id, user_id, subject_id, "value", control_id) VALUES (25, 3, 4, 5, 2);
INSERT INTO scores (id, user_id, subject_id, "value", control_id) VALUES (26, 3, 4, 5, 2);
INSERT INTO scores (id, user_id, subject_id, "value", control_id) VALUES (27, 3, 4, 5, 3);
INSERT INTO scores (id, user_id, subject_id, "value", control_id) VALUES (28, 3, 4, 5, 3);