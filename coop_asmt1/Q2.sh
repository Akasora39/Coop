
for file in `ls *.txt`
do
	lines=$(cat $file | wc -l)
	if [ $lines -eq 0 ]
	then
		rm $file
	elif [ $lines -lt 10 ]
	then
		mv $file short_$file
	elif [ $lines -le 20 ]
	then
		mv $file medium_$file
	else
		mv $file long_$file
	fi
done
