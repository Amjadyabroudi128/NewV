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
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  double yesButtonSize = 16;
  String noText = "NO";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text("Hey babe"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'gifs/jumping.gif',
              width: 150,
              height: 150,
            ),
            const SizedBox(height: 10),
            Text(
              "Will you be my Valentine? 👀",
              style: Theme.of(context).textTheme.headlineMedium,
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 18),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                AnimatedContainer(
                  duration: const Duration(milliseconds: 300),
                  child: MaterialButton(
                    color: Colors.green,
                    child: Text(
                      "YES",
                      style: TextStyle(fontSize: yesButtonSize),
                    ),
                    onPressed: () {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(content: Text("YAY 😍 Best decision ever!")),
                      );
                    },
                  ),
                ),
                MaterialButton(
                  color: Colors.red,
                  child: Text(noText),
                  onPressed: () {
                    setState(() {
                      yesButtonSize += 6; // make YES bigger
                      noText = "Are you sure? 😅";
                    });
                  },
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
