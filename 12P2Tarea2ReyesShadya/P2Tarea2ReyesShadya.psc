Algoritmo P2Tarea2ReyesShadya
    CaratulaReyes;
	FuncionMenuReyes;
	
FinAlgoritmo

SubAlgoritmo CaratulaReyes
	Definir caratula Como Caracter;
	Definir i,j,k como entero;
	
	Dimension caratula[3,2,1];
	
	caratula[1,1,1]<-"Fundamentos De Programacion ";
	caratula[1,2,1]<-"Nombres y Apellidos: Shadya Nicole Reyes Zambrano";
	caratula[2,1,1]<-"NRC: 13264";
	caratula[2,2,1]<-"Tarea # 2";
	caratula[3,1,1]<-"---Subprogramas---";
	caratula[3,2,1]<-"---Arreglos---";
	
	Escribir "================================================";
	Para i<-1 Hasta 3 Con Paso 1 Hacer
		Para j<-1 Hasta 2 Con Paso 1 Hacer
			Para k<-1 Hasta 1 Con Paso 1 Hacer
				Escribir(caratula[i, j, k]);
			FinPara
		FinPara
	FinPara
	Escribir "================================================";
FinSubAlgoritmo

SubAlgoritmo FuncionMenuReyes
	Definir op Como Entero;
	
	Repetir
		Escribir "MENU OPCIONES ARREGLOS";
		Escribir "1. EJERCICIO UNIDIMENSIONAL";
		Escribir "2. EJERCICIO BIDIMENSIONAL";
		Escribir "3. EJERCICIO MILTIDIMENSIONAL";
		Escribir "4. ALGORITMOS DE ORDENACION ";
		Escribir "5. ALGORITMOS DE BUSQUEDA ";
		Escribir "6. SALIR ";
		Escribir "  ELIJA OPCION: ";
		Leer op;
		
		Segun op
			1:
				FuncionSubUniReyes;
			2:
				FuncionSuBidiReyes;
			3:
				FuncionSubMultiReyes;	
			4:
				FuncionOrdenacionReyes;
			5:
				AlgoBuscar;
			6:
				Escribir "A Salido con exito..";
				
			de otro modo:
				Escribir "Ingrese nuevamente de [1 hasta 6]";
				
				
		FinSegun
		
	Hasta Que op=6;
	
FinSubAlgoritmo




//SUBARREGLO UNIDIMENSIONAL
SubAlgoritmo FuncionSubUniReyes
    Definir comidas Como Caracter;
    Definir i, n Como Entero;
	
    Escribir "Ingrese la cantidad de comidas que desea probar: ";
    Leer n;
	
    Dimension comidas[n];
	
    Para i<-1 Hasta n Con Paso 1 Hacer
        Escribir "Ingrese la comida ", i;
        Leer comidas[i];
    FinPara
    
    Para i <-1 Hasta n Con Paso 1 Hacer
        Escribir "La comida ", i " que desea probar es: ", comidas[i];
    FinPara
    
FinSubAlgoritmo

//SUBARREGLO BIDIDIMENSIONAL
SubAlgoritmo FuncionSuBidiReyes
	Definir  Matriz, n, m, i, j Como Entero;
	
	Escribir "Ingrese de que tamaño va a ser su matriz: ";
	Leer n, m;
	
	Dimension Matriz[n,m];
	
	Para i<-1 Hasta n con paso 1 Hacer
		Para j<-1 Hasta m Con Paso 1 Hacer
			Escribir "ingrese filas y columnas de su matriz: ";
			Leer Matriz[i,j];
		FinPara
	FinPara
	
	Para i<-1 Hasta n Con Paso 1 Hacer
		Para j<-1 Hasta m Con Paso 1 Hacer
			Escribir "los numeros de: [",i "][",j "]" "son: " Matriz[i,j];
			
		FinPara
	FinPara
FinSubAlgoritmo

//SUBARREGLO MULTIDIMENSIONAL
SubAlgoritmo FuncionSubMultiReyes
	Definir  Matrizs, f,c,p Como Entero;
	Definir  i,j,k Como Entero;
	
	Escribir "Ingrese las filas, columnas, y la profunidad";
	Leer f,c,p;
	
	Dimension Matrizs[f,c,p];
	
	Para i<-1 Hasta f Con Paso 1 Hacer
		Para j<-1 Hasta c Con Paso 1 Hacer
			Para k<-1 Hasta p Con Paso 1 Hacer
				Escribir "Ingrese filas, columnas, y profunidad de su matriz: ";
				Leer Matrizs[i,j,k];
				
			FinPara
		FinPara
	FinPara
	
	Para i<-1 Hasta f Con Paso 1 Hacer
		Para j<-1 Hasta c Con Paso 1 Hacer
			Para k<-1 Hasta p Con Paso 1 Hacer
				Escribir "los numeros de [" i "][" j "][" k "]", Matrizs[i,j,k];
				
			FinPara
		FinPara
	FinPara
FinSubAlgoritmo

SubAlgoritmo FuncionOrdenacionReyes
	Definir op Como Entero;
	
	Repetir
		Escribir "MENU OPCIONES ALGORITMOS DE ORDENACION";
		Escribir "1. ALGORITMOS DE SELECCION";
		Escribir "2. ALGORITMOS DE INTERCAMBIO";
		Escribir "3. ALGORITMOS DE BURBUJA";
		Escribir "4. RETROCEDER";
		Escribir "Elegir opcion: ";
		Leer op;
		Segun op
			1:
				FuncionAlgoSelec;
			2:
				FuncionAlgoInser;
			3:
				FuncionAlgoBurbu;
			4:
				Escribir "A retrocedido con exito..";
				
			de otro modo:
				Escribir "Ingrese nuevamente de [1 hasta 4]";
				
				
		FinSegun
		
	Hasta Que op=4;
	
FinSubAlgoritmo

SubAlgoritmo FuncionAlgoSelec
	Definir num,n, i, j, temp, indiceMinimo Como Entero;
	
	Escribir "Ingrese cantidad de numeros para ordenarlos [Metodo seleccion]: ";
	Leer n;
	
	Dimension num[n];
	
	Para i<-1 Hasta n Con Paso 1 Hacer
		Escribir "Ingrese numeros para ordenar: ";
		Leer num[i];
	FinPara
	
	// Ordenamiento por Seleccion
	Para i <- 1 Hasta n-1 Hacer
        indiceMinimo <- i;
        Para j <- i+1 Hasta n Hacer
            Si num[j] < num[indiceMinimo] Entonces
                indiceMinimo <- j;
            FinSi
        FinPara
		
        temp <- num[i];
        num[i] <- num[indiceMinimo];
        num[indiceMinimo] <- temp;
    FinPara
	
    Escribir "Sus numeros ordenados: ";
    Para i <- 1 Hasta n Con Paso 1 Hacer
        Escribir num[i];
    FinPara
	
FinSubAlgoritmo

SubAlgoritmo FuncionAlgoInser
	Definir num, n, i, j, valorActual Como Entero;
	
    Escribir "Ingrese cantidad de números para ordenarlos [Metodo insercion]: ";
    Leer n;
    Dimension num[n];
    Para i <- 1 Hasta n Con Paso 1 Hacer
        Escribir "Ingrese números para ordenar: ";
        Leer num[i];
    FinPara
    // Ordenamiento por inserción
    Para i <- 2 Hasta n Hacer
        valorActual <- num[i];
        j <- i - 1;
		
        Mientras j >= 1 y num[j] > valorActual Hacer
            num[j+1] <- num[j];
            j <- j - 1;
        FinMientras
		
        num[j+1] <- valorActual;
    FinPara
	
    Escribir "Sus numeros ordenados son: ";
    Para i<- 1 Hasta n Con Paso 1 Hacer
        Escribir num[i];
    FinPara
FinSubAlgoritmo

SubAlgoritmo FuncionAlgoBurbu
	Definir num, n, i, j, temp Como Entero;
	
    Escribir "Ingrese cantidad de números para ordenarlos [Metodo burbuja]: ";
    Leer n;
	
    Dimension num[n];
	
    Para i <- 1 Hasta n Con Paso 1 Hacer
        Escribir "Ingrese números para ordenar: ";
        Leer num[i];
    FinPara
	
    // Ordenamiento por Burbuja 
    Para i<-1 Hasta n-1 Hacer
        Para j<-1 Hasta n-i Hacer
            Si num[j] > num[j+1] Entonces
                temp <- num[j];
                num[j] <- num[j+1];
                num[j+1] <- temp;
            FinSi
        FinPara
    FinPara
	
    Escribir "Sus numeros ordenados son: ";
    Para i<- 1 Hasta n Con Paso 1 Hacer
        Escribir num[i];
    FinPara
	
FinSubAlgoritmo

SubAlgoritmo AlgoBuscar
	Definir op como entero;
	
	Repetir
		Escribir "MENU OPCIONES ALGORITMOS DE BUSQUEDA";
		Escribir "1. BUSQUEDA BINARIA";
		Escribir "2. BUSQUEDA SECUENCIAL";
		Escribir "3. RETROCEDER ";
		Escribir "  Elegir opcion  ";
		Leer op;
		
		segun op
			1:
				BuscarBina;
			2:
				BuscarSecuen;
			3:
			De Otro Modo:
				Escribir "Ingrese nuevamente [1 hasta 3]";
		FinSegun

	Hasta Que op=3

FinSubAlgoritmo

SubAlgoritmo BuscarBina
	Definir num, n, i Como Entero;
	Definir valorBuscado, inicio, f, medio, posicion Como Entero;
    Definir encontrado Como Logico;
    encontrado <- Falso;
    inicio <- 1;
	
	Escribir "	Ingrese el tamaño de su arreglo";
	leer n;
	
	Dimension num[n];
	
	Para i<-1 Hasta n Con Paso 1 Hacer
		Escribir "Ingrese #", i "[Ascendentemente debe ingresarlos, Si el arreglo no está ordenado o se ordena de forma descendente, la búsqueda binaria no funcionará correctamente.]";
		Leer num[i];
	FinPara
	
	Para i<-1 Hasta n Con Paso 1 Hacer
		Escribir "sus numeros ingresados son: ";
		Escribir num[i];
	FinPara
	
	f <- n;
	Escribir "Ingrese el valor que desea buscar: ";
	Leer valorBuscado;

	Mientras inicio <= f y no encontrado Hacer
	medio <- Trunc((inicio + f) / 2);

	Si num[medio] = valorBuscado Entonces
		encontrado <- Verdadero;
		posicion<-medio;
	Sino Si num[medio] < valorBuscado Entonces
            inicio <- medio + 1;
        Sino
			f <- medio - 1;
		FinSi 
	finsi
	FinMientras

	Si encontrado Entonces
		Escribir "El numero ", valorBuscado, " si se encuentra entre los numeros, y esta en la posicion: ", posicion;
	Sino
		Escribir "El numero ", valorBuscado, " no se encuentra entre los numeros.";
	FinSi
FinSubAlgoritmo

SubAlgoritmo BuscarSecuen
	Definir num, n, i Como Entero;
	Definir valorBuscado, posicion Como Entero;
	Definir encontrado Como Logico;
	encontrado <- Falso;
	
	Escribir "Ingrese el tamaño de su arreglo";
	Leer n;
	
	Dimension num[n];
	
	Para i<-1 Hasta n Con Paso 1 Hacer
		Escribir "Ingrese #", i;
		Leer num[i];
	FinPara
	
	Para i<-1 Hasta n Con Paso 1 Hacer
		Escribir "Sus números ingresados son: ";
		Escribir num[i];
	FinPara
	
	Escribir "Ingrese el valor que desea buscar: ";
	Leer valorBuscado;
	
	posicion <- -1;
	
	Para i<-1 Hasta n Con Paso 1 Hacer
		Si num[i] = valorBuscado Entonces
			encontrado <- Verdadero;
			posicion <- i;
		FinSi
	FinPara
	
	Si encontrado Entonces
		Escribir "El número ", valorBuscado, " se encuentra en la posición ", posicion;
	Sino
		Escribir "El número ", valorBuscado, " no se encuentra entre los números.";
	FinSi
FinSubAlgoritmo
