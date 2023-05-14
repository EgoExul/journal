-- subjects
INSERT INTO subjects (id, name) VALUES (1, 'Системы исксственного интелекта');
INSERT INTO subjects (id, name) VALUES (2, 'Математический анализ');
INSERT INTO subjects (id, name) VALUES (3, 'Дискретная математика');
INSERT INTO subjects (id, name) VALUES (4, 'Конструирование программного обеспечения');
-- roles
INSERT INTO roles (id, name) VALUES (1, 'teacher');
INSERT INTO roles (id, name) VALUES (2, 'student');
-- groups
INSERT INTO groups (id, name) VALUES (1, 'AS-123');
INSERT INTO groups (id, name) VALUES (2, 'AS-321');
-- users
INSERT INTO users (id, first_name, role_id, group_id) VALUES (1, 'test', 1, 1);