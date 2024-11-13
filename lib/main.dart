import 'package:appointmentsapp/screens/admin%20login%20screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:appointmentsapp/screens/UserSelectionScreen.dart';
// Ensure this provider is defined

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => AdminAuthProvider(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Clinic Appointment System',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.purple,
          ),
        ),
      ),
      home: UserSelectionScreen(), // Initial Screen
    );
  }
}