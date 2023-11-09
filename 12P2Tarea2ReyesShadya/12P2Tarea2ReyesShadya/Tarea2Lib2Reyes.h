#ifndef TAREA2LIB2REYES_H_INCLUDED
#define TAREA2LIB2REYES_H_INCLUDED
#include<iostream>
using namespace std;

void funcionalgoselec();
void funcionalgoinser();
void funcionalgoburbu();


void funcionalgoselec() {
	int i, indiceminimo, j, n, temp;

	cout << "Ingrese cantidad de numeros para ordenarlos [Metodo seleccion]: " << endl;
	cin >> n;

	int num[n];

	for (i=0;i<n;i++) {
		cout << "Ingrese numeros para ordenar: " << endl;
		cin >> num[i];
	}
	// Ordenamiento por Seleccion
	for (i=0;i<n;i++) {
		indiceminimo = i;
		for (j=i+1;j<n;j++) {
			if (num[j]<num[indiceminimo]) {
				indiceminimo = j;
			}
		}
		temp = num[i];
		num[i] = num[indiceminimo];
		num[indiceminimo] = temp;
	}
	cout << "Sus numeros ordenados: " << endl;
	for (i=0;i<n;i++) {
		cout << num[i] << endl;
	}
}

void funcionalgoinser() {
	int i, j, n, valoractual;

	cout << "Ingrese cantidad de numeros para ordenarlos [Metodo insercion]: " << endl;
	cin >> n;
	int num[n];

	for (i=0;i<n;i++) {
		cout << "Ingrese numeros para ordenar: " << endl;
		cin >> num[i];
	}
	// Ordenamiento por inserción
	for (i=1;i<n;i++) {
		valoractual = num[i];
		j = i-1;
		while (j>=0 && num[j]>valoractual) {
			num[j+1] = num[j];
			j = j-1;
		}
		num[j+1] = valoractual;
	}
	cout << "Sus numeros ordenados son: " << endl;
	for (i=0;i<n;i++) {
		cout << num[i] << endl;
	}
}

void funcionalgoburbu() {
	int i, j,  n;

	int temp;
	cout << "Ingrese cantidad de numeros para ordenarlos [Metodo burbuja]: " << endl;
	cin >> n;
	int num[n];

	for (i=0;i<n;i++) {
		cout << "Ingrese numeros para ordenar: " << endl;
		cin >> num[i];
	}
	// Ordenamiento por Burbuja
	for (i=1;i<=n-1;i++) {
		for (j=1;j<=n-i;j++) {
			if (num[j-1]>num[j]) {
				temp = num[j-1];
				num[j-1] = num[j];
				num[j] = temp;
			}
		}
	}
	cout << "Sus numeros ordenados son: " << endl;
	for (i=0;i<n;i++) {
		cout << num[i] << endl;
	}
}





#endif // TAREA2LIB2REYES_H_INCLUDED
