CC=gcc
CXX=g++
RM=rm -rf
OUT=ShipTest
ODIR=Debug
SRCS=src/ShipTest.cpp
OBJS=$(subst .cpp,.o,$(SRCS))

ShipTest: $(OBJS)
	@echo 'Building target: $@'
	@echo 'Invoking: GCC C++ Linker'
	$(CXX) -o $(ODIR)/$(OUT) $(OBJS) 
	@echo 'Finished building target: $@'
	@echo ' '

clean:
	$(RM) $(OBJS)
	$(RM) $(ODIR)/$(OUT)
distclean:
	$(RM) $(ODIR)

