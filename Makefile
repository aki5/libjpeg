
LIBJPEG_OFILES=\
	cdjpeg.o\
	jaricom.o\
	jcapimin.o\
	jcapistd.o\
	jcarith.o\
	jccoefct.o\
	jccolor.o\
	jcdctmgr.o\
	jchuff.o\
	jcinit.o\
	jcmainct.o\
	jcmarker.o\
	jcmaster.o\
	jcomapi.o\
	jcparam.o\
	jcprepct.o\
	jcsample.o\
	jctrans.o\
	jdapimin.o\
	jdapistd.o\
	jdarith.o\
	jdatadst.o\
	jdatasrc.o\
	jdcoefct.o\
	jdcolor.o\
	jddctmgr.o\
	jdhuff.o\
	jdinput.o\
	jdmainct.o\
	jdmarker.o\
	jdmaster.o\
	jdmerge.o\
	jdpostct.o\
	jdsample.o\
	jdtrans.o\
	jerror.o\
	jfdctflt.o\
	jfdctfst.o\
	jfdctint.o\
	jidctflt.o\
	jidctfst.o\
	jidctint.o\
	jmemansi.o\
	jmemnobs.o\
	jpegtran.o\
	jquant1.o\
	jquant2.o\
	jutils.o\
	rdbmp.o\
	rdcolmap.o\
	rdgif.o\
	rdppm.o\
	rdswitch.o\
	rdtarga.o\
	transupp.o\
	wrbmp.o\
	wrgif.o\
	wrppm.o\
	wrtarga.o\
	jmemmgr.o\

	#jmemname.o\
	#wrrle.o\
	#rdrle.o\
	#jmemdos.o\
	#jmemmac.o\


LIBJPEG_HFILES=\
	cderror.h\
	cdjpeg.h\
	jconfig.h\
	jdct.h\
	jerror.h\
	jinclude.h\
	jmemsys.h\
	jmorecfg.h\
	jpegint.h\
	jpeglib.h\
	jversion.h\
	transupp.h\

LIBJPEG_PROGS=\
	cjpeg\
	djpeg\
	jpegtran\
	rdjpgcom\
	wrjpgcom\

#	ckconfig\

LIBJPEG_LIBS=\
	libjpeg.a\

all: $(LIBJPEG_PROGS) $(LIBJPEG_LIBS)

$(LIBJPEG_LIBS): $(LIBJPEG_OFILES)
	$(AR) r $@ $(LIBJPEG_OFILES)

$(LIBJPEG_OFILES): $(LIBJPEG_HFILES)

cjpeg: cjpeg.o $(LIBJPEG_LIBS)
	$(CC) -o $@ cjpeg.o $(LIBJPEG_LIBS)

djpeg: djpeg.o $(LIBJPEG_LIBS)
	$(CC) -o $@ djpeg.o $(LIBJPEG_LIBS)

jpegtran: jpegtran.o $(LIBJPEG_LIBS)
	$(CC) -o $@ jpegtran.o $(LIBJPEG_LIBS)

rdjpgcom: rdjpgcom.o $(LIBJPEG_LIBS)
	$(CC) -o $@ rdjpgcom.o $(LIBJPEG_LIBS)

wrjpgcom: wrjpgcom.o $(LIBJPEG_LIBS)
	$(CC) -o $@ wrjpgcom.o $(LIBJPEG_LIBS)

ckconfig: ckconfig.o $(LIBJPEG_LIBS)
	$(CC) -o $@ ckconfig.o $(LIBJPEG_LIBS)

clean:
	rm -f $(LIBJPEG_PROGS) $(LIBJPEG_LIBS) *.o

