USE [Kvalik]
GO
SET IDENTITY_INSERT [dbo].[Programs] ON 

INSERT [dbo].[Programs] ([Id], [Title], [Description]) VALUES (1, N'Программа 1', N'Описание 1')
INSERT [dbo].[Programs] ([Id], [Title], [Description]) VALUES (2, N'Программа 2', N'Описание 2')
INSERT [dbo].[Programs] ([Id], [Title], [Description]) VALUES (3, N'Программа 3', N'Описание 3')
INSERT [dbo].[Programs] ([Id], [Title], [Description]) VALUES (4, N'Программа 4', N'Описание 4')
INSERT [dbo].[Programs] ([Id], [Title], [Description]) VALUES (5, N'Программа 5', N'Описание 5')
SET IDENTITY_INSERT [dbo].[Programs] OFF
GO
SET IDENTITY_INSERT [dbo].[Themes] ON 

INSERT [dbo].[Themes] ([Id], [Title], [Description], [ProgramId]) VALUES (3, N'Тема 1', N'Тема 1', 1)
INSERT [dbo].[Themes] ([Id], [Title], [Description], [ProgramId]) VALUES (4, N'Тема 2', N'Тема 1', 2)
INSERT [dbo].[Themes] ([Id], [Title], [Description], [ProgramId]) VALUES (5, N'Тема 3', N'Тема 1', 3)
INSERT [dbo].[Themes] ([Id], [Title], [Description], [ProgramId]) VALUES (6, N'Тема 4', N'Тема 1', 4)
INSERT [dbo].[Themes] ([Id], [Title], [Description], [ProgramId]) VALUES (7, N'Тема 5', N'Тема 1', 5)
SET IDENTITY_INSERT [dbo].[Themes] OFF
GO
SET IDENTITY_INSERT [dbo].[Users] ON 

INSERT [dbo].[Users] ([Id], [Name], [Email], [PasswordHash], [Role]) VALUES (1, N'Иван Иванов', N'ivan1@example.com', N'pass1', N'Student')
INSERT [dbo].[Users] ([Id], [Name], [Email], [PasswordHash], [Role]) VALUES (2, N'Петр Петров', N'petr2@example.com', N'pass2', N'Student')
INSERT [dbo].[Users] ([Id], [Name], [Email], [PasswordHash], [Role]) VALUES (3, N'Сидор Сидоров', N'sidor3@example.com', N'pass3', N'Student')
INSERT [dbo].[Users] ([Id], [Name], [Email], [PasswordHash], [Role]) VALUES (4, N'Мария Смирнова', N'maria4@example.com', N'pass4', N'Teacher')
INSERT [dbo].[Users] ([Id], [Name], [Email], [PasswordHash], [Role]) VALUES (5, N'Анна Кузнецова', N'anna5@example.com', N'pass5', N'Teacher')
INSERT [dbo].[Users] ([Id], [Name], [Email], [PasswordHash], [Role]) VALUES (6, N'zxc', N'zxc@zxc', N'zxczxc', N'Student')
INSERT [dbo].[Users] ([Id], [Name], [Email], [PasswordHash], [Role]) VALUES (7, N'qwe', N'qwe@qwe', N'qweqwe', N'Student')
SET IDENTITY_INSERT [dbo].[Users] OFF
GO
SET IDENTITY_INSERT [dbo].[Groups] ON 

INSERT [dbo].[Groups] ([Id], [Name], [ProgramId], [TeacherId]) VALUES (1, N'Группа А', 1, 5)
INSERT [dbo].[Groups] ([Id], [Name], [ProgramId], [TeacherId]) VALUES (2, N'Группа Б', 2, 5)
INSERT [dbo].[Groups] ([Id], [Name], [ProgramId], [TeacherId]) VALUES (3, N'Группа В', 3, 5)
INSERT [dbo].[Groups] ([Id], [Name], [ProgramId], [TeacherId]) VALUES (4, N'Группа Г', 4, 5)
INSERT [dbo].[Groups] ([Id], [Name], [ProgramId], [TeacherId]) VALUES (5, N'Группа Д', 5, 5)
SET IDENTITY_INSERT [dbo].[Groups] OFF
GO
SET IDENTITY_INSERT [dbo].[GroupApplications] ON 

INSERT [dbo].[GroupApplications] ([Id], [StudentId], [GroupId], [Status], [CreatedAt], [ReviewedAt]) VALUES (23, 6, 2, N'Одобрено', CAST(N'2025-07-05T00:25:53.1067067' AS DateTime2), NULL)
INSERT [dbo].[GroupApplications] ([Id], [StudentId], [GroupId], [Status], [CreatedAt], [ReviewedAt]) VALUES (24, 6, 1, N'Одобрено', CAST(N'2025-07-05T00:30:26.9421508' AS DateTime2), NULL)
INSERT [dbo].[GroupApplications] ([Id], [StudentId], [GroupId], [Status], [CreatedAt], [ReviewedAt]) VALUES (25, 6, 3, N'Одобрено', CAST(N'2025-07-05T00:38:01.8678752' AS DateTime2), NULL)
INSERT [dbo].[GroupApplications] ([Id], [StudentId], [GroupId], [Status], [CreatedAt], [ReviewedAt]) VALUES (26, 6, 5, N'Одобрено', CAST(N'2025-07-05T01:27:38.3810926' AS DateTime2), NULL)
INSERT [dbo].[GroupApplications] ([Id], [StudentId], [GroupId], [Status], [CreatedAt], [ReviewedAt]) VALUES (28, 7, 2, N'Отклонено', CAST(N'2025-07-05T04:14:41.2442318' AS DateTime2), CAST(N'2025-07-05T06:33:24.8415353' AS DateTime2))
INSERT [dbo].[GroupApplications] ([Id], [StudentId], [GroupId], [Status], [CreatedAt], [ReviewedAt]) VALUES (29, 7, 1, N'Одобрено', CAST(N'2025-07-05T07:21:22.2618994' AS DateTime2), CAST(N'2025-07-05T07:21:40.0107608' AS DateTime2))
SET IDENTITY_INSERT [dbo].[GroupApplications] OFF
GO
SET IDENTITY_INSERT [dbo].[GroupStudents] ON 

INSERT [dbo].[GroupStudents] ([Id], [GroupId], [StudentId]) VALUES (6, 1, 7)
SET IDENTITY_INSERT [dbo].[GroupStudents] OFF
GO
SET IDENTITY_INSERT [dbo].[Lessons] ON 

INSERT [dbo].[Lessons] ([Id], [Title], [Description], [ThemeId], [GroupId], [DateTime]) VALUES (3, N'Урок 1', N'Описание урока 1', 4, 1, CAST(N'2025-07-05T07:02:42.2700000' AS DateTime2))
INSERT [dbo].[Lessons] ([Id], [Title], [Description], [ThemeId], [GroupId], [DateTime]) VALUES (4, N'Урок 2', N'Описание урока 2', 6, 2, CAST(N'2025-07-05T07:02:42.2700000' AS DateTime2))
INSERT [dbo].[Lessons] ([Id], [Title], [Description], [ThemeId], [GroupId], [DateTime]) VALUES (5, N'Урок 3', N'Описание урока 3', 4, 3, CAST(N'2025-07-05T07:02:42.2700000' AS DateTime2))
INSERT [dbo].[Lessons] ([Id], [Title], [Description], [ThemeId], [GroupId], [DateTime]) VALUES (6, N'Урок 4', N'Описание урока 4', 3, 4, CAST(N'2025-07-05T07:02:42.2700000' AS DateTime2))
INSERT [dbo].[Lessons] ([Id], [Title], [Description], [ThemeId], [GroupId], [DateTime]) VALUES (7, N'Урок 5', N'Описание урока 5', 5, 5, CAST(N'2025-07-05T07:02:42.2700000' AS DateTime2))
INSERT [dbo].[Lessons] ([Id], [Title], [Description], [ThemeId], [GroupId], [DateTime]) VALUES (8, N'Введение', N'Знакомимся', 3, 1, CAST(N'2025-07-05T14:44:54.1417529' AS DateTime2))
INSERT [dbo].[Lessons] ([Id], [Title], [Description], [ThemeId], [GroupId], [DateTime]) VALUES (9, N'asdad', N'asdsadasd', 5, 1, CAST(N'2025-07-05T15:00:06.4819197' AS DateTime2))
INSERT [dbo].[Lessons] ([Id], [Title], [Description], [ThemeId], [GroupId], [DateTime]) VALUES (10, N'dsadadsada', N'saddas', 5, 1, CAST(N'2025-07-18T15:02:00.0000000' AS DateTime2))
INSERT [dbo].[Lessons] ([Id], [Title], [Description], [ThemeId], [GroupId], [DateTime]) VALUES (11, N'asdad', N'sadasdsadasd', 4, 1, CAST(N'2025-07-05T15:04:20.8364560' AS DateTime2))
INSERT [dbo].[Lessons] ([Id], [Title], [Description], [ThemeId], [GroupId], [DateTime]) VALUES (12, N'asfasdcacasd', N'asdsafa', 7, 2, CAST(N'2025-07-05T15:05:20.8042373' AS DateTime2))
INSERT [dbo].[Lessons] ([Id], [Title], [Description], [ThemeId], [GroupId], [DateTime]) VALUES (13, N'asdadadsd', N'asdasdasasdsa', 3, 1, CAST(N'2025-07-05T15:10:41.3866175' AS DateTime2))
INSERT [dbo].[Lessons] ([Id], [Title], [Description], [ThemeId], [GroupId], [DateTime]) VALUES (14, N'dasdasdsad', N'dsadasdasdasds', 4, 1, CAST(N'2025-07-05T16:26:46.3962507' AS DateTime2))
INSERT [dbo].[Lessons] ([Id], [Title], [Description], [ThemeId], [GroupId], [DateTime]) VALUES (15, N'asdasdda', N'dasdasdasd', 4, 1, CAST(N'2025-07-05T16:44:43.8528251' AS DateTime2))
SET IDENTITY_INSERT [dbo].[Lessons] OFF
GO
SET IDENTITY_INSERT [dbo].[Attendances] ON 

INSERT [dbo].[Attendances] ([Id], [LessonId], [StudentId], [IsPresent], [GroupId]) VALUES (4, 3, 1, 1, NULL)
INSERT [dbo].[Attendances] ([Id], [LessonId], [StudentId], [IsPresent], [GroupId]) VALUES (5, 5, 2, 1, NULL)
INSERT [dbo].[Attendances] ([Id], [LessonId], [StudentId], [IsPresent], [GroupId]) VALUES (6, 3, 3, 0, NULL)
INSERT [dbo].[Attendances] ([Id], [LessonId], [StudentId], [IsPresent], [GroupId]) VALUES (7, 4, 4, 1, NULL)
INSERT [dbo].[Attendances] ([Id], [LessonId], [StudentId], [IsPresent], [GroupId]) VALUES (8, 5, 1, 0, NULL)
INSERT [dbo].[Attendances] ([Id], [LessonId], [StudentId], [IsPresent], [GroupId]) VALUES (9, 6, 4, 0, NULL)
INSERT [dbo].[Attendances] ([Id], [LessonId], [StudentId], [IsPresent], [GroupId]) VALUES (10, 3, 6, 1, NULL)
INSERT [dbo].[Attendances] ([Id], [LessonId], [StudentId], [IsPresent], [GroupId]) VALUES (11, 12, 6, 1, NULL)
INSERT [dbo].[Attendances] ([Id], [LessonId], [StudentId], [IsPresent], [GroupId]) VALUES (12, 7, 6, 1, NULL)
INSERT [dbo].[Attendances] ([Id], [LessonId], [StudentId], [IsPresent], [GroupId]) VALUES (13, 3, 7, 0, NULL)
INSERT [dbo].[Attendances] ([Id], [LessonId], [StudentId], [IsPresent], [GroupId]) VALUES (14, 8, 7, 1, NULL)
INSERT [dbo].[Attendances] ([Id], [LessonId], [StudentId], [IsPresent], [GroupId]) VALUES (15, 8, 6, 0, NULL)
INSERT [dbo].[Attendances] ([Id], [LessonId], [StudentId], [IsPresent], [GroupId]) VALUES (16, 5, 6, 1, NULL)
INSERT [dbo].[Attendances] ([Id], [LessonId], [StudentId], [IsPresent], [GroupId]) VALUES (17, 4, 6, 1, NULL)
SET IDENTITY_INSERT [dbo].[Attendances] OFF
GO
SET IDENTITY_INSERT [dbo].[ChatMessages] ON 

INSERT [dbo].[ChatMessages] ([Id], [LessonId], [AuthorId], [Text], [DateTime], [AuthorName]) VALUES (4, 5, 1, N'Привет в чате 1', CAST(N'2025-07-05T07:04:15.8900000' AS DateTime2), N'')
INSERT [dbo].[ChatMessages] ([Id], [LessonId], [AuthorId], [Text], [DateTime], [AuthorName]) VALUES (5, 7, 2, N'Привет в чате 2', CAST(N'2025-07-05T07:04:15.8900000' AS DateTime2), N'')
INSERT [dbo].[ChatMessages] ([Id], [LessonId], [AuthorId], [Text], [DateTime], [AuthorName]) VALUES (6, 3, 3, N'Привет в чате 3', CAST(N'2025-07-05T07:04:15.8900000' AS DateTime2), N'')
INSERT [dbo].[ChatMessages] ([Id], [LessonId], [AuthorId], [Text], [DateTime], [AuthorName]) VALUES (7, 4, 4, N'Привет в чате 4', CAST(N'2025-07-05T07:04:15.8900000' AS DateTime2), N'')
INSERT [dbo].[ChatMessages] ([Id], [LessonId], [AuthorId], [Text], [DateTime], [AuthorName]) VALUES (8, 6, 1, N'Привет в чате 5', CAST(N'2025-07-05T07:04:15.8900000' AS DateTime2), N'')
INSERT [dbo].[ChatMessages] ([Id], [LessonId], [AuthorId], [Text], [DateTime], [AuthorName]) VALUES (9, 3, 5, N'koil', CAST(N'2025-07-05T18:31:19.3168078' AS DateTime2), N'Преподаватель')
INSERT [dbo].[ChatMessages] ([Id], [LessonId], [AuthorId], [Text], [DateTime], [AuthorName]) VALUES (10, 3, 5, N'КЭФТЕМЕЕЕЕ', CAST(N'2025-07-05T18:31:27.3484714' AS DateTime2), N'Преподаватель')
INSERT [dbo].[ChatMessages] ([Id], [LessonId], [AuthorId], [Text], [DateTime], [AuthorName]) VALUES (11, 4, 6, N'кэфтеме', CAST(N'2025-07-05T18:33:22.5826053' AS DateTime2), N'Я')
INSERT [dbo].[ChatMessages] ([Id], [LessonId], [AuthorId], [Text], [DateTime], [AuthorName]) VALUES (12, 3, 6, N'ку', CAST(N'2025-07-05T18:35:10.5845651' AS DateTime2), N'Я')
INSERT [dbo].[ChatMessages] ([Id], [LessonId], [AuthorId], [Text], [DateTime], [AuthorName]) VALUES (13, 3, 5, N'ку', CAST(N'2025-07-05T18:35:14.3020099' AS DateTime2), N'Преподаватель')
INSERT [dbo].[ChatMessages] ([Id], [LessonId], [AuthorId], [Text], [DateTime], [AuthorName]) VALUES (14, 3, 4, N'XD', CAST(N'2025-07-05T18:36:12.4400965' AS DateTime2), N'Преподаватель')
INSERT [dbo].[ChatMessages] ([Id], [LessonId], [AuthorId], [Text], [DateTime], [AuthorName]) VALUES (15, 3, 6, N'au', CAST(N'2025-07-05T18:39:41.6938586' AS DateTime2), N'Студент')
INSERT [dbo].[ChatMessages] ([Id], [LessonId], [AuthorId], [Text], [DateTime], [AuthorName]) VALUES (16, 3, 7, N'XD', CAST(N'2025-07-05T18:39:47.2999035' AS DateTime2), N'Студент')
INSERT [dbo].[ChatMessages] ([Id], [LessonId], [AuthorId], [Text], [DateTime], [AuthorName]) VALUES (17, 3, 5, N'XDD', CAST(N'2025-07-05T18:46:57.8278727' AS DateTime2), N'Анна Кузнецова')
SET IDENTITY_INSERT [dbo].[ChatMessages] OFF
GO
SET IDENTITY_INSERT [dbo].[Comments] ON 

INSERT [dbo].[Comments] ([Id], [LessonId], [AuthorId], [Text], [DateTime]) VALUES (7, 6, 2, N'Комментарий к уроку 2', CAST(N'2025-07-05T07:04:07.7133333' AS DateTime2))
INSERT [dbo].[Comments] ([Id], [LessonId], [AuthorId], [Text], [DateTime]) VALUES (8, 7, 3, N'Комментарий к уроку 3', CAST(N'2025-07-05T07:04:07.7133333' AS DateTime2))
INSERT [dbo].[Comments] ([Id], [LessonId], [AuthorId], [Text], [DateTime]) VALUES (9, 4, 4, N'Комментарий к уроку 4', CAST(N'2025-07-05T07:04:07.7133333' AS DateTime2))
INSERT [dbo].[Comments] ([Id], [LessonId], [AuthorId], [Text], [DateTime]) VALUES (10, 5, 1, N'Комментарий к уроку 5', CAST(N'2025-07-05T07:04:07.7133333' AS DateTime2))
INSERT [dbo].[Comments] ([Id], [LessonId], [AuthorId], [Text], [DateTime]) VALUES (11, 3, 5, N'sadsd', CAST(N'2025-07-05T18:15:37.8863326' AS DateTime2))
INSERT [dbo].[Comments] ([Id], [LessonId], [AuthorId], [Text], [DateTime]) VALUES (12, 3, 5, N'dsadasdasd', CAST(N'2025-07-05T18:15:46.9819782' AS DateTime2))
SET IDENTITY_INSERT [dbo].[Comments] OFF
GO
SET IDENTITY_INSERT [dbo].[Progresses] ON 

INSERT [dbo].[Progresses] ([Id], [StudentId], [LessonId], [IsCompleted], [CompletedAt]) VALUES (4, 1, 3, 1, NULL)
INSERT [dbo].[Progresses] ([Id], [StudentId], [LessonId], [IsCompleted], [CompletedAt]) VALUES (5, 2, 5, 0, NULL)
INSERT [dbo].[Progresses] ([Id], [StudentId], [LessonId], [IsCompleted], [CompletedAt]) VALUES (6, 3, 7, 1, NULL)
INSERT [dbo].[Progresses] ([Id], [StudentId], [LessonId], [IsCompleted], [CompletedAt]) VALUES (7, 4, 5, 0, NULL)
INSERT [dbo].[Progresses] ([Id], [StudentId], [LessonId], [IsCompleted], [CompletedAt]) VALUES (8, 1, 6, 1, NULL)
INSERT [dbo].[Progresses] ([Id], [StudentId], [LessonId], [IsCompleted], [CompletedAt]) VALUES (9, 6, 4, 1, CAST(N'2025-07-05T01:35:52.1144410' AS DateTime2))
SET IDENTITY_INSERT [dbo].[Progresses] OFF
GO
SET IDENTITY_INSERT [dbo].[Materials] ON 

INSERT [dbo].[Materials] ([Id], [LessonId], [Type], [Content]) VALUES (5, 5, N'link', N'https://example.com/2')
INSERT [dbo].[Materials] ([Id], [LessonId], [Type], [Content]) VALUES (6, 7, N'text', N'Текст материала 3')
INSERT [dbo].[Materials] ([Id], [LessonId], [Type], [Content]) VALUES (7, 4, N'link', N'https://example.com/4')
INSERT [dbo].[Materials] ([Id], [LessonId], [Type], [Content]) VALUES (8, 4, N'text', N'Текст материала 5')
INSERT [dbo].[Materials] ([Id], [LessonId], [Type], [Content]) VALUES (9, 3, N'text', N'asds')
INSERT [dbo].[Materials] ([Id], [LessonId], [Type], [Content]) VALUES (10, 3, N'text', N'asds')
SET IDENTITY_INSERT [dbo].[Materials] OFF
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20250704204907_234', N'8.0.0')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20250705004639_2345', N'8.0.0')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20250705082938_23455', N'8.0.0')
GO
