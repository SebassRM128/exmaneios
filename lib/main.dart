import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Mi Aplicación',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily:
            'Inter', // Asegúrate de que la fuente Inter esté configurada en tu pubspec.yaml
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              'CUAHTLI',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
            Image.asset(
              'assets/images/logoo.PNG', // Asegúrate de tener este archivo en tu proyecto
              height: 24,
              width: 24,
            ),
            const CircleAvatar(
              backgroundColor: Colors.grey,
              radius: 16,
              child: Icon(Icons.person, size: 20, color: Colors.white),
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          // Added to handle potential overflow
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                padding: const EdgeInsets.symmetric(vertical: 8),
                alignment: Alignment.center,
                decoration: const BoxDecoration(
                  border: Border(
                    bottom: BorderSide(color: Colors.grey, width: 1),
                  ),
                ),
                child: const Text(
                  'Opciones de Administrador',
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 16,
                  ),
                ),
              ),
              const SizedBox(height: 20),
              _buildOptionContainer(
                context,
                image:
                    'assets/images/r1.jpg', // Asegúrate de tener este archivo
                imageText: 'Editar',
                optionText: 'CUADRE',
                price: '\$100',
                isLocked: false,
              ),
              _buildOptionContainer(
                context,
                image: 'assets/images/r2.jpg',
                imageText: 'Editar',
                optionText: 'ESMERALDAS',
                price: '\$150',
                isLocked: false,
              ),
              _buildOptionContainer(
                context,
                image: 'assets/images/r3.jpg',
                imageText: 'Editar',
                optionText: 'SALVATOR',
                price: '\$200',
                isLocked: true,
              ),
              _buildOptionContainer(
                context,
                image: 'assets/images/r4.jpg',
                imageText: 'Editar',
                optionText: 'RONDE',
                price: '\$250',
                isLocked: false,
              ),
              _buildOptionContainer(
                context,
                image: 'assets/images/r5.jpg',
                imageText: 'Editar',
                optionText: 'CIRCLE',
                price: '\$300',
                isLocked: false,
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const SecondScreen(),
                    ),
                  );
                },
                child: const Text('Agregar Relojes'),
              ),
            ],
          ),
        ),
      ),
    );
  }

  static Widget _buildOptionContainer(
    BuildContext context, {
    required String image,
    required String imageText,
    required String optionText,
    required String price,
    required bool isLocked,
  }) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 8),
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            spreadRadius: 2,
            blurRadius: 5,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            // Added SizedBox to control width of the column
            width: 100, // Adjust as needed
            child: Column(
              children: [
                Image.asset(
                  image,
                  height: 30,
                  width: 30,
                ),
                const SizedBox(height: 5),
                Text(
                  imageText,
                  style: const TextStyle(fontSize: 12, color: Colors.grey),
                  overflow: TextOverflow.ellipsis, // Added to handle long text
                ),
              ],
            ),
          ),
          Expanded(
            // Use Expanded to take up remaining space
            child: Text(
              optionText,
              style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center, // center the text
              overflow: TextOverflow.ellipsis, //Added this
            ),
          ),
          SizedBox(
            // Added SizedBox to control width of the column
            width: 100, // Adjust as needed
            child: Column(
              children: [
                Icon(
                  isLocked ? Icons.lock : Icons.lock_open,
                  size: 20,
                  color: isLocked ? Colors.grey : Colors.green,
                ),
                const SizedBox(height: 5),
                Text(
                  price,
                  style: const TextStyle(fontSize: 14, color: Colors.black),
                  overflow: TextOverflow.ellipsis, // Added to handle long text
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              'CUAHTLI',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
            Image.asset(
              'assets/images/logoo.PNG', // Asegúrate de tener este archivo en tu proyecto
              height: 24,
              width: 24,
            ),
            const CircleAvatar(
              backgroundColor: Colors.grey,
              radius: 16,
              child: Icon(Icons.person, size: 20, color: Colors.white),
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const Text(
                "Agregar un nuevo reloj",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 20),
              _buildTextFieldContainer(labelText: "Nombre del reloj"),
              _buildTextFieldContainer(labelText: "Descripción"),
              _buildTextFieldContainer(labelText: "Costo"),
              _buildTextFieldContainer(labelText: "Materiales"),
              _buildImagePickerContainer(),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  // Lógica para agregar el nuevo reloj
                  Navigator.pop(
                      context); // Por ejemplo, regresar a la pantalla anterior
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor:
                      Colors.green, // Establece el color de fondo del botón
                ),
                child: const Text(
                  'Agregar nuevo reloj',
                  style: TextStyle(
                      color: Colors.white), // Establece el color del texto
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  static Widget _buildTextFieldContainer({required String labelText}) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            labelText,
            style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 5),
          Container(
            // Simula un cuadro de texto
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              border: Border.all(color: Colors.grey),
            ),
            width: double
                .infinity, // Hace que el contenedor ocupe todo el ancho disponible
            child:
                const Text(""), // Puedes dejarlo vacío o agregar un hint text
          ),
        ],
      ),
    );
  }

  static Widget _buildImagePickerContainer() {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Imagen de producto",
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 5),
          Container(
            // Simula un cuadro de selección de imagen
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 30),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              border: Border.all(color: Colors.grey),
            ),
            width: double
                .infinity, // Hace que el contenedor ocupe todo el ancho disponible
            child: const Center(
                child: Text("Seleccionar imagen")), //Un texto de guia
          ),
        ],
      ),
    );
  }
}
