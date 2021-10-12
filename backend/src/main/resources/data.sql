

INSERT INTO tb_user (name, email, password) VALUES ('Alex Brown', 'alex@gmail.com', '$2a$10$eACCYoNOHEqXve8aIWT8Nu3PkMXWBaOxJ9aORUYzfMQCbVBIhZ8tG');
INSERT INTO tb_user (name, email, password) VALUES ('Bob Brown', 'bob@gmail.com', '$2a$10$eACCYoNOHEqXve8aIWT8Nu3PkMXWBaOxJ9aORUYzfMQCbVBIhZ8tG');
INSERT INTO tb_user (name, email, password) VALUES ('Maria Green', 'maria@gmail.com', '$2a$10$eACCYoNOHEqXve8aIWT8Nu3PkMXWBaOxJ9aORUYzfMQCbVBIhZ8tG');

INSERT INTO tb_role (authority) VALUES ('ROLE_STUDENT');
INSERT INTO tb_role (authority) VALUES ('ROLE_INSTRUCTOR');
INSERT INTO tb_role (authority) VALUES ('ROLE_ADMIN');

INSERT INTO tb_user_role (user_id, role_id) VALUES (1, 1);
INSERT INTO tb_user_role (user_id, role_id) VALUES (2, 1);
INSERT INTO tb_user_role (user_id, role_id) VALUES (2, 2);
INSERT INTO tb_user_role (user_id, role_id) VALUES (3, 1);
INSERT INTO tb_user_role (user_id, role_id) VALUES (3, 2);
INSERT INTO tb_user_role (user_id, role_id) VALUES (3, 3);

INSERT INTO tb_course (name, img_Uri, img_Gray_Uri) VALUES ('Bootcamp HTML', 'https://cdn.pixabay.com/photo/2018/03/22/10/55/training-course-3250007_1280.jpg', 'https://upload.wikimedia.org/wikipedia/commons/1/1f/Switch-course-book-grey.svg');

INSERT INTO tb_offer (edition, start_Moment, end_Moment, course_id) VALUES ('1.0', TIMESTAMP WITH TIME ZONE '2021-11-11T10:00:00Z', TIMESTAMP WITH TIME ZONE '2021-11-14T10:00:00Z', 1);
INSERT INTO tb_offer (edition, start_Moment, end_Moment, course_id) VALUES ('2.0', TIMESTAMP WITH TIME ZONE '2021-12-11T10:00:00Z', TIMESTAMP WITH TIME ZONE '2021-12-14T10:00:00Z', 1);

INSERT INTO tb_notification (text, moment, read, route, user_id) VALUES ('Tarefa Aceita',TIMESTAMP WITH TIME ZONE '2021-11-11T10:00:00Z', false , '/resource/section/', 1);
INSERT INTO tb_notification (text, moment, read, route, user_id) VALUES ('Tarefa Recusada',TIMESTAMP WITH TIME ZONE '2021-12-11T10:00:00Z', false , '/resource/section/', 2);
INSERT INTO tb_notification (text, moment, read, route, user_id) VALUES ('Tarefa Aceita',TIMESTAMP WITH TIME ZONE '2021-11-13T10:00:00Z', false , '/resource/section/', 3);

INSERT INTO tb_resource (title, description, position, img_Uri, type, offer_id) VALUES('Trilha HTML', 'Trilha principal do curso', 1, 'https://i.gyazo.com/bb3fc7214669e747b00ddf353913589a.png', 1,  1);
INSERT INTO tb_resource (title, description, position, img_Uri, type, offer_id) VALUES('FORUM', 'Tire suas dúvidas', 2, 'https://i.gyazo.com/bb3fc7214669e747b00ddf353913589a.png', 2,  2);
INSERT INTO tb_resource (title, description, position, img_Uri, type, offer_id) VALUES('Aulas ao vivo', 'Tira usa dúvidas ao vivo', 3, 'https://i.gyazo.com/bb3fc7214669e747b00ddf353913589a.png', 0, 1);

INSERT INTO tb_section (title, description, position, img_Uri, resource_id, prerequisite_id) VALUES ('Módulo 1: Introdução', 'Introdução ao Curso', 1, 'https://i.gyazo.com/bb3fc7214669e747b00ddf353913589a.png', 1, null);
INSERT INTO tb_section (title, description, position, img_Uri, resource_id, prerequisite_id) VALUES ('Módulo 2: Contiuação da introdução', 'Continuação', 2, 'https://i.gyazo.com/bb3fc7214669e747b00ddf353913589a.png', 1, 1);
INSERT INTO tb_section (title, description, position, img_Uri, resource_id, prerequisite_id) VALUES ('Módulo 3: Finalização da continuação', 'Finalizando', 3, 'https://i.gyazo.com/bb3fc7214669e747b00ddf353913589a.png', 1, 2);