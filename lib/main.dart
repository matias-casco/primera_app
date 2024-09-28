import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Autos App'),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(
                icon: Icon(Icons.settings), label: 'Ajustes'),
          ],
        ),
        body: const HomeBody(),
        drawer: Drawer(
          child: Column(
            children: [
              Container(
                alignment: Alignment.center,
                height: 120,
                width: double.infinity,
                color: Colors.blue,
                child: const Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      child: Text(
                        'M',
                        style: TextStyle(
                            color: Colors.blueAccent,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Hola, Matias',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              const ListTile(
                leading: Icon(Icons.home),
                title: Text('Inicio'),
              ),
              const ListTile(
                leading: Icon(Icons.favorite),
                title: Text('Favoritos'),
              ),
              const ListTile(
                leading: Icon(Icons.percent),
                title: Text('Promociones'),
              ),
              const ListTile(
                leading: Icon(Icons.card_giftcard),
                title: Text('Regalos'),
              ),
              const ListTile(
                leading: Icon(Icons.settings),
                title: Text('Configuración'),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class HomeBody extends StatelessWidget {
  const HomeBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        children: [
          Banner(),
          SizedBox(
            height: 20,
          ),
          FilaDeContenedores(
            colorDelContendor: Colors.pink,
          ),
          SizedBox(
            height: 20,
          ),
          FilaDeContenedores(
            colorDelContendor: Colors.green,
          ),
          SizedBox(
            height: 20,
          ),
          FilaDeContenedores(
            colorDelContendor: Colors.orange,
          ),
          SizedBox(
            height: 20,
          ),
          FilaDeContenedores(
            colorDelContendor: Colors.amber,
          ),
          SizedBox(
            height: 20,
          ),
          FilaDeContenedores(
            colorDelContendor: Colors.grey,
          ),
        ],
      ),
    );
  }
}

class FilaDeContenedores extends StatelessWidget {
  const FilaDeContenedores({
    super.key,
    required this.colorDelContendor,
  });

  final Color colorDelContendor;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        ContenedorPersonalizado(colorDelContendor: colorDelContendor),
        ContenedorPersonalizado(colorDelContendor: colorDelContendor),
        ContenedorPersonalizado(colorDelContendor: colorDelContendor),
        ContenedorPersonalizado(colorDelContendor: colorDelContendor),
      ],
    );
  }
}

class ContenedorPersonalizado extends StatelessWidget {
  const ContenedorPersonalizado({
    super.key,
    required this.colorDelContendor,
  });

  final Color colorDelContendor;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90,
      width: 80,
      decoration: BoxDecoration(
        color: colorDelContendor,
        borderRadius: BorderRadius.circular(10),
      ),
    );
  }
}

class Banner extends StatelessWidget {
  const Banner({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 140,
      decoration: BoxDecoration(
          color: Colors.blue, borderRadius: BorderRadius.circular(10)),
      margin: const EdgeInsets.symmetric(horizontal: 10),
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          const Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Promociones especiales',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                'solo por este mes',
                style: TextStyle(
                    color: Colors.yellow,
                    fontSize: 14,
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
          Image.network(
            'https://static.vecteezy.com/system/resources/thumbnails/025/305/916/small/white-sport-car-on-transparent-background-3d-rendering-illustration-free-png.png',
            width: 132,
          ),
        ],
      ),
    );
  }
}
