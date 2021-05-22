---
## Front matter
marp: true
lang: ru-RU
title: Лабораторная работа №9
author: |
	Бабков Дмитрий Николаевич, НПМбд-01-20
institute: |
	RUDN University, Moscow, Russian Federation

## Formatting
toc: false
slide_level: 2
theme: metropolis
header-includes: 
 - \metroset{progressbar=frametitle,sectionpage=progressbar,numbering=fraction}
 - '\makeatletter'
 - '\beamer@ignorenonframefalse'
 - '\makeatother'
aspectratio: 43
section-titles: true
---

# Лабораторная работа №9
## Выполнил Бабков Дмитрий Николаевич, НПМбд-01-20

---

# Цель работы 
Познакомиться с операционной системой Linux. Получить практические навыки работы с редактором vi, установленным по умолчанию практически во всех дистрибутивах.
# Задание
Выполнить упражнения, используя команды vi

---

# Ход работы
## Задание 1. Создание нового файла с использованием vi
Создал каталог с именем ~/work/2020-2021/OperatingSystems/laboratory/lab09 и перешел в него. В этом каталоге вызвал vi и создал файл hello.sh (Рис.1)  
  
![Рис.1](images/hellosh.png) Рис.1  

---

Нажав клавишу **i** я перешел в режим вставки. Напечатал текст на рисунке (Рис.2)  
![Рис.2](images/helloworld.png) Рис.2  

---

Нажав **Shift-;** перешел в режим командной строки и ввел **wq** для выхода из файла с сохранением изменений  
![Рис.3](images/wq.png) Рис.3

---

## Задание 2. Редактирование существующего файла  

Редактирование файлов в основном осуществляется с помощью комбинаций клавиш, которые позволяют вырезать и вставлять текст, отменять нежелаемые действия и т.д. (Рис.4, 5, 6)  
![Рис.4](images/endhello.png) Рис.4 ![Рис.5](images/noendhello.png) Рис.5 ![Рис.6](images/undo.png) Рис.6

---

# Спасибо за внимание