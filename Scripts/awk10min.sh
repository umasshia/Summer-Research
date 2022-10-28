#!/usr/bin/awk -f

BEGIN{fsum=0; check = 0}
        $2~/futex/{fsum = fsum + $1}
        $4~/0x7fff6a1ec1d0/{check = check + 1}
        $4~/0x7fff6a1ec230/{check = check + 1}
END{
        if(fsum < 5) print "A"
        else if(check == 2) {
                if(fsum < 110) print "C"
                else print "B";
                }
        else print "D"
}
