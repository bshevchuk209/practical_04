import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) => MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'Практична №4',
    theme: ThemeData(
      colorScheme: ColorScheme.fromSeed(seedColor: Colors.yellow),
      useMaterial3: true,
    ),
    home: const CounterPage(),
  );
}

class CounterPage extends StatefulWidget {
  const CounterPage({super.key});
  @override
  State<CounterPage> createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {
  int _counter = 0;
  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(
      title: const Text('Практична №4'),
      backgroundColor: Theme.of(context).colorScheme.inversePrimary,
    ),
    body: SafeArea(
      child: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(24),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Варіант 24 • Основи Flutter',
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 24),
              const Text('Кількість натискань:'),
              Semantics(
                liveRegion: true,
                child: Text(
                  '$_counter',
                  style: Theme.of(context).textTheme.displayLarge,
                ),
              ),
              const SizedBox(height: 16),
              const Text('Кожне натискання додає 3'),
            ],
          ),
        ),
      ),
    ),
    floatingActionButton: FloatingActionButton(
      onPressed: () => setState(() => _counter += 3),
      tooltip: 'Додати 3',
      child: const Icon(Icons.person),
    ),
  );
}
