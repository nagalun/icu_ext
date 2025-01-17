EXTENSION  = icu_ext
EXTVERSION = 1.7

PG_CONFIG = pg_config

DATA = $(wildcard sql/icu_*.sql)

MODULE_big = icu_ext
OBJS = icu_ext.o icu_break.o icu_num.o icu_spoof.o icu_transform.o \
	icu_search.o icu_normalize.o
SHLIB_LINK = $(ICU_LIBS)
REGRESS   = tests-01
EXTRA_CLEAN = expected/tests.out

all:


PGXS := $(shell $(PG_CONFIG) --pgxs)
include $(PGXS)
