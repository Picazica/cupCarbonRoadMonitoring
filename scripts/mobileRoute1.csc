set nOfGeneratedVibrations 0
set total_vibrations 0
set average 0
loop
wait
read d
rdata $d x n r
plus total_vibrations $total_vibrations $x
plus nOfGeneratedVibrations $nOfGeneratedVibrations 1
if($n == 1)
	div average $total_vibrations $nOfGeneratedVibrations 
	print $nOfGeneratedVibrations $average $total_vibrations
	stop
end