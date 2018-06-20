SHELL   = /usr/bin/env sh
FC	= gfortran 
FLAGS	= -Wall -Wextra -Wconversion -O3
SOURCES = main.f
TARGET  = bubblesort
BINDIR	= /usr/local/bin

all:
	$(FC) $(FLAGS) $(SOURCES) -o $(TARGET)

install:
	install $(TARGET) $(BINDIR)/$(TARGET)

uninstall:
	-rm $(BINDIR)/$(TARGET)

clean:
	-rm -f $(TARGET)
