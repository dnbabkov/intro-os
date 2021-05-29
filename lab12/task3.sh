num=0
while getopts c:d ol	#Поиск операторов
do
case $ol in
    c)num=$OPTARG;;	#Кол-во файлов, которое нужно создать
    d)del=true;;	#Файлы должны быть удалены
    *)echo "Wait, that's illegal!"	#Анализ некорректных операторов
esac
done

if [ $num -gt 0 ]	#Создание файлов, если кол-во не равно нулю
then for (( i=1; i<=$num; i++ ))
    do
	touch ${i}.tmp
    done
fi

if [ "$del" = true ]	#Удаление всех файлов с расширением .tmp, если это нужно
then rm *.tmp
fi