nflag=""	#Присвоение переменной nflag пустой строки
Cflag="-i"	#Присвоение переменной Cflag оператора -i команды grep
while getopts i:o:p:Cn optletter; do	#Чтение всех операторов
    case $optletter in
	i) ival=$OPTARG;;	#Присвоение переменной имени входного файла
	o) oval=$OPTARG;;	#Присвоение переменной имени выходного файла
	p) pval=$OPTARG;;	#Присвоение переменной шаблона поиска
	C) Cflag="";;		#Удаление из переменной оператора -i
	n) nflag="-n";;		#Присвоение оператора -n команды grep для вывода номера строки
	*) echo "Illegal option $optletter"	#Вывод ошибки при попытке ввести непредусмотренные операторы
    esac
done

if [ -z $ival ]; then
    echo "No input file"; exit	#Следующие три if - сообщения об ошибках, связанных с недостаточностью введенных данных
fi

if [ -z $oval ]; then
    echo "No output file"; exit
fi

if [ -z $pval ]; then
    echo "No pattern"; exit
fi

grep $nflag $Cflag $pval $ival > $oval	#Вывод в файл output результата работы команды grep c заданными параметрами