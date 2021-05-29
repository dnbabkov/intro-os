while getopts i:o:p:Cn optletter; do
    case $optletter in
	i) iflag=1; ival=$OPTARG;;
	o) oflag=1; oval=$OPTARG;;
	p) pflag=1; pval=$OPTARG;;
	C) Cflag=1;;
	n) nflag=1;;
	*) echo Illegal option $optletter
    esac
done

if [ $iflag -eq 1 ]; then
    echo "-i flag: $ival"
fi

if [ $oflag -eq 1 ]; then
    echo "-o flag: $oval"
fi

if [ $pflag -eq 1 ]; then
    echo "-p flag: $pval"
fi

if [ $Cflag -eq 1 ]; then
    echo "-C flag specified"
fi

if [ $nflag -eq 1 ]; then
    echo "-n flag specified"
fi

