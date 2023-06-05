-- subjects
INSERT INTO subjects (id, name) VALUES (1, 'Системы искусственного интеллекта');
INSERT INTO subjects (id, name) VALUES (2, 'Математический анализ');
INSERT INTO subjects (id, name) VALUES (3, 'Дискретная математика');
INSERT INTO subjects (id, name) VALUES (4, 'Конструирование программного обеспечения');
-- controls
INSERT INTO controls(id, subject_id, due_date, type) VALUES (1, 1, '2023-03-08T01:00:01.000Z', 'TEST');
INSERT INTO controls(id, subject_id, due_date, type) VALUES (2, 1, '2023-04-08T01:00:01.000Z', 'EXAM');
INSERT INTO controls(id, subject_id, due_date, type) VALUES (3, 1, '2023-05-08T01:00:01.000Z', 'ATTENDANCE');

INSERT INTO controls(id, subject_id, due_date, type) VALUES (4, 2, '2023-10-08T01:00:01.000Z', 'LAB');
INSERT INTO controls(id, subject_id, due_date, type) VALUES (5, 2, '2023-11-13T01:00:01.000Z', 'EXAM');
INSERT INTO controls(id, subject_id, due_date, type) VALUES (6, 2, '2023-12-25T01:00:01.000Z', 'ATTENDANCE');

INSERT INTO controls(id, subject_id, due_date, type) VALUES (7, 3, '2023-03-08T01:00:01.000Z', 'TEST');
INSERT INTO controls(id, subject_id, due_date, type) VALUES (8, 3, '2023-04-08T01:00:01.000Z', 'EXAM');
INSERT INTO controls(id, subject_id, due_date, type) VALUES (9, 3, '2023-05-08T01:00:01.000Z', 'ATTENDANCE');

INSERT INTO controls(id, subject_id, due_date, type) VALUES (10, 4, '2023-10-08T01:00:01.000Z', 'LAB');
INSERT INTO controls(id, subject_id, due_date, type) VALUES (11, 4, '2023-11-13T01:00:01.000Z', 'EXAM');
INSERT INTO controls(id, subject_id, due_date, type) VALUES (12, 4, '2023-12-25T01:00:01.000Z', 'ATTENDANCE');
-- groups
INSERT INTO groups (id, name) VALUES (1, 'ПИб-1903а');
INSERT INTO groups (id, name) VALUES (2, 'ПМИб-1903в');
-- users
INSERT INTO users (id, first_name, middle_name, last_name, email, password, role)
VALUES (1, 'Иван', 'Сергеевич', 'Волынский', 'Ivan@mail.com', 111, 'TEACHER');
INSERT INTO users (id, first_name, middle_name, last_name, email, password, role)
VALUES (2, 'Дмитрий', 'Анатольевич',  'Середнёв', 'Dmitry@gmail.ru', 112, 'TEACHER');

INSERT INTO users (id, first_name, middle_name, last_name, email, password, role)
VALUES (3, 'Анна', 'Ивановна', 'Морозова', 'Anna@yandex.ru', 113, 'STUDENT');
INSERT INTO users (id, first_name, middle_name, last_name, email, password, role)
VALUES (4, 'Владислав', 'Николаевич', 'Путов', 'Vladislav@mail.com', 114, 'STUDENT');
INSERT INTO users (id, first_name, middle_name, last_name, email, password, role)
VALUES (5, 'Никита', 'Иванович', 'Волошин', 'Nikita@yandex.ru', 115, 'STUDENT');
INSERT INTO users (id, first_name, middle_name, last_name, email, password, role)
VALUES (6, 'Виктория', 'Эмировна', 'Никитина', 'Victoria@mail.com', 116, 'STUDENT');
-- group_user
INSERT INTO group_user(group_id, user_id) VALUES (1, 1);
INSERT INTO group_user(group_id, user_id) VALUES (1, 2);
INSERT INTO group_user(group_id, user_id) VALUES (1, 3);
INSERT INTO group_user(group_id, user_id) VALUES (1, 5);

INSERT INTO group_user(group_id, user_id) VALUES (2, 1);
INSERT INTO group_user(group_id, user_id) VALUES (2, 2);
INSERT INTO group_user(group_id, user_id) VALUES (2, 4);
INSERT INTO group_user(group_id, user_id) VALUES (2, 6);
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
-- score
INSERT INTO scores (id, user_id, subject_id, "value", control_id, pass_date) VALUES (1, 3, 1, 20, 1, '2023-03-01T01:00:01.000Z');
INSERT INTO scores (id, user_id, subject_id, "value", control_id) VALUES (2, 3, 1, null, 2);
INSERT INTO scores (id, user_id, subject_id, "value", control_id) VALUES (3, 3, 1, null, 3);

INSERT INTO scores (id, user_id, subject_id, "value", control_id, pass_date) VALUES (4, 3, 2, 30, 4, '2023-10-08T01:00:01.000Z');
INSERT INTO scores (id, user_id, subject_id, "value", control_id, pass_date) VALUES (5, 3, 2, 40, 5, '2023-11-08T01:00:01.000Z');
INSERT INTO scores (id, user_id, subject_id, "value", control_id) VALUES (6, 3, 2, null, 6);

INSERT INTO scores (id, user_id, subject_id, "value", control_id) VALUES (7, 3, 3, null, 7);
INSERT INTO scores (id, user_id, subject_id, "value", control_id, pass_date) VALUES (8, 3, 3, 70, 8, '2023-05-12T01:00:01.000Z');
INSERT INTO scores (id, user_id, subject_id, "value", control_id) VALUES (9, 3, 3, null, 9);

INSERT INTO scores (id, user_id, subject_id, "value", control_id, pass_date) VALUES (10, 3, 4, 55, 10, '2023-10-13T01:00:01.000Z');
INSERT INTO scores (id, user_id, subject_id, "value", control_id) VALUES (11, 3, 4, null, 11);
INSERT INTO scores (id, user_id, subject_id, "value", control_id) VALUES (12, 3, 4, null, 12);


INSERT INTO scores (id, user_id, subject_id, "value", control_id, pass_date) VALUES (13, 4, 1, 30, 1, '2023-03-15T01:00:01.000Z');
INSERT INTO scores (id, user_id, subject_id, "value", control_id) VALUES (14, 4, 1, null, 2);
INSERT INTO scores (id, user_id, subject_id, "value", control_id, pass_date) VALUES (15, 4, 1, 40, 3, '2023-05-12T01:00:01.000Z');

INSERT INTO scores (id, user_id, subject_id, "value", control_id) VALUES (16, 4, 2, null, 4);
INSERT INTO scores (id, user_id, subject_id, "value", control_id, pass_date) VALUES (17, 4, 2, 20, 5, '2023-11-11T01:00:01.000Z');
INSERT INTO scores (id, user_id, subject_id, "value", control_id, pass_date) VALUES (18, 4, 2, 60, 6, '2023-12-16T01:00:01.000Z');

INSERT INTO scores (id, user_id, subject_id, "value", control_id, pass_date) VALUES (19, 4, 3, 10, 7, '2023-03-10T01:00:01.000Z');
INSERT INTO scores (id, user_id, subject_id, "value", control_id, pass_date) VALUES (20, 4, 3, 23, 8, '2023-04-22T01:00:01.000Z');
INSERT INTO scores (id, user_id, subject_id, "value", control_id) VALUES (21, 4, 3, null, 9);

INSERT INTO scores (id, user_id, subject_id, "value", control_id, pass_date) VALUES (22, 4, 4, 12, 10, '2023-10-12T01:00:01.000Z');
INSERT INTO scores (id, user_id, subject_id, "value", control_id, pass_date) VALUES (23, 4, 4, 64, 11, '2023-11-01T01:00:01.000Z');
INSERT INTO scores (id, user_id, subject_id, "value", control_id) VALUES (24, 4, 4, null, 12);


INSERT INTO scores (id, user_id, subject_id, "value", control_id, pass_date) VALUES (25, 5, 1, 50, 1, '2023-03-01T01:00:01.000Z');
INSERT INTO scores (id, user_id, subject_id, "value", control_id) VALUES (26, 5, 1, null, 2);
INSERT INTO scores (id, user_id, subject_id, "value", control_id) VALUES (27, 5, 1, null, 3);

INSERT INTO scores (id, user_id, subject_id, "value", control_id, pass_date) VALUES (28, 5, 2, 37, 4, '2023-10-08T01:00:01.000Z');
INSERT INTO scores (id, user_id, subject_id, "value", control_id, pass_date) VALUES (29, 5, 2, 84, 5, '2023-11-08T01:00:01.000Z');
INSERT INTO scores (id, user_id, subject_id, "value", control_id) VALUES (30, 5, 2, null, 6);

INSERT INTO scores (id, user_id, subject_id, "value", control_id) VALUES (31, 5, 3, null, 7);
INSERT INTO scores (id, user_id, subject_id, "value", control_id, pass_date) VALUES (32, 5, 3, 52, 8, '2023-05-12T01:00:01.000Z');
INSERT INTO scores (id, user_id, subject_id, "value", control_id) VALUES (33, 5, 3, null, 9);

INSERT INTO scores (id, user_id, subject_id, "value", control_id, pass_date) VALUES (34, 5, 4, 33, 10, '2023-10-13T01:00:01.000Z');
INSERT INTO scores (id, user_id, subject_id, "value", control_id) VALUES (35, 5, 4, null, 11);
INSERT INTO scores (id, user_id, subject_id, "value", control_id) VALUES (36, 5, 4, null, 12);


INSERT INTO scores (id, user_id, subject_id, "value", control_id, pass_date) VALUES (37, 6, 1, 65, 1, '2023-03-15T01:00:01.000Z');
INSERT INTO scores (id, user_id, subject_id, "value", control_id) VALUES (38, 6, 1, null, 2);
INSERT INTO scores (id, user_id, subject_id, "value", control_id, pass_date) VALUES (39, 6, 1, 20, 3, '2023-05-12T01:00:01.000Z');

INSERT INTO scores (id, user_id, subject_id, "value", control_id) VALUES (40, 6, 2, null, 4);
INSERT INTO scores (id, user_id, subject_id, "value", control_id, pass_date) VALUES (41, 6, 2, 55, 5, '2023-11-11T01:00:01.000Z');
INSERT INTO scores (id, user_id, subject_id, "value", control_id, pass_date) VALUES (42, 6, 2, 60, 6, '2023-12-16T01:00:01.000Z');

INSERT INTO scores (id, user_id, subject_id, "value", control_id, pass_date) VALUES (43, 6, 3, 25, 7, '2023-03-10T01:00:01.000Z');
INSERT INTO scores (id, user_id, subject_id, "value", control_id, pass_date) VALUES (44, 6, 3, 45, 8, '2023-04-22T01:00:01.000Z');
INSERT INTO scores (id, user_id, subject_id, "value", control_id) VALUES (45, 6, 3, null, 9);

INSERT INTO scores (id, user_id, subject_id, "value", control_id, pass_date) VALUES (46, 6, 4, 75, 10, '2023-10-12T01:00:01.000Z');
INSERT INTO scores (id, user_id, subject_id, "value", control_id, pass_date) VALUES (47, 6, 4, 45, 11, '2023-11-01T01:00:01.000Z');
INSERT INTO scores (id, user_id, subject_id, "value", control_id) VALUES (48, 6, 4, null, 12);