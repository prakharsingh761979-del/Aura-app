import 'camera_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const AuraApp());
}

class AuraApp extends StatelessWidget {
  const AuraApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
  debugShowCheckedModeBanner: false,
  title: 'AURA',
  theme: ThemeData(
    primaryColor: Colors.black,
    scaffoldBackgroundColor: Colors.white,
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.black,
      foregroundColor: Colors.white,
      centerTitle: true,
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
        padding: EdgeInsets.symmetric(horizontal: 24, vertical: 14),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
      ),
    ),
  ),
  home: const HomeScreen(),
);
      title: 'AURA',
      debugShowCheckedModeBanner: false,
      home: const HomeScreen(),
    );
  }
}
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
  appBar: AppBar(
    title: const Text('AURA'),
  ),
  body: Center(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'AURA',
              style: TextStyle(
                fontSize: 42,
                fontWeight: FontWeight.bold,
                letterSpacing: 2,
              ),
            ),
            SizedBox(height: 10),
            Text(
              'Your Face. Your Style.',
              style: TextStyle(
                fontSize: 16,
                color: Colors.grey,
              ),
            ),
            SizedBox(height: 40),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const CameraScreen(),
                  ),
                );
              },
              child: Text('Analyze My Look'),
            ),
          ],
        ),
      ),
    );
  }
}
