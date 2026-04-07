import 'package:flutter/material.dart';

void main() {
  runApp(const QuizApp());
}

class QuizApp extends StatelessWidget {
  const QuizApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue.shade50,
      appBar: AppBar(
        title: const Text("Quiz App"),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Card(
          elevation: 5,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          margin: const EdgeInsets.all(20),
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const Text(
                  "Quiz App Flutter",
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 20),

                // Nama
                const Text(
                  "Nama: Ruslan J",
                  style: TextStyle(fontSize: 16),
                ),

                const SizedBox(height: 10),

                // NIM
                const Text(
                  "NIM: 60200124136",
                  style: TextStyle(fontSize: 16),
                ),

                const SizedBox(height: 30),

                ElevatedButton(
                  onPressed: () {
                    // nanti bisa diarahkan ke halaman quiz
                  },
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 30, vertical: 12),
                  ),
                  child: const Text("Mulai Quiz"),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}