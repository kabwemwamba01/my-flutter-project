import 'package:flutter/material.dart';

class _LoginForm extends StatefulWidget {
  final String userType;

  const _LoginForm({required this.userType, Key? key}) : super(key: key);

  @override
  __LoginFormState createState() => __LoginFormState();
}

class __LoginFormState extends State<_LoginForm> {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  DateTime selectedDate = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('${widget.userType} Login', style: const TextStyle(fontSize: 24)),
          const SizedBox(height: 20),
          TextField(
            controller: nameController,
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Username',
            ),
          ),
          const SizedBox(height: 16.0),
          TextField(
            controller: passwordController,
            obscureText: true,
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Password',
            ),
          ),
          const SizedBox(height: 16.0),
          Text('Selected Date: ${selectedDate.toLocal()}'.split(' ')[0]),
          const SizedBox(height: 16.0),
          ElevatedButton(
            onPressed: () async {
              DateTime? pickedDate = await showDatePicker(
                context: context,
                initialDate: selectedDate,
                firstDate: DateTime(2000),
                lastDate: DateTime(2101),
              );

              if (pickedDate != null && pickedDate != selectedDate) {
                setState(() {
                  selectedDate = pickedDate;
                });
              }
            },
            child: const Text('Select Date'),
          ),
          const SizedBox(height: 20.0),
          ElevatedButton(
            onPressed: () {
              // Implement login functionality here
              print('Logged in as ${widget.userType}');
            },
            child: const Text('Login'),
          ),
        ],
      ),
    );
  }
}

class LoginForm extends StatelessWidget {
  final String userType;

  const LoginForm({required this.userType, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Login')),
      body: _LoginForm(userType: userType),
    );
  }
}
