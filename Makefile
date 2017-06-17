PREFIX	=/opt
BINDIR	=${PREFIX}/bin

all::	dd-asmlabels

check::	dd-asmlabels sample-dd.txt
	./dd-asmlabels sample-dd.txt

clean::

distclean clobber:: clean

install:: dd-asmlables
	install -D -c dd-asmlabels ${BINDIR}/dd-asmlabels

uninstall::
	${RM} ${BINDIR}/dd-asmlabels
