
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
      home: const AnimalPage(),
    );
  }
}

class AnimalPage extends StatelessWidget {
  const AnimalPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue[50],
      body: Center(
        child: Card(
          elevation: 5,
          margin: const EdgeInsets.all(20),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          child: Container(
            width: 320,
            padding: const EdgeInsets.all(20),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [

                // Image de l'animal
                ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Image.network(
                    'https://images.unsplash.com/photo-1514888286974-6c03e2ca1dba?w=600',
                    height: 180,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),

                const SizedBox(height: 20),

                // Nom de l'animal
                const Text(
                  'Le Chat 🐱',
                  style: TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.bold,
                    color: Colors.blueGrey,
                  ),
                ),

                const SizedBox(height: 10),

                // Description
                const Text(
                  'Le chat domestique est un petit mammifère '
                  'carnivore. Intelligent, indépendant et affectueux, '
                  'il est un excellent compagnon.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.black87,
                    height: 1.5,
                  ),
                ),

                const SizedBox(height: 20),

                // Informations avec icônes
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      children: const [
                        Icon(Icons.cake, color: Colors.blue, size: 28),
                        SizedBox(height: 5),
                        Text('1 an'),
                      ],
                    ),

                    Column(
                      children: const [
                        Icon(Icons.home, color: Colors.blue, size: 28),
                        SizedBox(height: 5),
                        Text('Maison'),
                      ],
                    ),

                    Column(
                      children: const [
                        Icon(Icons.monitor_weight,
                            color: Colors.blue, size: 28),
                        SizedBox(height: 5),
                        Text('4 kg'),
                      ],
                    ),
                  ],
                ),

                const SizedBox(height: 25),

                // Bouton
                ElevatedButton(
                  onPressed: () {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text('Merci de découvrir les chats !'),
                      ),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                    foregroundColor: Colors.white,
                    padding: const EdgeInsets.symmetric(
                      horizontal: 30,
                      vertical: 12,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  child: const Text('En savoir plus'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
