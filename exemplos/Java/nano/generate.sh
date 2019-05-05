files=`ls *.class`

for i in $files
do
	name=$( echo "$i" | cut -f 1 -d '.'  )
	echo 'Generating ' ${name} ' ...'
	generate-dot-j $i > $name.j
done;
