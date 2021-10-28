import 'package:avatar_glow/avatar_glow.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        // scaffoldBackgroundColor: Colors.white60,
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF1C2143),
        title: const Text("Avatar Glow"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: AvatarGlow(
              glowColor: Colors.blue,
              endRadius: 110.0,
              duration: Duration(milliseconds: 2000),
              repeat: true,
              showTwoGlows: true,
              repeatPauseDuration: Duration(milliseconds: 100),
              child: Material(
                elevation: 8.0,
                shape: CircleBorder(),
                child: ClipOval(
                  child: Image.asset(
                    'images/Sage_icon.png',
                    width: 110,
                    height: 110,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          ),
          Center(
            child: AvatarGlow(
              glowColor: Colors.purple,
              endRadius: 110.0,
              duration: Duration(milliseconds: 2000),
              repeat: true,
              showTwoGlows: true,
              repeatPauseDuration: Duration(milliseconds: 100),
              child: Material(
                elevation: 8.0,
                shape: CircleBorder(),
                child: ClipOval(
                  child: Image.asset(
                    'images/Reyna_icon.png',
                    width: 110,
                    height: 110,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          ),
          Center(
            child: AvatarGlow(
              glowColor: Colors.green,
              endRadius: 110.0,
              duration: Duration(milliseconds: 2000),
              repeat: true,
              showTwoGlows: true,
              repeatPauseDuration: Duration(milliseconds: 100),
              child: Material(
                elevation: 8.0,
                shape: CircleBorder(),
                child: ClipOval(
                  child: Image.asset(
                    'images/Viper_icon.png',
                    width: 110,
                    height: 110,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
