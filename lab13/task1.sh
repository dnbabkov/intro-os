lock=/tmp/resource		#Путь к "ресурсу"
t1=$1				#Время ожидания (первый аргумент)
t2=$2				#Время выполнения (второй аргумент)
while true			#Бесконечный цикл
    do
    if [ -f $lock ]		#Проверка занятости "ресурса"
    then
	echo "Please, free resource"	#Сообщение о занятости "ресурса"
	for (( i=1; i<=t1; i++))	#Цикл ожидания
	do
	    echo "Resource occupied by another process" #Сообщение о занятости "ресурса"
	    sleep 1					#Секундное ожидание
	    if [ ! -f $lock ]				#Проверка занятости "ресурса"
	    then
		break					#Выход из цикла, если "ресурса" нет
	    fi
	done
    else
	break						#Выход из цикла, если "ресурса" нет
    fi
done
touch $lock						#Занятие "ресурса"
for (( i=1; i<=t2; i++))				#Цикл выполнения
do
    echo "Using resource"
    sleep 1
done
rm $lock						#Освобождение "ресурса" по завершении работы