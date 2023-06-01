-- subjects
INSERT INTO subjects (id, name) VALUES (1, 'Системы искусственного интеллекта');
INSERT INTO subjects (id, name) VALUES (2, 'Математический анализ');
INSERT INTO subjects (id, name) VALUES (3, 'Дискретная математика');
INSERT INTO subjects (id, name) VALUES (4, 'Конструирование программного обеспечения');
-- controls
INSERT INTO controls(id, subject_id, due_date, type) VALUES (1, 1, '2023-03-08T01:00:01.000Z', 'TEST');
INSERT INTO controls(id, subject_id, due_date, type) VALUES (2, 1, '2023-03-08T01:00:01.000Z', 'EXAM');
INSERT INTO controls(id, subject_id, due_date, type) VALUES (3, 1, '2023-04-08T01:00:01.000Z', 'ATTENDANCE');

INSERT INTO controls(id, subject_id, due_date, type) VALUES (4, 2, '2023-03-08T01:00:01.000Z', 'LAB');
INSERT INTO controls(id, subject_id, due_date, type) VALUES (5, 2, '2023-05-08T01:00:01.000Z', 'EXAM');
INSERT INTO controls(id, subject_id, due_date, type) VALUES (6, 2, '2023-06-08T01:00:01.000Z', 'ATTENDANCE');
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
-- group_user
INSERT INTO group_user(group_id, user_id) VALUES (1, 1);
INSERT INTO group_user(group_id, user_id) VALUES (1, 2);
INSERT INTO group_user(group_id, user_id) VALUES (1, 3);

INSERT INTO group_user(group_id, user_id) VALUES (2, 1);
INSERT INTO group_user(group_id, user_id) VALUES (2, 2);
INSERT INTO group_user(group_id, user_id) VALUES (1, 4);
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
INSERT INTO scores (id, user_id, subject_id, "value", control_id) VALUES (4, 3, 1, 70, 2);
INSERT INTO scores (id, user_id, subject_id, "value", control_id) VALUES (6, 3, 1, null, 3);

INSERT INTO scores (id, user_id, subject_id, "value", control_id, pass_date) VALUES (8, 3, 2, 30, 4, '2023-03-08T01:00:01.000Z');
INSERT INTO scores (id, user_id, subject_id, "value", control_id) VALUES (11, 3, 2, 30, 5);
INSERT INTO scores (id, user_id, subject_id, "value", control_id) VALUES (14, 3, 2, 30, 6);

INSERT INTO scores (id, user_id, subject_id, "value", control_id) VALUES (15, 4, 1, 30, 1);
INSERT INTO scores (id, user_id, subject_id, "value", control_id) VALUES (18, 4, 1, 40, 2);
INSERT INTO scores (id, user_id, subject_id, "value", control_id) VALUES (21, 4, 1, 40, 3);

INSERT INTO scores (id, user_id, subject_id, "value", control_id) VALUES (22, 4, 2, 30, 4);
INSERT INTO scores (id, user_id, subject_id, "value", control_id) VALUES (25, 4, 2, 50, 5);
INSERT INTO scores (id, user_id, subject_id, "value", control_id) VALUES (28, 4, 2, 50, 6);