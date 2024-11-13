import 'package:appointmentsapp/screens/Patient%20Dashboard%20Screen.dart';
import 'package:flutter/material.dart';


class PatientLoginScreen extends StatelessWidget {
  const PatientLoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Patient Login'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Patient Login', style: TextStyle(fontSize: 24)),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const PatientDashboardScreen(),
                  ),
                );
              },
              child: const Text('Login as Patient'),
            ),
          ],
        ),
      ),
    );
  }
}
