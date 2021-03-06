---
## Front matter
marp: true
lang: ru-RU
title: "Лабораторная работа №14"
author: "Бабков Дмитрий Николаевич"

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

# Лабораторная работа №14
## Выполнил Бабков Дмитрий Николаевич, НПМбд-01-20

---

# Цель
Приобрести простейшие навыки разработки, анализа, тестирования и отладки
приложений в ОС типа UNIX/Linux на примере создания на языке программирования С калькулятора с простейшими функциями.

# Задание
Написать и отладить программу, выполняющую функции калькулятора

---

# Ход работы
Создал файлы **calculate.c**, **calculate.h**, **main.c** (Рис.1)  
![Рис.1](images/createfiles.png)

---

# Ход работы
В эти файлы записал текст, данный в методических материалах и скомпилировал (Рис.2)  
![Рис.2](images/compile.png)  

---

# Ход работы

Создал Makefile, содержание которого также дано в методических материалах (Рис.3). Немного его исправил, чтобы он подходил для целей этой лабораторной работы (Рис.4)  
![Рис.3](images/makefilewrong.png) ![Рис.4](images/makefilefixed.png)

---

# Ход работы

Скомпилировал калькулятор с помощью Makefile (Рис.5)  
![Рис.5](images/makecompile.png)  

---

# Ход работы

Вызвал отладчик **gdb** и провел с ним основные действия (вывод строк исходного текста, установка точек останова и вывод значений переменных) (Рис.6)  
![Рис.6](images/gdbstart.png)  

---

# Вывод
В ходе выполнения лабораторной работы я приобрёл простейшие навыки разработки, анализа, тестирования и отладки приложений в ОС типа UNIX/Linux на примере создания на языке программирования С калькулятора с простейшими функциями.

---

# Спасибо за внимание