# macros
RM = /bin/rm -f  # para limpiar
CC = g++         # para compilar
#---------------------------------------------------------
# opciones de compilación
CPPFLAGS=-std=c++11 # opciones compilación
#---------------------------------------------------------
practica1: practica1.o puntos2D.o colecciones.h
	$(CC)  practica1.o puntos2D.o colecciones.h -o practica1 $(CPPFLAGS)
#---------------------------------------------------------
practica1.o:
	$(CC) practica1.cpp -c $(CPPFLAGS)
#---------------------------------------------------------
puntos2D.o: puntos2D.cpp
	$(CC) puntos2D.cpp -c $(CPPFLAGS)
#---------------------------------------------------------
clean:
	$(RM) practica1
	$(RM) practica1 practica1.o
	$(RM) puntos2D.o
	$(RM) colecciones.o
	$(RM) salida.txt