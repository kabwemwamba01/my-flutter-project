import 'package:appointmentsapp/screens/Clinic%20Dashboard%20Screen.dart';
import 'package:flutter/material.dart';


class ClinicLoginScreen extends StatelessWidget {
  const ClinicLoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Clinic Login'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => const ClinicDashboardScreen()), // Ensure this screen exists
            );
          },
          child: const Text('Login as Clinic'),
        ),
      ),
    );
  }
}

// _LoginForm Widget (assumed to be defined elsewhere in your app)
class _LoginForm extends StatefulWidget {
  final String userType;

  const _LoginForm({required this.userType, Key? key}) : super(key: key);

  @override
  _LoginFormState createState() => _LoginFormState();
}

class _LoginFormState extends State<_LoginForm> {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextField(
          controller: _usernameController,
          decoration: const InputDecoration(
            labelText: 'Username',
            border: OutlineInputBorder(),
          ),
        ),
        const SizedBox(height: 16),
        TextField(
          controller: _passwordController,
          obscureText: true,
          decoration: const InputDecoration(
            labelText: 'Password',
            border: OutlineInputBorder(),
          ),
        ),
        const SizedBox(height: 20),
        ElevatedButton(
          onPressed: () {
            // Implement login logic here
            print('Logging in as ${widget.userType}');
          },
          child: const Text('Login'),
        ),
      ],
    );
  }
}
