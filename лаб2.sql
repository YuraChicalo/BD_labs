CREATE DATABASE db_mylibrary1;

USE [db_mylibrary1]
CREATE TABLE Автори (
[id] [int] NOT NULL PRIMARY KEY,
	[Країна] [nvarchar](255) NOT NULL,
	[Імя] [nvarchar](255) NOT NULL,
	[Прізвише] [nvarchar](5) NOT NULL,
	[Дата народження] [datetime] NOT NULL,
	[Дата смерті] [datetime] NOT NULL,
);

CREATE TABLE Видавництва (
[id] [int] NOT NULL PRIMARY KEY,
	[Імя] [nvarchar](255)  NOT NULL,
	[Пошта] [nvarchar](255) NOT NULL,
	[Номер] [int] NOT NULL,
);
CREATE TABLE Книги (
[id] [int] NOT NULL PRIMARY KEY,
	[Імя] [nvarchar](255)  NOT NULL,
	[Жанр] [nvarchar](255) NOT NULL,
	[Мова] [nvarchar](255) NOT NULL,
);
CREATE TABLE Автори_книг (
[id] [int] NOT NULL PRIMARY KEY,
	[id_автор] [int]  NOT NULL,
	[id_книги] [int] NOT NULL,
);
CREATE TABLE Книги_з_кодом (
[id] [int] NOT NULL PRIMARY KEY,
	[id_книги] [int] NOT NULL,
	[код] [int] NOT NULL,
);
CREATE TABLE Працівники (
[id] [int] NOT NULL PRIMARY KEY,
	[Імя] [nvarchar](255) NOT NULL,
	[Прізвище] [nvarchar](255) NOT NULL,
	[Пошта] [nvarchar](255) NOT NULL,
	[Номер] [int] NOT NULL,
);
CREATE TABLE Читачі (
[id] [int] NOT NULL PRIMARY KEY,
	[Імя] [nvarchar](255) NOT NULL,
	[Прізвище] [nvarchar](255) NOT NULL,
	[Пошта] [nvarchar](255) NOT NULL,
	[Номер] [int] NOT NULL,
	[Адреса] [nvarchar](255) NOT NULL,
);
CREATE TABLE Операції (
[id] [int] NOT NULL PRIMARY KEY,
	[Імя] [nvarchar](255) NOT NULL,
);
CREATE TABLE Кредитування (
[id] [int] NOT NULL PRIMARY KEY,
	[id_книги] [int] NOT NULL,
	[id_читача] [int] NOT NULL,
	[Дата] [datetime] NOT NULL,
	[id_операції] [int] NOT NULL,
	[id_працівника] [int] NOT NULL,
);
ALTER TABLE Книги
ADD [id_видавництва] INT NOT NULL;



ALTER TABLE [Автори_книг]
	ADD
	FOREIGN KEY ([id_автор]) REFERENCES Автори (id)
	 ON DELETE CASCADE ON UPDATE CASCADE
ALTER TABLE [Автори_книг]
	ADD
	FOREIGN KEY ([id_книги]) REFERENCES Книги (id)
	 ON DELETE CASCADE ON UPDATE CASCADE
ALTER TABLE [Книги]
	ADD
	FOREIGN KEY ([id_видавництва]) REFERENCES Видавництва (id)
	 ON DELETE CASCADE ON UPDATE CASCADE
ALTER TABLE [Книги_з_кодом]
	ADD
	FOREIGN KEY ([id_книги]) REFERENCES Книги (id)
	 ON DELETE CASCADE ON UPDATE CASCADE
ALTER TABLE [Кредитування]
	ADD
	FOREIGN KEY ([id_працівника]) REFERENCES Працівники (id)
	 ON DELETE CASCADE ON UPDATE CASCADE
ALTER TABLE [Кредитування]
	ADD
	FOREIGN KEY ([id_читача]) REFERENCES Читачі (id)
	 ON DELETE CASCADE ON UPDATE CASCADE
ALTER TABLE [Кредитування]
	ADD
	FOREIGN KEY ([id_книги]) REFERENCES Книги_з_кодом (id)
	 ON DELETE CASCADE ON UPDATE CASCADE