import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/principal', // Iniciar en la vista principal
      routes: {
        '/': (context) => InicioScreen(),
        '/principal': (context) => PrincipalScreen(),
      },
    );
  }
}

class InicioScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Inicio')),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pushNamed(context, '/principal');
          },
          child: Text('Ir a Principal'),
        ),
      ),
    );
  }
}

class PrincipalScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset('assets/image.png', fit: BoxFit.cover, width: double.infinity),
          // Barra de búsqueda
          Positioned(
            top: 180, // Ajusta esta posición según la ubicación de la barra de búsqueda en tu imagen
            left: 100, // Ajusta esta posición según la ubicación de la barra de búsqueda en tu imagen
            right: 20, // Para que la barra ocupe todo el ancho disponible
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Buscar...',
                border: InputBorder.none,
                filled: true,
                fillColor: Colors.white.withOpacity(0.0), // Fondo transparente
                contentPadding: EdgeInsets.symmetric(vertical: 15),
              ),
              style: TextStyle(color: Colors.transparent), // Texto transparente
            ),
          ),
          // Texto "Compras"
          Positioned(
            top: 85, // Ajusta esta posición según la ubicación del texto en tu imagen
            left: 210, // Ajusta esta posición según la ubicación del texto en tu imagen
            right: 20, // Para que el texto ocupe todo el ancho disponible
            child: Text(
              'Compras',
              style: TextStyle(
                fontSize: 30, // Ajusta el tamaño de la fuente según sea necesario
                fontWeight: FontWeight.bold, // Ajusta el peso de la fuente según sea necesario
                color: const Color.fromARGB(255, 31, 78, 121), // Ajusta el color según sea necesario
                fontFamily: 'FuentePersonalizada', // Reemplaza con el nombre de la fuente utilizada
              ),
            ),
          ),
          // Flecha de navegación
          Positioned(
            top: 10,
            left: 20,
            child: GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, '/'); // Navegar a la vista de inicio
              },
              child: Container(
                width: 40, // Ancho del asset
                height: 50, // Alto del asset
                child: Image.asset('assets/back.png'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
