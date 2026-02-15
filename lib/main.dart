import 'package:flutter/material.dart';
import 'package:valentine/core/images.dart';
import 'package:valentine/core/myColors.dart';
import 'package:valentine/enums/yup.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
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
  MyAnswer? answer; // enum state
  double noBtn =  16;
  final List<String> noMessages = [
    "NO 😐",
    "Are you sure? 😅",
    "Come on… really? 👀",
    "That’s cold 🥶",
    "You’re breaking my heart 💔",
  ];

  int noIndex = 0;

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final maxYesFontSize = screenWidth * 0.19;
    final String titleText = (answer == MyAnswer.yes)
        ? "Yaaaay I love you 😍"
        : "Will you be my Valentine? 👀";

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text("Hey babe"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: .center,
          children: [
            if(answer == MyAnswer.yes)
            MyImage(
              myImage: 'gifs/hugme.gif',
            ) else MyImage(
              myImage: 'gifs/jumping.gif',
            ),
            const SizedBox(height: 10),
            Text(
              titleText,
              textAlign: .center,
            ),
            const SizedBox(height: 18),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                AnimatedContainer(
                  duration: const Duration(milliseconds: 300),
                  child: MaterialButton(
                    color: MyColors.yes,
                    onPressed: () {
                      setState(() {
                        answer = MyAnswer.yes;
                        yesButtonSize = 16;
                        noIndex = 0;
                      });
                    },
                    child: Text(
                      "YES",
                      style: TextStyle(
                        fontSize: yesButtonSize.clamp(16, maxYesFontSize),
                        color: MyColors.noMessage,
                        fontWeight: .bold,
                      ),
                    ),
                  ),
                ),
                MaterialButton(
                  color: MyColors.no,
                  onPressed: () {
                    setState(() {
                      answer = MyAnswer.no;
                      yesButtonSize =
                          (yesButtonSize + 6).clamp(16, maxYesFontSize);
                      noIndex = (noIndex + 1) % noMessages.length;
                    });
                  },
                  child: Text(
                    noMessages[noIndex],
                    style:  TextStyle(color: MyColors.noMessage),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
