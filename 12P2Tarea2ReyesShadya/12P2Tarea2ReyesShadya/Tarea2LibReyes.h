#ifndef TAREA2LIBREYES_H_INCLUDED
#define TAREA2LIBREYES_H_INCLUDED
#include "Tarea2Lib2Reyes.h"
#include "Tarea2Lib3Reyes.h"

#include<iostream>
using namespace std;

void funcionsubunireyes();
void funcionsubidireyes();
void funcionsubmultireyes();
void funcionordenacionreyes();
void algobuscar();



void caratulareyes() {
	string caratula[3][2][1];
	int i;
	int j;
	int k;
	caratula[0][0][0] = "Fundamentos De Programacion ";
	caratula[0][1][0] = "Nombres y Apellidos: Shadya Nicole Reyes Zambrano";
	caratula[1][0][0] = "NRC: 13264";
	caratula[1][1][0] = "Tarea # 2";
	caratula[2][0][0] = "---Subprogramas---";
	caratula[2][1][0] = "---Arreglos---";
	cout << "================================================" << endl;
	for (i=0;i<3;i++) {
		for (j=0;j<2;j++) {
			for (k=0;k<1;k++) {
				cout << caratula[i][j][k] << endl;
			}
		}
	}
	cout << "================================================" << endl;
}

//Menu principal
void funcionmenureyes() {
	int op;
	do {
		cout << "MENU OPCIONES ARREGLOS" << endl;
		cout << "1. EJERCICIO UNIDIMENSIONAL" << endl;
		cout << "2. EJERCICIO BIDIMENSIONAL" << endl;
		cout << "3. EJERCICIO MILTIDIMENSIONAL" << endl;
		cout << "4. ALGORITMOS DE ORDENACION " << endl;
		cout << "5. ALGORITMOS DE BUSQUEDA " << endl;
		cout << "6. SALIR " << endl;
		cout << "  ELIJA OPCION: " << endl;
		cin >> op;
		switch (op) {
		case 1:
			funcionsubunireyes();
			break;
		case 2:
			funcionsubidireyes();
			break;
		case 3:
			funcionsubmultireyes();
			break;
		case 4:
			funcionordenacionreyes();
			break;
		case 5:
			algobuscar();
			break;
		case 6:
			cout << "A Salido con exito.." << endl;
			break;
		default:
			cout << "Ingrese nuevamente de [1 hasta 6]" << endl;
		}
	} while (op!=6);
}


// SUBARREGLO UNIDIMENSIONAL
void funcionsubunireyes() {
	int i, n;


	cout << "Ingrese la cantidad de comidas que desea probar: " << endl;
	cin >> n;

	string comidas[n];

	for (i=0;i<n;i++) {
		cout << "Ingrese la comida " << i << endl;
		cin >> comidas[i];
	}
	for (i=0;i<n;i++) {
		cout << "La comida " << i << " que desea probar es: " << comidas[i] << endl;
	}
}

// SUBARREGLO BIDIDIMENSIONAL
void funcionsubidireyes() {
	int i, j, m, n;


	cout << "Ingrese de que tamano va a ser su matriz: " << endl;
	cin >> n >> m;
	int matriz[n][m];

	for (i=0;i<n;i++) {
		for (j=0;j<m;j++) {
			cout << "ingrese filas y columnas de su matriz: " << endl;
			cin >> matriz[i][j];
		}
	}
	for (i=0;i<n;i++) {
		for (j=0;j<m;j++) {
			cout << "los numeros de: [" << i << "][" << j << "]" << "son: " << matriz[i][j] << endl;
		}
	}
}

// SUBARREGLO MULTIDIMENSIONAL
void funcionsubmultireyes() {
	int c, p, f, i, j, k;;

	cout << "Ingrese las filas, columnas, y la profunidad" << endl;
	cin >> f >> c >> p;
	int matrizs[f][c][p];

	for (i=0;i<f;i++) {
		for (j=0;j<c;j++) {
			for (k=0;k<p;k++) {
				cout << "Ingrese filas, columnas, y profunidad de su matriz: " << endl;
				cin >> matrizs[i][j][k];
			}
		}
	}
	for (i=0;i<f;i++) {
		for (j=0;j<c;j++) {
			for (k=0;k<p;k++) {
				cout << "los numeros de [" << i << "][" << j << "][" << k << "]" << matrizs[i][j][k] << endl;
			}
		}
	}
}

//Menu de Ordenacion
void funcionordenacionreyes() {
	int op;
	do {
		cout << "MENU OPCIONES ALGORITMOS DE ORDENACION" << endl;
		cout << "1. ALGORITMOS DE SELECCION" << endl;
		cout << "2. ALGORITMOS DE INTERCAMBIO" << endl;
		cout << "3. ALGORITMOS DE BURBUJA" << endl;
		cout << "4. RETROCEDER" << endl;
		cout << "Elegir opcion: " << endl;
		cin >> op;
		switch (op) {
		case 1:
			funcionalgoselec();
			break;
		case 2:
			funcionalgoinser();
			break;
		case 3:
			funcionalgoburbu();
			break;
		case 4:
			cout << "A retrocedido con exito.." << endl;
			break;
		default:
			cout << "Ingrese nuevamente de [1 hasta 4]" << endl;
		}
	} while (op!=4);
}


//Menu de busqueda
void algobuscar() {
	int op;
	do {
		cout << "MENU OPCIONES ALGORITMOS DE BUSQUEDA" << endl;
		cout << "1. BUSQUEDA BINARIA" << endl;
		cout << "2. BUSQUEDA SECUENCIAL" << endl;
		cout << "3. RETROCEDER " << endl;
		cout << "  Elegir opcion  " << endl;
		cin >> op;
		switch (op) {
		case 1:
			buscarbina();
			break;
		case 2:
			buscarsecuen();
			break;
		case 3:
			break;
		default:
			cout << "Ingrese nuevamente [1 hasta 3]" << endl;
		}
	} while (op!=3);
}




#endif // TAREA2LIBREYES_H_INCLUDED
