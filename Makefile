A=data 1 2 3 5
CODE='(let((*load-verbose*())(*load-print*()))(load"run"))'
all:
	sbcl --noinform --eval $(CODE)    $A
	ecl             --eval $(CODE) -- $A
	ccl64           --eval $(CODE) -- $A
clean:;rm -fr *~
