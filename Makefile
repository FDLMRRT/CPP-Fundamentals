# Makefile Template
# compiler name
COMPILER = g++

# c++ compiler flags
# -c : just do preprocess; compile and assemble into object files
# -g: adds debugging information to the executable file
# - Wall turns on most, but not  all, compiler warnings
# -std=c++17 uses c++17 standard
# put all the required flags separated by space
COMPILER_FLAGS = -c -g -Wall -std=c++17

# the build target executable program name of your choice
PROGRAM =  # FIXME

# list all .cpp files separated by space; files must exist!
CPP_FILES =  # FIXME

# make build rule/default rule that'll be run when we run "make" or make build
# first compile each file to object file
# then make a single binary program
build:
	$(COMPILER) $(COMPILER_FLAGS) $(CPP_FILES)
	$(COMPILER) -o $(PROGRAM) *.o

# rule to run the program
# make run to execute this rule
run:
	./$(PROGRAM)

# make clean rule
# delete object and binary files
clean:
	rm -f $(PROGRAM) *.o
