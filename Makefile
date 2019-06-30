PROJ	= mks50

all:	${PROJ}-2.1.bin ${PROJ}-custom.bin

${PROJ}-2.1.hex:	${PROJ}.asm
	asem ${^} ${@}

${PROJ}-custom.hex:	${PROJ}.asm
	asem -d CUSTOM ${^} ${@}

clean:
	$(RM) *.hex *.lst *.bin

.SUFFIXES: .hex .bin

.hex.bin:
	hexbin $(^) $(@)
