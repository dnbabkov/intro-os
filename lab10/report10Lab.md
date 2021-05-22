---
# Front matter
lang: ru-RU
title: "Лабораторная работа №10"
author: "Бабков Дмитрий Николаевич, НПМбд-01-20"

# Formatting
toc-title: "Содержание"
toc: true # Table of contents
toc_depth: 2
lof: true # List of figures
lot: true # List of tables
fontsize: 12pt
linestretch: 1.5
papersize: a4paper
documentclass: scrreprt
polyglossia-lang: russian
polyglossia-otherlangs: english
mainfont: PT Serif
romanfont: PT Serif
sansfont: PT Sans
monofont: PT Mono
mainfontoptions: Ligatures=TeX
romanfontoptions: Ligatures=TeX
sansfontoptions: Ligatures=TeX,Scale=MatchLowercase
monofontoptions: Scale=MatchLowercase
indent: true
pdf-engine: lualatex
header-includes:
  - \linepenalty=10 # the penalty added to the badness of each line within a paragraph (no associated penalty node) Increasing the value makes tex try to have fewer lines in the paragraph.
  - \interlinepenalty=0 # value of the penalty (node) added after each line of a paragraph.
  - \hyphenpenalty=50 # the penalty for line breaking at an automatically inserted hyphen
  - \exhyphenpenalty=50 # the penalty for line breaking at an explicit hyphen
  - \binoppenalty=700 # the penalty for breaking a line at a binary operator
  - \relpenalty=500 # the penalty for breaking a line at a relation
  - \clubpenalty=150 # extra penalty for breaking after first line of a paragraph
  - \widowpenalty=150 # extra penalty for breaking before last line of a paragraph
  - \displaywidowpenalty=50 # extra penalty for breaking before last line before a display math
  - \brokenpenalty=100 # extra penalty for page breaking after a hyphenated line
  - \predisplaypenalty=10000 # penalty for breaking before a display
  - \postdisplaypenalty=0 # penalty for breaking after a display
  - \floatingpenalty = 20000 # penalty for splitting an insertion (can only be split footnote in standard LaTeX)
  - \raggedbottom # or \flushbottom
  - \usepackage{float} # keep figures where there are in the text
  - \floatplacement{figure}{H} # keep figures where there are in the text
---

# Цель работы
Познакомиться с операционной системой Linux. Получить практические навыки работы с редактором Emacs.

# Задача
Получить практические навыки работы с редактором Emacs.

# Ход работы  
1. Открываем emacs командой **emacs** (Рис.1)  
![Рис.1](images/emacs.png) Рис.1  
2. Создадим файл **lab10.sh** с помощью комбинации **Ctrl-x Ctrl-f** (**C-x C-f**) (Рис.2)  
![Рис.2](images/lab10sh.png) Рис.2  
3. Наберем текст на изображении (Рис.3)  
![Рис.3](images/hello.png) Рис.3  
4. Сохраняем файл с помощью комбинации **Ctrl-x Ctrl-s** (**C-x C-s**)  
5. Проделываем стандартные процедуры редактирования:  
5.1. Вырезаем одной командой целую строку (**С-k**) (Рис.4)  
![Рис.4](images/cut.png) Рис.4  
5.2. Вствляем эту строку в конец файла (**C-y**) (Рис.5)  
![Рис.5](images/cutpaste.png) Рис.5  
5.3. Выделяем область текста (**C-Space**) (Рис.6)  
![Рис.6](images/marked.png) Рис.6  
5.4. Копируем эту область в буфер обмена (**M-w**)  
5.5. Вставляем эту область в конец файла (Рис.7)  
![Рис.7](images/copypaste.png) Рис.7  
5.6. Вновь выделяем ту же область и вырезаем ее (**C-w**) (Рис.8)  
![Рис.8](images/onemorecut.png) Рис.8  
5.7. Отменяем последнее действие (**C-/**) (Рис.9)  
![Рис.9](images/undo.png) Рис.9  
6. Учимся использовать команды по перемещению курсора  
6.1. Перемещаем курсор в начало строки (**C-a**) (Рис.10)  
![Рис.10](images/ctrlA.png) Рис.10  
6.2. В конец строки (Рис.11)  
![Рис.11](images/ctrle.png) Рис.11
6.3. В начало буфера (Рис.12)  
![Рис.12](images/altBeg.png) Рис.12  
6.4. В конец буфера (Рис.13)  
![Рис.13](images/altend.png) Рис.13  
7. Управление буферами  
7.1. Выводим список активных буферов на экран (**C-x C-b**) (Рис.14)  
![Рис.14](images/buflist.png) Рис.14  
7.2. Переместимся во вновь открытое окно (**C-x, o**) со списком открытых буферов и переключитесь на другой буфер. (Рис.15)  
![Рис.15](images/switchbuf.png) Рис.15  
7.3 Закроем это окно (**C-x, 0**)  
7.4 Теперь снова переключимся между буферами без вывода списка на экран (**C-x, b**) (Рис.16)  
![Рис.16](images/switchbuf2.png) Рис.16  
8. Управление окнами. Делим фрейм на 4 части:  на два окна по вертикали
(**C-x 3**), а затем каждое из этих окон на две части по горизонтали (**C-x 2**) (Рис.17)  
![Рис.17](images/quadsplit.png) Рис.17  
9. Режим поиска
9.1. Переключимся в режим поиска (**C-s**) и найдём несколько слов, присутствующих в тексте. (Рис.18, 19)  
![Рис.18](images/searchfor.png) Рис.18  
![Рис.19](images/searchresult.png) Рис.19  
9.2. Нажимая **С-s** переключимся между результатами поиска (Рис.20)  
![Рис.20](images/searchresult2.png) Рис.20  
9.3. Выйдем из режима поиска, нажав **С-g**  
9.4. Перейдем в режим поиска и замены (**М-%**), введем текст, который следует заменить, а потом, после нажатия **Enter**, введем текст для замены. После того, как будут подсвечены результаты поиска, нажмем **!** для подтверждения замены. (Рис.21, 22)  
![Рис.21](images/replace.png) Рис.21  
![Рис.22](images/replaced.png) Рис.22  
9.5. Испробуем другой режим поиска, нажав **M-s o** (Рис.23, 24). Его отличие в том, что он выводит все результаты в отдельном окне с номером строки, в которой было найдено совпадение.  
![Рис.23](images/differentsearch.png) Рис.23  
![Рис.24](images/differentsearchresult.png) Рис.24  

# Контрольные вопросы

1. Emacs − один из наиболее мощных и широко распространённых
редакторов, используемых в мире Unix. По популярности он
соперничает с редактором vi и его клонами. В зависимости от ситуации,
Emacs может быть:
    - текстовым редактором;
    - программой для чтения почты и новостей Usenet;
    - интегрированной средой разработки (IDE);
    - операционной системой и т.д.  
Всё это разнообразие достигается благодаря архитектуре Emacs,
которая позволяет расширять возможности редактора при помощи
языка Emacs Lisp. На языке C написаны лишь самые базовые и
низкоуровневые части Emacs, включая полнофункциональный 
интерпретатор языка Lisp. Таким образом, Emacs имеет встроенный
язык программирования, который может использоваться для настройки,
расширения и изменения поведения редактора. В действительности,
большая часть того редактора, с которым пользователи Emacs работают
в наши дни, написана на языке Lisp.
2. Основную трудность для новичков при освоении данного редактора
могут составлять большое количество команд, комбинаций клавиш,
которые не получится все запомнить с первого раза, из-за чего придется
часто обращаться к справочным материалам.
3. Буфер – это объект, представляющий собой текст. Если имеется
несколько буферов, то редактировать можно только один. Обычно буфер
считывает данные из файла или записывает в файл данные из буфера.
Окно – это область экрана, отображающая буфер. При запуске редактора
отображается одно окно, но при обращении к некоторым функциям
могут открыться дополнительные окна. Окна Emacs и окна графической
среды X Window – разные вещи. Одно окно X Window может быть
разбито на несколько окон в смысле Emacs, в каждом из которых
отображается отдельный буфер.
4. Да, можно.
5. При запуске Emacs по умолчанию создаются следующие буферы:
    - **scratch** (буфер для несохраненного текста)
    - **Messages** (журнал ошибок, включающий также информацию,
которая появляется в области EchoArea)
    - **GNU Emacs** (справочный буфер о редакторе)
6. **C-c |** - сначала, удерживая **ctrl**, нажимаю **c**, после – отпускаю обе
клавиши и нажимаю **|**  
**C-c C-|** сначала, удерживая **ctrl**, нажимаю **с**, после – отпускаю обе
клавиши и, удерживая **ctrl**, нажимаю **|**
7. Чтобы поделить окно на две части необходимо воспользоваться
комбинацией **Ctrl-x 3** (по вертикали) или **Ctrl-x 2** (по горизонтали).
8) Настройки Emacs хранятся в файле .emacs.
9. По умолчанию клавиша **←** удаляет символ перед курсором, но в
редакторе её можно переназначить. Для этого необхдимо изменить
конфигурацию файла **.emacs**.
10. Более удобным редактором для меня является **emacs**, т.к. в нем нет разделения на режимы работы, что упрощает обращение с ним, а также возможность разделения окна и открытия нескольких файлов за раз может быть очень полезной.

# Вывод
В ходе выплнения лабораторной работы я получил практические навыки работы с редактором Emacs.