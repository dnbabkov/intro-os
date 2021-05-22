---
# Front matter
lang: ru-RU
title: "Лабораторная работа №7"
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

# Цель работы:

Ознакомление с инструментами поиска файлов и фильтрации текстовых данных. Приобретение практических навыков: по управлению процессами (и заданиями), по проверке использования диска и обслуживанию файловых систем.  

# Задание:

Ознакомиться с инструментами поиска файлов и фильтрации текстовых данных. Приобрести практическе навыки: по управлению процессами (и заданиями), по проверке использования диска и обслуживанию файловых систем.  

# Ход работы:

1. Осуществим вход в систему (Рис.1)  
![Рис.1](images/LogIn.png){Рис.1}  

2. Запишем в файл file.txt названия файлов, содержащихся в каталоге /etc.
В этот же файл допишем названия файлов, содержащихся в домашнем каталоге (Рис.2, 3).  
![Рис.2](images/writetofiletxt.png){Рис.2}  
![Рис.3](images/writetofiletxt2.png){Рис.3}  

3. Выведем имена всех файлов из file.txt, имеющих расширение .conf, после чего запишем их в новый текстовый файл conf.txt (Рис.4):  
![Рис.4](images/conftxt.png){Рис.4}  

4. Определим, какие файлы в вашем домашнем каталоге имеют имена, начинавшиеся с символа c. Это можно сделать несколькими способами: командой **ls -l c*** и конвейером **ls -l | grep " c"** (Рис.5)  
![Рис.5](images/startswithc.png){Рис.5}  

5. Выведем на экран (по странично) имена файлов из каталога /etc, начинающиеся с символа h (Рис.6):  
![Рис.6](images/pagewisealletcwh.png){Рис.6}  

6. Запустим в фоновом режиме процесс, который будет записывать в файл **~/logfile** файлы, имена которых начинаются с log (Рис.7):  
![Рис.7](images/alllogtologfile.png){Рис.7}  

7. Удалим logfile (Рис.8):  
![Рис.8](images/rmlogfile.png){Рис.8}  

8. Запустим из консоли в фоновом режиме редактор gedit, определим идентификатор процесса с помощью команды **ps | grep gedit** и закончим процесс командой **kill**, предварительно прочитав о ней в справке (Рис.9, 10). Идентификатор можно было определить просто посмотрев на вывод после команды **gedit**  
![Рис.9](images/mankill.png){Рис.9}  
![Рис.10](images/geditstartandkill.png){Рис.10}  

9. Выполним команды df и du, предварительно получив более подробную информацию об этих командах, с помощью команды man (Рис.11, 12, 13, 14).  
![Рис.11](images/mandf.png){Рис.11}  
![Рис.12](images/df.png){Рис.12}  
![Рис.13](images/mandu.png){Рис.13}  
![Рис.14](images/du.png){Рис.14}  

10. Воспользовавшись справкой команды find, выведем имена всех директорий,
имеющихся в домашнем каталоге (Рис.15, 16).  
![Рис.15](images/manfind.png){Рис.15}  
![Рис.16](images/findtyped.png){Рис.16}  

# Вывод:

Я ознакомился с инструментами поиска файлов и фильтрации текстовых данных, а также приобрел практическе навыки по управлению процессами (и заданиями), проверке использования диска и обслуживанию файловых систем.  