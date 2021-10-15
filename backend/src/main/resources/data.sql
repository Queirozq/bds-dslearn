

INSERT INTO tb_user (name, email, password) VALUES ('Alex Brown', 'alex@gmail.com', '$2a$10$eACCYoNOHEqXve8aIWT8Nu3PkMXWBaOxJ9aORUYzfMQCbVBIhZ8tG');
INSERT INTO tb_user (name, email, password) VALUES ('Bob Brown', 'bob@gmail.com', '$2a$10$eACCYoNOHEqXve8aIWT8Nu3PkMXWBaOxJ9aORUYzfMQCbVBIhZ8tG');
INSERT INTO tb_user (name, email, password) VALUES ('Maria Green', 'maria@gmail.com', '$2a$10$eACCYoNOHEqXve8aIWT8Nu3PkMXWBaOxJ9aORUYzfMQCbVBIhZ8tG');

INSERT INTO tb_role (authority) VALUES ('ROLE_STUDENT');
INSERT INTO tb_role (authority) VALUES ('ROLE_INSTRUCTOR');
INSERT INTO tb_role (authority) VALUES ('ROLE_ADMIN');

INSERT INTO tb_user_role (user_id, role_id) VALUES (1, 1);
INSERT INTO tb_user_role (user_id, role_id) VALUES (2, 2);
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

INSERT INTO tb_enrollment( user_id, offer_id, enroll_Moment, refund_Moment, available, only_Update) VALUES ( 1, 1,TIMESTAMP WITH TIME ZONE '2021-11-11T10:00:00Z', null, true, false);
INSERT INTO tb_enrollment( user_id, offer_id, enroll_Moment, refund_Moment, available, only_Update) VALUES ( 2, 1,TIMESTAMP WITH TIME ZONE '2021-11-11T10:00:00Z', null, true, false);

INSERT INTO tb_lesson (title, position, section_id) VALUES ('Aula 1 do capitulo', 1, 1);
INSERT into tb_content(id, text_Content, video_Uri) VALUES (1,'Material de apoio: abc','https://www.youtube.com/watch?v=guvGGHzsK3A');

INSERT INTO tb_lesson (title, position, section_id) VALUES ('Aula 2 do capitulo', 2, 1);
INSERT into tb_content(id, text_Content, video_Uri) VALUES (2,'','https://www.youtube.com/watch?v=guvGGHzsK3A');

INSERT INTO tb_lesson (title, position, section_id) VALUES ('Aula 3 do capitulo', 3, 1);
INSERT INTO tb_content(id, text_Content, video_Uri) VALUES (3,'','https://www.youtube.com/watch?v=guvGGHzsK3A');

INSERT INTO tb_lesson (title, position, section_id) VALUES ('Tarefa do capitulo 1', 4, 1);
INSERT INTO tb_task (id, description, question_Count, approval_Count, weight, due_Date) VALUES (4, 'Tarefa', 5, 4, 1.0, TIMESTAMP WITH TIME ZONE '2021-11-11T10:00:00Z');

INSERT INTO tb_deliver(correct_Count, feedback, moment, status, uri, user_id, offer_id, lesson_id) VALUES(null, null,TIMESTAMP WITH TIME ZONE '2021-11-11T10:00:00Z', 0,'https://i.gyazo.com/bb3fc7214669e747b00ddf353913589a.png', 1, 1,4);

INSERT INTO tb_topic(title, body, moment, author_id, lesson_id, offer_id) VALUES ('duvida 1', 'preciso de ajuda',TIMESTAMP WITH TIME ZONE '2021-11-11T10:00:00Z', 1, 1, 1);
INSERT INTO tb_topic(title, body, moment, author_id, lesson_id, offer_id) VALUES ('duvida 2', 'preciso de ajuda',TIMESTAMP WITH TIME ZONE '2021-11-11T10:00:00Z', 2, 2, 1);
INSERT INTO tb_topic(title, body, moment, author_id, lesson_id, offer_id) VALUES ('duvida 3', 'preciso de ajuda',TIMESTAMP WITH TIME ZONE '2021-11-11T10:00:00Z', 1, 2, 1);
INSERT INTO tb_topic(title, body, moment, author_id, lesson_id, offer_id) VALUES ('duvida 4', 'preciso de ajuda',TIMESTAMP WITH TIME ZONE '2021-11-11T10:00:00Z', 2, 3, 1);
INSERT INTO tb_topic(title, body, moment, author_id, lesson_id, offer_id) VALUES ('duvida 5', 'preciso de ajuda',TIMESTAMP WITH TIME ZONE '2021-11-11T10:00:00Z', 1, 3, 1);
INSERT INTO tb_topic(title, body, moment, author_id, lesson_id, offer_id) VALUES ('duvida 6', 'preciso de ajuda',TIMESTAMP WITH TIME ZONE '2021-11-11T10:00:00Z', 2, 4, 1);

INSERT INTO tb_topic_likes(topic_id, user_id) VALUES (1, 2);
INSERT INTO tb_topic_likes(topic_id, user_id) VALUES (2, 1);

INSERT INTO tb_reply(body, moment, topic_id, author_id) VALUES ('joga fora',TIMESTAMP WITH TIME ZONE '2021-11-11T10:00:00Z', 1, 2);
INSERT INTO tb_reply(body, moment, topic_id, author_id) VALUES ('joguei mano',TIMESTAMP WITH TIME ZONE '2021-11-11T10:00:00Z', 1, 1);


INSERT INTO tb_reply_likes (reply_id, user_id) VALUES (1,1);
