import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MainPage(),
    );
  }
}

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('First Page'),
      ),
      body: Center(
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
        AnimatedTextKit(
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
              textStyle: const TextStyle(color: Colors.indigo, fontSize: 50.0),
            ),
          ],
        ),
        AnimatedTextKit(
          animatedTexts: [
            TyperAnimatedText(
              'This is Animated text,',
              textStyle: const TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                  backgroundColor: Colors.purple),
              speed: const Duration(milliseconds: 100),
            ),
            TyperAnimatedText(
              'You are viewing it here.',
              textStyle:
                  const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              speed: const Duration(milliseconds: 100),
            ),
          ],
          repeatForever: true,
          // This will make the animation repeat indefinitely
          onTap: () {
            print("I am executing");
          },
        ),
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
              'DIFFERENT',
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
      ),
    );
  }
}
