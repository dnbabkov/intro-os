path=$1
arcName="t4arc.gz"

tar -zcvf $arcName `find $path -type f`
