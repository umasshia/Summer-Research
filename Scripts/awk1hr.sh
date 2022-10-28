#!/usr/bin/awk -f

BEGIN{fsum=0; isum = 0}
        $2~/futex/{fsum = fsum + $1}
        $2~/ioctl/{isum = isum + $1}
END{
        if(fsum < 20) print "A"
        else if(NR < 7) print "D"
        else if(isum > 10) print "B"
        else print "C"
}
