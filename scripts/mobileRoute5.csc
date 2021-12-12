set sensorN 0
set distance 1900
set total_vibrations 0
set media 0
set entreiIf 0
loop
wait
read d
rdata $d x n r
plus total_vibrations $total_vibrations $x
plus sensorN $sensorN 1
if($n == 1)
	div media $total_vibrations $sensorN
	print $sensorN $media $total_vibrations
	stop
end