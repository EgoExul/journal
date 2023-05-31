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
INSERT INTO group_user(group_id, user_id) VALUES (1, 2);
INSERT INTO group_user(group_id, user_id) VALUES (2, 1);
INSERT INTO group_user(group_id, user_id) VALUES (2, 2);
-- group_subject
INSERT INTO group_subject(group_id, subject_id) VALUES (1, 1);
INSERT INTO group_subject(group_id, subject_id) VALUES (1, 2);
INSERT INTO group_subject(group_id, subject_id) VALUES (2, 3);
INSERT INTO group_subject(group_id, subject_id) VALUES (2, 4);
-- subject_user
INSERT INTO subject_user(subject_id, user_id) VALUES (1, 1);
INSERT INTO subject_user(subject_id, user_id) VALUES (2, 1);
INSERT INTO subject_user(subject_id, user_id) VALUES (3, 2);
INSERT INTO subject_user(subject_id, user_id) VALUES (4, 2);

INSERT INTO subject_user(subject_id, user_id) VALUES (1, 3);
INSERT INTO subject_user(subject_id, user_id) VALUES (2, 3);
INSERT INTO subject_user(subject_id, user_id) VALUES (3, 4);
INSERT INTO subject_user(subject_id, user_id) VALUES (4, 4);
-- score
INSERT INTO scores (id, user_id, subject_id, "value", control_id) VALUES (1, 3, 1, 3, 1);
INSERT INTO scores (id, user_id, subject_id, "value", control_id) VALUES (2, 3, 1, 4, 2);
INSERT INTO scores (id, user_id, subject_id, "value", control_id) VALUES (3, 3, 1, 5, 3);

INSERT INTO scores (id, user_id, subject_id, "value") VALUES (5, 4, 1, 4);
INSERT INTO scores (id, user_id, subject_id, "value") VALUES (6, 4, 2, 3);
INSERT INTO scores (id, user_id, subject_id, "value") VALUES (7, 4, 3, 4);
INSERT INTO scores (id, user_id, subject_id, "value") VALUES (8, 4, 4, 5);