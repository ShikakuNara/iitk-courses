if (( $# > 1 )); then
	echo "${@:2} Arguments Ignored"
fi

file="nakshatras.txt"
if (( $# > 0 )); then
	file="$1"
fi

cat $file | awk '{ for(i=0; i<4; i++) print $1","$2 }' > phase1.txt
