for {set i 0} {$i < 20} {incr i} {
	for {set j 0} {$j < 50} {incr j} {
		puts -nonewline "l[expr 50*$i + $j] "
	}
	puts "\n"
}