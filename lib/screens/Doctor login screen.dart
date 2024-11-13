import 'package:appointmentsapp/screens/Doctor%20Dashboard%20Screen.dart';
import 'package:flutter/material.dart';

// Doctor Login Screen
class DoctorLoginScreen extends StatelessWidget {
  const DoctorLoginScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Doctor Login'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => const DoctorDashboardScreen()),
            );
          },
          child: const Text('Login as Doctor'),
        ),
      ),
    );
  }
}