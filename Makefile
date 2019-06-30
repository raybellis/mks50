PROJ	= mks50

${PROJ}.bin:	${PROJ}.hex
	hexbin $(^) $(@)

${PROJ}.hex:	${PROJ}.asm
	asem ${^}

clean:
	$(RM) ${PROJ}.hex ${PROJ}.lst ${PROJ}.bin
