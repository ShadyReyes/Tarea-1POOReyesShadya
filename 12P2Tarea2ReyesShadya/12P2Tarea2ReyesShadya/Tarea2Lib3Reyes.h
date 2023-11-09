#ifndef TAREA2LIB3REYES_H_INCLUDED
#define TAREA2LIB3REYES_H_INCLUDED

#include<iostream>
using namespace std;

void buscarbina();
void buscarsecuen();

void buscarbina() {
	bool encontrado;
	int f, i, inicio, medio, n, posicion, valorbuscado;

	encontrado = false;
	inicio = 0;

	cout << " Ingrese el tamano de su arreglo" << endl;
	cin >> n;
	int num[n];

	for (i=0;i<n;i++) {
		cout << "Ingrese #" << i << "[Ascendentemente debe ingresarlos, Si el arreglo no esta ordenado o se ordena de forma descendente, la busqueda binaria no funcionara correctamente.]" << endl;
		cin >> num[i];
	}
	for (i=0;i<n;i++) {
		cout << "sus numeros ingresados son: " << endl;
		cout << num[i] << endl;
	}
	f = n;
	cout << "Ingrese el valor que desea buscar: " << endl;
	cin >> valorbuscado;

	//Buscar met. binario
	while (inicio<=f && !encontrado) {
		medio = int((inicio+f)/2);
		if (num[medio]==valorbuscado) {
			encontrado = true;
			posicion = medio;
		} else {
			if (num[medio]<valorbuscado) {
				inicio = medio+1;
			} else {
				f = medio-1;
			}
		}
	}
	if (encontrado) {
		cout << "El numero " << valorbuscado << " si se encuentra entre los numeros, y esta en la posicion: " << posicion << endl;
	} else {
		cout << "El numero " << valorbuscado << " no se encuentra entre los numeros." << endl;
	}
}

void buscarsecuen() {
	bool encontrado;
	int i;
	int n;
	int posicion;
	int valorbuscado;
	encontrado = false;
	posicion = 0;

	cout << "Ingrese el tamano de su arreglo" << endl;
	cin >> n;
	int num[n];

	for (i=0;i<n;i++) {
		cout << "Ingrese #" << i << endl;
		cin >> num[i];
	}
	for (i=0;i<n;i++) {
		cout << "Sus numeros ingresados son: " << endl;
		cout << num[i] << endl;
	}
	cout << "Ingrese el valor que desea buscar: " << endl;
	cin >> valorbuscado;


	//Buscar met. secuencial
	for (i=0;i<=n;i++) {
		if (num[i]==valorbuscado) {
			encontrado = true;
			posicion = i;
		}
	}
	if (encontrado) {
		cout << "El numero " << valorbuscado << " si esta y se encuentra en la posicion " << posicion << endl;
	} else {
		cout << "El numero " << valorbuscado << " no se encuentra entre los numeros." << endl;
	}
}

#endif // TAREA2LIB3REYES_H_INCLUDED
