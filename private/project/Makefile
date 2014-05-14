CC     = gcc
CFLAGS = -g
LFLAGS =

HDRS   = sag-api.h crcmodel.h wrappers.h
SAGOBJ = sag-api.o
LSTOBJ = list.o
CRCOBJS = crc-api.o crcmodel.o
SERVOBJS = sink.o
CLITOBJS = source.o
WRPOBJ  = wrappers.o
OBJS     = $(SERVOBJS) $(CLITOBJS) $(WRPOBJ) $(CRCOBJS) $(SAGOBJ) $(LSTOBJ)


EXECS    = source sink 

all: $(EXECS)

%.o: %.c $(HDRS)
	$(CC) -c $(CFLAGS) $<

sink: $(SERVOBJS) $(WRPOBJ) $(CRCOBJS) $(SAGOBJ) $(LSTOBJ)
	$(CC) -o $@ $(SERVOBJS) $(LFLAGS) $(WRPOBJ) $(CRCOBJS) $(SAGOBJ) $(LSTOBJ)

source: $(CLITOBJS) $(WRPOBJ) $(SAGOBJ) $(CRCOBJS) $(LSTOBJ)
	$(CC) -o $@ $(CLITOBJS) $(LFLAGS) $(WRPOBJ) $(SAGOBJ) $(CRCOBJS) $(LSTOBJ)

clean:
	/bin/rm -f $(OBJS) $(EXECS) core* *~ semantic.cache

