files=`ls *.j`

for i in $files
do
	name=$( echo "$i" | cut -f 1 -d '.'  )
	echo 'Compiling ' ${name} '...'
	run-jasmin $i
done;
