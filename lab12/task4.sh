path=$1			#Имя директории, файлы которой нужно запаковать
arcName="dirArch.tar"

if [ -z $path ]; then	#Проверка на наличие пути
    echo "No path"
    exit
fi

tar -cvf $arcName -T /dev/null	#Создание пустого архива
tar -rvf $arcName `find $path -type f -mtime -7 -not -name "$arcName*"`	#Архивирование файлов директории, которые были изменены менее недели назад, исключая сам архив

gzip $arcName	#Сжатие ахива