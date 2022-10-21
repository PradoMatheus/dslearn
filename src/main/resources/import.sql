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

INSERT INTO tb_course (name, img_Uri, img_Gray_Uri) VALUES ('Bootcamp HTML', 'https://guiadoestudante.abril.com.br/wp-content/uploads/sites/4/2021/04/Curso-online.jpg', 'https://blog.unopar.com.br/wp-content/uploads/2020/06/original-0a795d09d3f0106c2eae09ad4a8f2830.jpg');

INSERT INTO tb_offer (edition, start_Moment, end_Moment, course_id) VALUES ('1.0', TIMESTAMP WITH TIME ZONE '2020-11-13T03:00:00', TIMESTAMP WITH TIME ZONE '2021-11-13T03:00:00', 1);
INSERT INTO tb_offer (edition, start_Moment, end_Moment, course_id) VALUES ('2.0', TIMESTAMP WITH TIME ZONE '2020-12-13T03:00:00', TIMESTAMP WITH TIME ZONE '2021-12-13T03:00:00', 1);

INSERT INTO tb_resource (title, description, position, img_Uri, type, offer_id) VALUES ('Trilha HTML', 'Trilha Principal do curso', 1, 'https://guiadoestudante.abril.com.br/wp-content/uploads/sites/4/2021/04/Curso-online.jpg', 1, 1);
INSERT INTO tb_resource (title, description, position, img_Uri, type, offer_id) VALUES ('Forum', 'TTire suas dúvidas', 2, 'https://guiadoestudante.abril.com.br/wp-content/uploads/sites/4/2021/04/Curso-online.jpg', 2, 1);
INSERT INTO tb_resource (title, description, position, img_Uri, type, offer_id) VALUES ('Lives', 'Lives Exclusivas para a turma', 3, 'https://guiadoestudante.abril.com.br/wp-content/uploads/sites/4/2021/04/Curso-online.jpg', 0, 1);

INSERT INTO tb_section (title, description, position, img_Uri, resource_id, prerequisite_id) VALUES ('Capítulo 1', 'Nesse capitulo vamos começar', 1, 'https://guiadoestudante.abril.com.br/wp-content/uploads/sites/4/2021/04/Curso-online.jpg', 1, null);
INSERT INTO tb_section (title, description, position, img_Uri, resource_id, prerequisite_id) VALUES ('Capítulo 2', 'Nesse capitulo vamos continuar', 2, 'https://guiadoestudante.abril.com.br/wp-content/uploads/sites/4/2021/04/Curso-online.jpg', 1, 1);
INSERT INTO tb_section (title, description, position, img_Uri, resource_id, prerequisite_id) VALUES ('Capítulo 3', 'Nesse capitulo vamos finalizar', 3, 'https://guiadoestudante.abril.com.br/wp-content/uploads/sites/4/2021/04/Curso-online.jpg', 1, 2);

INSERT INTO tb_enrollment (user_id, offer_id, enroll_Moment, refund_Moment, available, only_Update) VALUES (1, 1, TIMESTAMP WITH TIME ZONE '2020-11-13T13:00:00', null, true, false);
INSERT INTO tb_enrollment (user_id, offer_id, enroll_Moment, refund_Moment, available, only_Update) VALUES (2, 1, TIMESTAMP WITH TIME ZONE '2020-11-13T13:00:00', null, true, false);

INSERT INTO tb_lesson (title, position, section_id) VALUES ('Aula 1 do capítulo 1', 1, 1);
INSERT INTO tb_lesson (title, position, section_id) VALUES ('Aula 2 do capítulo 1', 2, 1);
INSERT INTO tb_lesson (title, position, section_id) VALUES ('Aula 3 do capítulo 1', 3, 1);
INSERT INTO tb_lesson (title, position, section_id) VALUES ('Tarefa do capitulo 1 do capítulo 1', 4, 1);

INSERT INTO tb_content (id, text_Content, video_Uri) VALUES (1, 'Material de apoio: abc', 'https://www.youtube.com/watch?v=qZu5Mchb_xI&ab_channel=PopInternacionais');
INSERT INTO tb_content (id, text_Content, video_Uri) VALUES (2, 'Material de apoio: abc', 'https://www.youtube.com/watch?v=qZu5Mchb_xI&ab_channel=PopInternacionais');
INSERT INTO tb_content (id, text_Content, video_Uri) VALUES (3, 'Material de apoio: abc', 'https://www.youtube.com/watch?v=qZu5Mchb_xI&ab_channel=PopInternacionais');

INSERT INTO tb_task (id, description, question_Count, approval_Count, weight, due_Date) VALUES (4, 'Fazer um trabalho Legal', 5, 4, 1.0, TIMESTAMP WITH TIME ZONE '2020-11-25T13:00:00');

INSERT INTO tb_lessons_done (lesson_id, user_id, offer_id) VALUES (1, 1, 1);
INSERT INTO tb_lessons_done (lesson_id, user_id, offer_id) VALUES (2, 1, 1);