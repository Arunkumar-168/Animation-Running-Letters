import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Animated Text Kit',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(primarySwatch: Colors.green),
        home: Scaffold(
          appBar: AppBar(
            title: const Text("GeeksForGeeks"),
            centerTitle: true,
          ),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              AnimatedTextKit(
                animatedTexts: [
                  RotateAnimatedText('AWESOME',
                      textStyle: const TextStyle(
                          fontSize: 30,
                          color: Colors.white,
                          backgroundColor: Colors.blue)),
                  RotateAnimatedText('OPTIMISTIC',
                      textStyle: const TextStyle(
                          letterSpacing: 3,
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Colors.orange)),
                  RotateAnimatedText(
                    'GeeksForGeeks',
                    textStyle: const TextStyle(
                      fontSize: 30,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                ],
                isRepeatingAnimation: true,
                totalRepeatCount: 10,
                pause: const Duration(milliseconds: 1000),
              ),
              // SizedBox(height: 10),
              Center(
                child: AnimatedTextKit(
                  totalRepeatCount: 40,
                  animatedTexts: [
                    FadeAnimatedText(
                      'First Fade',
                      textStyle: const TextStyle(
                          backgroundColor: Colors.green,
                          color: Colors.white,
                          fontSize: 32.0,
                          fontWeight: FontWeight.bold),
                    ),
                    ScaleAnimatedText(
                      'Then Get Bigger',
                      duration: const Duration(milliseconds: 4000),
                      textStyle:
                      const TextStyle(color: Colors.indigo, fontSize: 50.0),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 10),
              AnimatedTextKit(
                animatedTexts: [
                  TyperAnimatedText('This is Animated text,',
                      textStyle: const TextStyle(
                          color: Colors.white,
                          fontSize: 30,
                          backgroundColor: Colors.purple)),
                  TyperAnimatedText('You are viewing it here.',
                      textStyle: const TextStyle(
                          fontSize: 20, fontWeight: FontWeight.bold)),
                ],
                onTap: () {
                  print("I am executing");
                },
              ),

              const SizedBox(height: 10),
              Center(
                child: AnimatedTextKit(
                  animatedTexts: [
                    WavyAnimatedText('Hello World',
                        textStyle: const TextStyle(
                          color: Colors.blue,
                          fontSize: 30,
                        )),
                    WavyAnimatedText('Look at the waves',
                        textStyle: TextStyle(
                          color: Colors.green[600],
                          fontSize: 30,
                        )),
                  ],
                  repeatForever: true,
                  onTap: () {
                    print("Tap Event");
                  },
                ),
              ),
            ],
          ),
        ));
  }
}
