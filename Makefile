CC = gcc
CXX = g++

INCLUDES = -I$(glad_inc)
LIBRARIES = -L$(glfw_lib) 
DIR := ${CURDIR}
glfw = ${DIR}/include
glfw_lib = $(DIR)/lib/

glad = ${DIR}
glad_inc = ${DIR}/include

CFLAGS = -Wall -O3 $(INCLUDES)
CXXFLAGS = -Wall -O3 $(INCLUDES)
LDFLAGS = $(LIBRARIES) -lglfw3 -lgdi32
TARGET = myprogram.exe
cpp_files = $(DIR)/src/main.cpp
objects = $(cpp_files:.cpp=.o) $(DIR)/src/glad.o

all: $(TARGET)
	echo ${DIR}


$(TARGET): $(objects) 
	$(CXX) -o $@ $^ $(LDFLAGS)

.PHONY : clean
clean :
	rm $(TARGET) $(objects)