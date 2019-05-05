#### Initialize

crgflg    equ $0037
crgint 	equ $0038
rtictl 	equ $003b
rtiadd 	equ $0ff0
isradd 	equ $0B00
outstrg   equ $ff5e
stktop 	equ $0E00
ten       equ $1220
rtie 	equ $80 	
rtif 	equ $80
rtr 	equ $71

#### Data Section

          org 	$0800
strt 	dc.b 	"START",$04
stp 	dc.b 	"STOP",$04
rticntr 	ds.b 	2

#### Program Section

        org 	$0A00
start   lds 	#stktop
        ldd 	#isradd
        std 	rtiadd
        ldd 	#ten
        std 	rticntr
        ldaa 	#rtie
        staa 	crgint
        ldx 	#strt
        jsr 	outstrg
        ldaa 	#rtr 		
        staa 	rtictl	
        cli			
here    bra 	here
        swi
        
#### ISR for RTI system

        org 	$0B00
        ldaa 	#rtif 
        staa 	crgflg 	
        ldx 	rticntr
        dex
        bne 	notyet
        ldx 	#stp
        jsr 	outstrg
        ldx 	#ten
notyet  stx 	rticntr
done    rti
        end

