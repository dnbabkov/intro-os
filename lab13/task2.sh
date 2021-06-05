c=$1					#Название искомой команды
path="/usr/share/man/man1/"		#Путь к справкам по командам
if [ -f $path$c.1.gz ]			#Проверка существования справки по команде
then
    gunzip -c $path$c.1.gz | less	#Вывод справки
else
    echo "No reference abailable"	#Вывод сообщения
fi