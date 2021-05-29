path=$1			#Присвоение переменной первого параметра (путь)
ext=$2			#Присвоение переменной второго параметра (расширение)
count=0			#Счетчик
for f in $path/*$ext	#Цикл, идущий по всем файлам, в директории path с расширением ext
do
    b=$(basename $f)	#Присвоение переменной имени файла без пути
    echo $b		#Вывод файла с заданным расширением
    ((count++))		#Инкриментирование счетчика
done
echo $count		#Вывод кол-ва файлов с заданным расширением
