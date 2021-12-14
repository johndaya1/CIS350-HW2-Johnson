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
$1 > 3{
	houses+=1
	price+= $4

}
END{
	print "Pool count =",pools
	print "Average 4+ beds =",price/houses
}
