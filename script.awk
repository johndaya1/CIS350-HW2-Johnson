#! /bin/gawk -f
BEGIN{
	pools=0
	price=0
	houses=0
	FS=","
}
$3 ~ /yes/{
	pools+=1
}
$1 >= 4{
	houses+=1
	price+= $4


END{
	print "pool count = ",pools
	print "averave 4+ beds = ",price/houses
}
