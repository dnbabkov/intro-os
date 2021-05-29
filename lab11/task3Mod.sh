print_perm() {			#Функция для определения разрешений файла
  case "$1" in
    0) printf "NO PERMISSIONS";;
    1) printf "Execute only";;
    2) printf "Write only";;
    3) printf "Write & execute";;
    4) printf "Read only";;
    5) printf "Read & execute";;
    6) printf "Read & write";;
    7) printf "Read & write & execute";;
  esac
}

path=$1				#Переменной path присваивается значение первого оператора - 

for f in $path/*; 		#Проходятся все файлы, рассположенные в директории, в которую ведет путь
do 
    perm=$(stat -c%a "$f")	#Передается информация о разрешениях
    user=${perm:0:1}		#Разрешения пользователя
    group=${perm:1:1}		#Группы
    global=${perm:2:1}		#Других

    b=$(basename $f)	#Переменной b присваивается имя файла (без пути)
    echo $b		#Выводится имя файла
    printf "\tOwner Access: $(print_perm $user)\n"	#Вызывается ранее описанная функция
    printf "\tGroup Access: $(print_perm $group)\n"
    printf "\tOthers Access: $(print_perm $global)\n"
    echo ""
done
