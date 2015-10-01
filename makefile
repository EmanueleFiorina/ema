#------------------------------------------------------------------------------#
# This makefile was generated by 'cbp2make' tool rev.147                       #
#------------------------------------------------------------------------------#


WORKDIR = %cd%

CC = gcc.exe
CXX = g++.exe
AR = ar.exe
LD = g++.exe
WINDRES = windres.exe

INC = 
CFLAGS = -Wall -fexceptions
RESINC = 
LIBDIR = 
LIB = 
LDFLAGS = 

INC_DEBUG = $(INC) -Iinclude
CFLAGS_DEBUG = $(CFLAGS) -std=c++11 -g
RESINC_DEBUG = $(RESINC)
RCFLAGS_DEBUG = $(RCFLAGS)
LIBDIR_DEBUG = $(LIBDIR)
LIB_DEBUG = $(LIB)
LDFLAGS_DEBUG = $(LDFLAGS)
OBJDIR_DEBUG = obj\\Debug
DEP_DEBUG = 
OUT_DEBUG = bin\\Debug\\simple_assembler_simulator.exe

INC_RELEASE = $(INC) -Iinclude
CFLAGS_RELEASE = $(CFLAGS) -O2
RESINC_RELEASE = $(RESINC)
RCFLAGS_RELEASE = $(RCFLAGS)
LIBDIR_RELEASE = $(LIBDIR)
LIB_RELEASE = $(LIB)
LDFLAGS_RELEASE = $(LDFLAGS) -s
OBJDIR_RELEASE = obj\\Release
DEP_RELEASE = 
OUT_RELEASE = bin\\Release\\simple_assembler_simulator.exe

OBJ_DEBUG = $(OBJDIR_DEBUG)\\src\\add.o $(OBJDIR_DEBUG)\\src\\assembly_error.o $(OBJDIR_DEBUG)\\src\\beq.o $(OBJDIR_DEBUG)\\src\\bge.o $(OBJDIR_DEBUG)\\src\\bgt.o $(OBJDIR_DEBUG)\\src\\ble.o $(OBJDIR_DEBUG)\\src\\blt.o $(OBJDIR_DEBUG)\\src\\bne.o $(OBJDIR_DEBUG)\\src\\branch.o $(OBJDIR_DEBUG)\\src\\computer.o $(OBJDIR_DEBUG)\\src\\end.o $(OBJDIR_DEBUG)\\src\\instruction.o $(OBJDIR_DEBUG)\\src\\instructionsfactory.o $(OBJDIR_DEBUG)\\src\\load.o $(OBJDIR_DEBUG)\\src\\loadih.o $(OBJDIR_DEBUG)\\src\\loadil.o $(OBJDIR_DEBUG)\\src\\move.o $(OBJDIR_DEBUG)\\src\\program.o $(OBJDIR_DEBUG)\\src\\store.o $(OBJDIR_DEBUG)\\src\\utils.o $(OBJDIR_DEBUG)\\main.o

OBJ_RELEASE = $(OBJDIR_RELEASE)\\src\\add.o $(OBJDIR_RELEASE)\\src\\assembly_error.o $(OBJDIR_RELEASE)\\src\\beq.o $(OBJDIR_RELEASE)\\src\\bge.o $(OBJDIR_RELEASE)\\src\\bgt.o $(OBJDIR_RELEASE)\\src\\ble.o $(OBJDIR_RELEASE)\\src\\blt.o $(OBJDIR_RELEASE)\\src\\bne.o $(OBJDIR_RELEASE)\\src\\branch.o $(OBJDIR_RELEASE)\\src\\computer.o $(OBJDIR_RELEASE)\\src\\end.o $(OBJDIR_RELEASE)\\src\\instruction.o $(OBJDIR_RELEASE)\\src\\instructionsfactory.o $(OBJDIR_RELEASE)\\src\\load.o $(OBJDIR_RELEASE)\\src\\loadih.o $(OBJDIR_RELEASE)\\src\\loadil.o $(OBJDIR_RELEASE)\\src\\move.o $(OBJDIR_RELEASE)\\src\\program.o $(OBJDIR_RELEASE)\\src\\store.o $(OBJDIR_RELEASE)\\src\\utils.o $(OBJDIR_RELEASE)\\main.o

all: debug release

clean: clean_debug clean_release

before_debug: 
	cmd /c if not exist bin\\Debug md bin\\Debug
	cmd /c if not exist $(OBJDIR_DEBUG)\\src md $(OBJDIR_DEBUG)\\src
	cmd /c if not exist $(OBJDIR_DEBUG) md $(OBJDIR_DEBUG)

after_debug: 

debug: before_debug out_debug after_debug

out_debug: before_debug $(OBJ_DEBUG) $(DEP_DEBUG)
	$(LD) $(LIBDIR_DEBUG) -o $(OUT_DEBUG) $(OBJ_DEBUG)  $(LDFLAGS_DEBUG) $(LIB_DEBUG)

$(OBJDIR_DEBUG)\\src\\add.o: src\\add.cpp
	$(CXX) $(CFLAGS_DEBUG) $(INC_DEBUG) -c src\\add.cpp -o $(OBJDIR_DEBUG)\\src\\add.o

$(OBJDIR_DEBUG)\\src\\assembly_error.o: src\\assembly_error.cpp
	$(CXX) $(CFLAGS_DEBUG) $(INC_DEBUG) -c src\\assembly_error.cpp -o $(OBJDIR_DEBUG)\\src\\assembly_error.o

$(OBJDIR_DEBUG)\\src\\beq.o: src\\beq.cpp
	$(CXX) $(CFLAGS_DEBUG) $(INC_DEBUG) -c src\\beq.cpp -o $(OBJDIR_DEBUG)\\src\\beq.o

$(OBJDIR_DEBUG)\\src\\bge.o: src\\bge.cpp
	$(CXX) $(CFLAGS_DEBUG) $(INC_DEBUG) -c src\\bge.cpp -o $(OBJDIR_DEBUG)\\src\\bge.o

$(OBJDIR_DEBUG)\\src\\bgt.o: src\\bgt.cpp
	$(CXX) $(CFLAGS_DEBUG) $(INC_DEBUG) -c src\\bgt.cpp -o $(OBJDIR_DEBUG)\\src\\bgt.o

$(OBJDIR_DEBUG)\\src\\ble.o: src\\ble.cpp
	$(CXX) $(CFLAGS_DEBUG) $(INC_DEBUG) -c src\\ble.cpp -o $(OBJDIR_DEBUG)\\src\\ble.o

$(OBJDIR_DEBUG)\\src\\blt.o: src\\blt.cpp
	$(CXX) $(CFLAGS_DEBUG) $(INC_DEBUG) -c src\\blt.cpp -o $(OBJDIR_DEBUG)\\src\\blt.o

$(OBJDIR_DEBUG)\\src\\bne.o: src\\bne.cpp
	$(CXX) $(CFLAGS_DEBUG) $(INC_DEBUG) -c src\\bne.cpp -o $(OBJDIR_DEBUG)\\src\\bne.o

$(OBJDIR_DEBUG)\\src\\branch.o: src\\branch.cpp
	$(CXX) $(CFLAGS_DEBUG) $(INC_DEBUG) -c src\\branch.cpp -o $(OBJDIR_DEBUG)\\src\\branch.o

$(OBJDIR_DEBUG)\\src\\computer.o: src\\computer.cpp
	$(CXX) $(CFLAGS_DEBUG) $(INC_DEBUG) -c src\\computer.cpp -o $(OBJDIR_DEBUG)\\src\\computer.o

$(OBJDIR_DEBUG)\\src\\end.o: src\\end.cpp
	$(CXX) $(CFLAGS_DEBUG) $(INC_DEBUG) -c src\\end.cpp -o $(OBJDIR_DEBUG)\\src\\end.o

$(OBJDIR_DEBUG)\\src\\instruction.o: src\\instruction.cpp
	$(CXX) $(CFLAGS_DEBUG) $(INC_DEBUG) -c src\\instruction.cpp -o $(OBJDIR_DEBUG)\\src\\instruction.o

$(OBJDIR_DEBUG)\\src\\instructionsfactory.o: src\\instructionsfactory.cpp
	$(CXX) $(CFLAGS_DEBUG) $(INC_DEBUG) -c src\\instructionsfactory.cpp -o $(OBJDIR_DEBUG)\\src\\instructionsfactory.o

$(OBJDIR_DEBUG)\\src\\load.o: src\\load.cpp
	$(CXX) $(CFLAGS_DEBUG) $(INC_DEBUG) -c src\\load.cpp -o $(OBJDIR_DEBUG)\\src\\load.o

$(OBJDIR_DEBUG)\\src\\loadih.o: src\\loadih.cpp
	$(CXX) $(CFLAGS_DEBUG) $(INC_DEBUG) -c src\\loadih.cpp -o $(OBJDIR_DEBUG)\\src\\loadih.o

$(OBJDIR_DEBUG)\\src\\loadil.o: src\\loadil.cpp
	$(CXX) $(CFLAGS_DEBUG) $(INC_DEBUG) -c src\\loadil.cpp -o $(OBJDIR_DEBUG)\\src\\loadil.o

$(OBJDIR_DEBUG)\\src\\move.o: src\\move.cpp
	$(CXX) $(CFLAGS_DEBUG) $(INC_DEBUG) -c src\\move.cpp -o $(OBJDIR_DEBUG)\\src\\move.o

$(OBJDIR_DEBUG)\\src\\program.o: src\\program.cpp
	$(CXX) $(CFLAGS_DEBUG) $(INC_DEBUG) -c src\\program.cpp -o $(OBJDIR_DEBUG)\\src\\program.o

$(OBJDIR_DEBUG)\\src\\store.o: src\\store.cpp
	$(CXX) $(CFLAGS_DEBUG) $(INC_DEBUG) -c src\\store.cpp -o $(OBJDIR_DEBUG)\\src\\store.o

$(OBJDIR_DEBUG)\\src\\utils.o: src\\utils.cpp
	$(CXX) $(CFLAGS_DEBUG) $(INC_DEBUG) -c src\\utils.cpp -o $(OBJDIR_DEBUG)\\src\\utils.o

$(OBJDIR_DEBUG)\\main.o: main.cpp
	$(CXX) $(CFLAGS_DEBUG) $(INC_DEBUG) -c main.cpp -o $(OBJDIR_DEBUG)\\main.o

clean_debug: 
	cmd /c del /f $(OBJ_DEBUG) $(OUT_DEBUG)
	cmd /c rd bin\\Debug
	cmd /c rd $(OBJDIR_DEBUG)\\src
	cmd /c rd $(OBJDIR_DEBUG)

before_release: 
	cmd /c if not exist bin\\Release md bin\\Release
	cmd /c if not exist $(OBJDIR_RELEASE)\\src md $(OBJDIR_RELEASE)\\src
	cmd /c if not exist $(OBJDIR_RELEASE) md $(OBJDIR_RELEASE)

after_release: 

release: before_release out_release after_release

out_release: before_release $(OBJ_RELEASE) $(DEP_RELEASE)
	$(LD) $(LIBDIR_RELEASE) -o $(OUT_RELEASE) $(OBJ_RELEASE)  $(LDFLAGS_RELEASE) $(LIB_RELEASE)

$(OBJDIR_RELEASE)\\src\\add.o: src\\add.cpp
	$(CXX) $(CFLAGS_RELEASE) $(INC_RELEASE) -c src\\add.cpp -o $(OBJDIR_RELEASE)\\src\\add.o

$(OBJDIR_RELEASE)\\src\\assembly_error.o: src\\assembly_error.cpp
	$(CXX) $(CFLAGS_RELEASE) $(INC_RELEASE) -c src\\assembly_error.cpp -o $(OBJDIR_RELEASE)\\src\\assembly_error.o

$(OBJDIR_RELEASE)\\src\\beq.o: src\\beq.cpp
	$(CXX) $(CFLAGS_RELEASE) $(INC_RELEASE) -c src\\beq.cpp -o $(OBJDIR_RELEASE)\\src\\beq.o

$(OBJDIR_RELEASE)\\src\\bge.o: src\\bge.cpp
	$(CXX) $(CFLAGS_RELEASE) $(INC_RELEASE) -c src\\bge.cpp -o $(OBJDIR_RELEASE)\\src\\bge.o

$(OBJDIR_RELEASE)\\src\\bgt.o: src\\bgt.cpp
	$(CXX) $(CFLAGS_RELEASE) $(INC_RELEASE) -c src\\bgt.cpp -o $(OBJDIR_RELEASE)\\src\\bgt.o

$(OBJDIR_RELEASE)\\src\\ble.o: src\\ble.cpp
	$(CXX) $(CFLAGS_RELEASE) $(INC_RELEASE) -c src\\ble.cpp -o $(OBJDIR_RELEASE)\\src\\ble.o

$(OBJDIR_RELEASE)\\src\\blt.o: src\\blt.cpp
	$(CXX) $(CFLAGS_RELEASE) $(INC_RELEASE) -c src\\blt.cpp -o $(OBJDIR_RELEASE)\\src\\blt.o

$(OBJDIR_RELEASE)\\src\\bne.o: src\\bne.cpp
	$(CXX) $(CFLAGS_RELEASE) $(INC_RELEASE) -c src\\bne.cpp -o $(OBJDIR_RELEASE)\\src\\bne.o

$(OBJDIR_RELEASE)\\src\\branch.o: src\\branch.cpp
	$(CXX) $(CFLAGS_RELEASE) $(INC_RELEASE) -c src\\branch.cpp -o $(OBJDIR_RELEASE)\\src\\branch.o

$(OBJDIR_RELEASE)\\src\\computer.o: src\\computer.cpp
	$(CXX) $(CFLAGS_RELEASE) $(INC_RELEASE) -c src\\computer.cpp -o $(OBJDIR_RELEASE)\\src\\computer.o

$(OBJDIR_RELEASE)\\src\\end.o: src\\end.cpp
	$(CXX) $(CFLAGS_RELEASE) $(INC_RELEASE) -c src\\end.cpp -o $(OBJDIR_RELEASE)\\src\\end.o

$(OBJDIR_RELEASE)\\src\\instruction.o: src\\instruction.cpp
	$(CXX) $(CFLAGS_RELEASE) $(INC_RELEASE) -c src\\instruction.cpp -o $(OBJDIR_RELEASE)\\src\\instruction.o

$(OBJDIR_RELEASE)\\src\\instructionsfactory.o: src\\instructionsfactory.cpp
	$(CXX) $(CFLAGS_RELEASE) $(INC_RELEASE) -c src\\instructionsfactory.cpp -o $(OBJDIR_RELEASE)\\src\\instructionsfactory.o

$(OBJDIR_RELEASE)\\src\\load.o: src\\load.cpp
	$(CXX) $(CFLAGS_RELEASE) $(INC_RELEASE) -c src\\load.cpp -o $(OBJDIR_RELEASE)\\src\\load.o

$(OBJDIR_RELEASE)\\src\\loadih.o: src\\loadih.cpp
	$(CXX) $(CFLAGS_RELEASE) $(INC_RELEASE) -c src\\loadih.cpp -o $(OBJDIR_RELEASE)\\src\\loadih.o

$(OBJDIR_RELEASE)\\src\\loadil.o: src\\loadil.cpp
	$(CXX) $(CFLAGS_RELEASE) $(INC_RELEASE) -c src\\loadil.cpp -o $(OBJDIR_RELEASE)\\src\\loadil.o

$(OBJDIR_RELEASE)\\src\\move.o: src\\move.cpp
	$(CXX) $(CFLAGS_RELEASE) $(INC_RELEASE) -c src\\move.cpp -o $(OBJDIR_RELEASE)\\src\\move.o

$(OBJDIR_RELEASE)\\src\\program.o: src\\program.cpp
	$(CXX) $(CFLAGS_RELEASE) $(INC_RELEASE) -c src\\program.cpp -o $(OBJDIR_RELEASE)\\src\\program.o

$(OBJDIR_RELEASE)\\src\\store.o: src\\store.cpp
	$(CXX) $(CFLAGS_RELEASE) $(INC_RELEASE) -c src\\store.cpp -o $(OBJDIR_RELEASE)\\src\\store.o

$(OBJDIR_RELEASE)\\src\\utils.o: src\\utils.cpp
	$(CXX) $(CFLAGS_RELEASE) $(INC_RELEASE) -c src\\utils.cpp -o $(OBJDIR_RELEASE)\\src\\utils.o

$(OBJDIR_RELEASE)\\main.o: main.cpp
	$(CXX) $(CFLAGS_RELEASE) $(INC_RELEASE) -c main.cpp -o $(OBJDIR_RELEASE)\\main.o

clean_release: 
	cmd /c del /f $(OBJ_RELEASE) $(OUT_RELEASE)
	cmd /c rd bin\\Release
	cmd /c rd $(OBJDIR_RELEASE)\\src
	cmd /c rd $(OBJDIR_RELEASE)

.PHONY: before_debug after_debug clean_debug before_release after_release clean_release

