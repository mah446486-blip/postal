import 'package:flutter/material.dart';

void main() {
  runApp(const BreedyApp());
}

class BreedyApp extends StatelessWidget {
  const BreedyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'بريدي',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.teal),
      ),
      home: const Home(),
    );
  }
}

class Home extends StatefulWidget {
  const Home({super.key});
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int i = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(i == 0? 'مراسلات 🔒' : i == 1? 'موثقين ✨' : 'ريلز ✅'),
        backgroundColor: Colors.teal,
        foregroundColor: Colors.white,
      ),
      body: i == 0? const PageA() : i == 1? const PageB() : const PageC(),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: i,
        onTap: (x) => setState(() => i = x),
        selectedItemColor: Colors.teal,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.chat), label: 'مراسلات'),
          BottomNavigationBarItem(icon: Icon(Icons.verified), label: 'موثقين'),
          BottomNavigationBarItem(icon: Icon(Icons.play_circle), label: 'ريلز'),
        ],
      ),
    );
  }
}

class PageA extends StatelessWidget {
  const PageA({super.key});
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('بحث بالأرقام المشفرة\nخصوصيتك محمية 100%', textAlign: TextAlign.center, style: TextStyle(fontSize: 20)),
    );
  }
}

class PageB extends StatelessWidget {
  const PageB({super.key});
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('صناع محتوى موثقين\nخالي من الإباحية', textAlign: TextAlign.center, style: TextStyle(fontSize: 20)),
    );
  }
}

class PageC extends StatelessWidget {
  const PageC({super.key});
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('ريلز أصلي فقط ✨\nالمسروق ينحذف تلقائيا', textAlign: TextAlign.center, style: TextStyle(fontSize: 20)),
    );
  }
}