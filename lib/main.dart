import 'package:flutter/material.dart';

main() {
  runApp(const Salman());
}

class Salman extends StatelessWidget {
  const Salman({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: NewHome(),
    );
  }
}

class NewHome extends StatefulWidget {
  const NewHome({super.key});

  @override
  State<NewHome> createState() => _NewHomeState();
}

class _NewHomeState extends State<NewHome> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Salman Ahmed joynal"),
        centerTitle: true,
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          FloatingActionButton.extended(
            onPressed: () {
              counter++;
              setState(() {});
            },
            label: Row(
              children: const [
                Icon(Icons.add),
                Text("Add"),
              ],
            ),
          ),
          const SizedBox(
            width: 20,
          ),
          FloatingActionButton.extended(
            onPressed: () {
              if (counter > 0) {
                counter--;
                setState(() {});
              }
            },
            label: Row(
              children: const [
                Icon(Icons.remove_circle),
                Text("Minus"),
              ],
            ),
          ),
        ],
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              counter.toString(),
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const SecondPage()));
              },
              child: const Text("Go to second screen"),
            ),
          ],
        ),
      ),
    );
  }
}

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Second Page"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          StatefulBuilder(
            builder: (context, setState) {
              var name = "Salman";
              return Row(
                children: [
                  Text(name),
                  const Spacer(),
                  ElevatedButton(
                    onPressed: () {
                      name = "Your Name";
                      setState(() {});
                    },
                    child: const Text("Change Name"),
                  ),
                ],
              );
            },
          ),
        ],
      ),
    );
  }
}