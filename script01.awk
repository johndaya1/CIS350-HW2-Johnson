#! /bin/gawk -f
BEGIN{
	count=0
	average=0
	hybridcount=0
	FS=","
}
$4 < 30000 && $4 ~ /[[:digit:]]/ {
	count+=1
}
$5 ~ /hybrid/ && $6 == 4 {
	hybridcount+=1
	average = average + $4
}
END{
	print "inexpensive count =",count
	print "average =",average/hybridcount
}
