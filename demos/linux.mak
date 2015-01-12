# =========================================================================
#     This makefile was generated by
#     Bakefile 0.2.9 (http://www.bakefile.org)
#     Do not modify, all changes will be overwritten!
# =========================================================================



# -------------------------------------------------------------------------
# These are configurable options:
# -------------------------------------------------------------------------

#  
AR ?= ar

#  
RANLIB ?= ranlib

# C compiler 
CC = gcc

# Standard flags for CC 
CFLAGS ?= 

# Standard preprocessor flags (common for CC and CXX) 
CPPFLAGS ?= 

# Standard linker flags 
LDFLAGS ?= 

# Set to 1 to build debug version [0,1]
DEBUG ?= 0



# -------------------------------------------------------------------------
# Do not modify the rest of this file!
# -------------------------------------------------------------------------

### Variables: ###

CPPDEPS = -MT$@ -MF`echo $@ | sed -e 's,\.o$$,.d,'` -MD -MP
LEVAWC_CFLAGS = $(____DEBUG) $(____DEBUG_26) $(____DEBUG_29) -I./.. $(CPPFLAGS) \
	$(CFLAGS)
LEVAWC_OBJECTS =  \
	levawc_slist.o \
	levawc_dlist.o \
	levawc_stack.o \
	levawc_queue.o \
	levawc_chashtbl.o \
	levawc_pqueue.o \
	levawc_heap.o \
	levawc_bitree.o \
	levawc_avltree.o \
	levawc_cslist.o \
	levawc_set.o \
	levawc_ohashtbl.o \
	levawc_utils.o
DEMO1_CFLAGS = $(____DEBUG) $(____DEBUG_26) $(____DEBUG_29) -I./.. $(CPPFLAGS) \
	$(CFLAGS)
DEMO1_OBJECTS =  \
	demo1_demo1.o
DEMO2_CFLAGS = $(____DEBUG) $(____DEBUG_26) $(____DEBUG_29) -I./.. $(CPPFLAGS) \
	$(CFLAGS)
DEMO2_OBJECTS =  \
	demo2_demo2.o
DEMO3_CFLAGS = $(____DEBUG) $(____DEBUG_26) $(____DEBUG_29) -I./.. $(CPPFLAGS) \
	$(CFLAGS)
DEMO3_OBJECTS =  \
	demo3_demo3.o
DEMO4_CFLAGS = $(____DEBUG) $(____DEBUG_26) $(____DEBUG_29) -I./.. $(CPPFLAGS) \
	$(CFLAGS)
DEMO4_OBJECTS =  \
	demo4_demo4.o
DEMO5_CFLAGS = $(____DEBUG) $(____DEBUG_26) $(____DEBUG_29) -I./.. $(CPPFLAGS) \
	$(CFLAGS)
DEMO5_OBJECTS =  \
	demo5_demo5.o
DEMO6_CFLAGS = $(____DEBUG) $(____DEBUG_26) $(____DEBUG_29) -I./.. $(CPPFLAGS) \
	$(CFLAGS)
DEMO6_OBJECTS =  \
	demo6_demo6.o
DEMO7_CFLAGS = $(____DEBUG) $(____DEBUG_26) $(____DEBUG_29) -I./.. $(CPPFLAGS) \
	$(CFLAGS)
DEMO7_OBJECTS =  \
	demo7_demo7.o
DEMO8_CFLAGS = $(____DEBUG) $(____DEBUG_26) $(____DEBUG_29) -I./.. $(CPPFLAGS) \
	$(CFLAGS)
DEMO8_OBJECTS =  \
	demo8_demo8.o
DEMO9_CFLAGS = $(____DEBUG) $(____DEBUG_26) $(____DEBUG_29) -I./.. $(CPPFLAGS) \
	$(CFLAGS)
DEMO9_OBJECTS =  \
	demo9_demo9.o
DEMO10_CFLAGS = $(____DEBUG) $(____DEBUG_26) $(____DEBUG_29) -I./.. $(CPPFLAGS) \
	$(CFLAGS)
DEMO10_OBJECTS =  \
	demo10_demo10.o

### Conditionally set variables: ###

ifeq ($(DEBUG),0)
____DEBUG = -DNDEBUG
endif
ifeq ($(DEBUG),1)
____DEBUG = 
endif
ifeq ($(DEBUG),0)
____DEBUG_26 = -O2
endif
ifeq ($(DEBUG),1)
____DEBUG_26 = -O0
endif
ifeq ($(DEBUG),0)
____DEBUG_29 = 
endif
ifeq ($(DEBUG),1)
____DEBUG_29 = -g
endif


### Targets: ###

all: liblevawc.a demo1 demo2 demo3 demo4 demo5 demo6 demo7 demo8 demo9 demo10

install: 

uninstall: 

clean: 
	rm -f ./*.o
	rm -f ./*.d
	rm -f liblevawc.a
	rm -f demo1
	rm -f demo2
	rm -f demo3
	rm -f demo4
	rm -f demo5
	rm -f demo6
	rm -f demo7
	rm -f demo8
	rm -f demo9
	rm -f demo10

liblevawc.a: $(LEVAWC_OBJECTS)
	rm -f $@
	$(AR) rcu $@ $(LEVAWC_OBJECTS)
	$(RANLIB) $@

demo1: $(DEMO1_OBJECTS) liblevawc.a
	$(CC) -o $@ $(DEMO1_OBJECTS)  $(____DEBUG_29) $(LDFLAGS)  liblevawc.a

demo2: $(DEMO2_OBJECTS) liblevawc.a
	$(CC) -o $@ $(DEMO2_OBJECTS)  $(____DEBUG_29) $(LDFLAGS)  liblevawc.a

demo3: $(DEMO3_OBJECTS) liblevawc.a
	$(CC) -o $@ $(DEMO3_OBJECTS)  $(____DEBUG_29) $(LDFLAGS)  liblevawc.a

demo4: $(DEMO4_OBJECTS) liblevawc.a
	$(CC) -o $@ $(DEMO4_OBJECTS)  $(____DEBUG_29) $(LDFLAGS)  liblevawc.a

demo5: $(DEMO5_OBJECTS) liblevawc.a
	$(CC) -o $@ $(DEMO5_OBJECTS)  $(____DEBUG_29) $(LDFLAGS)  liblevawc.a

demo6: $(DEMO6_OBJECTS) liblevawc.a
	$(CC) -o $@ $(DEMO6_OBJECTS)  $(____DEBUG_29) $(LDFLAGS)  liblevawc.a

demo7: $(DEMO7_OBJECTS) liblevawc.a
	$(CC) -o $@ $(DEMO7_OBJECTS)  $(____DEBUG_29) $(LDFLAGS)  liblevawc.a

demo8: $(DEMO8_OBJECTS) liblevawc.a
	$(CC) -o $@ $(DEMO8_OBJECTS)  $(____DEBUG_29) $(LDFLAGS)  liblevawc.a

demo9: $(DEMO9_OBJECTS) liblevawc.a
	$(CC) -o $@ $(DEMO9_OBJECTS)  $(____DEBUG_29) $(LDFLAGS)  liblevawc.a

demo10: $(DEMO10_OBJECTS) liblevawc.a
	$(CC) -o $@ $(DEMO10_OBJECTS)  $(____DEBUG_29) $(LDFLAGS)  liblevawc.a

levawc_slist.o: ./../slist.c
	$(CC) -c -o $@ $(LEVAWC_CFLAGS) $(CPPDEPS) $<

levawc_dlist.o: ./../dlist.c
	$(CC) -c -o $@ $(LEVAWC_CFLAGS) $(CPPDEPS) $<

levawc_stack.o: ./../stack.c
	$(CC) -c -o $@ $(LEVAWC_CFLAGS) $(CPPDEPS) $<

levawc_queue.o: ./../queue.c
	$(CC) -c -o $@ $(LEVAWC_CFLAGS) $(CPPDEPS) $<

levawc_chashtbl.o: ./../chashtbl.c
	$(CC) -c -o $@ $(LEVAWC_CFLAGS) $(CPPDEPS) $<

levawc_pqueue.o: ./../pqueue.c
	$(CC) -c -o $@ $(LEVAWC_CFLAGS) $(CPPDEPS) $<

levawc_heap.o: ./../heap.c
	$(CC) -c -o $@ $(LEVAWC_CFLAGS) $(CPPDEPS) $<

levawc_bitree.o: ./../bitree.c
	$(CC) -c -o $@ $(LEVAWC_CFLAGS) $(CPPDEPS) $<

levawc_avltree.o: ./../avltree.c
	$(CC) -c -o $@ $(LEVAWC_CFLAGS) $(CPPDEPS) $<

levawc_cslist.o: ./../cslist.c
	$(CC) -c -o $@ $(LEVAWC_CFLAGS) $(CPPDEPS) $<

levawc_set.o: ./../set.c
	$(CC) -c -o $@ $(LEVAWC_CFLAGS) $(CPPDEPS) $<

levawc_ohashtbl.o: ./../ohashtbl.c
	$(CC) -c -o $@ $(LEVAWC_CFLAGS) $(CPPDEPS) $<

levawc_utils.o: ./../utils.c
	$(CC) -c -o $@ $(LEVAWC_CFLAGS) $(CPPDEPS) $<

demo1_demo1.o: ./demo1.c
	$(CC) -c -o $@ $(DEMO1_CFLAGS) $(CPPDEPS) $<

demo2_demo2.o: ./demo2.c
	$(CC) -c -o $@ $(DEMO2_CFLAGS) $(CPPDEPS) $<

demo3_demo3.o: ./demo3.c
	$(CC) -c -o $@ $(DEMO3_CFLAGS) $(CPPDEPS) $<

demo4_demo4.o: ./demo4.c
	$(CC) -c -o $@ $(DEMO4_CFLAGS) $(CPPDEPS) $<

demo5_demo5.o: ./demo5.c
	$(CC) -c -o $@ $(DEMO5_CFLAGS) $(CPPDEPS) $<

demo6_demo6.o: ./demo6.c
	$(CC) -c -o $@ $(DEMO6_CFLAGS) $(CPPDEPS) $<

demo7_demo7.o: ./demo7.c
	$(CC) -c -o $@ $(DEMO7_CFLAGS) $(CPPDEPS) $<

demo8_demo8.o: ./demo8.c
	$(CC) -c -o $@ $(DEMO8_CFLAGS) $(CPPDEPS) $<

demo9_demo9.o: ./demo9.c
	$(CC) -c -o $@ $(DEMO9_CFLAGS) $(CPPDEPS) $<

demo10_demo10.o: ./demo10.c
	$(CC) -c -o $@ $(DEMO10_CFLAGS) $(CPPDEPS) $<

.PHONY: all install uninstall clean


# Dependencies tracking:
-include ./*.d
