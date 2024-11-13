import 'package:flutter/material.dart';
import 'package:appointmentsapp/screens/EditClinicInfoScreen.dart';
import 'package:appointmentsapp/screens/ManageDoctorsScreen.dart';
// Assuming ManageClinicManagerScreen is missing, create a placeholder or import it.

class ClinicDashboardScreen extends StatelessWidget {
  const ClinicDashboardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Clinic Dashboard'),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.purple,
              ),
              child: Text(
                'Clinic Menu',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              leading: const Icon(Icons.group_add),
              title: const Text('Manage Doctors'),
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const ManageDoctorsScreen()),
              ),
            ),
            ListTile(
              leading: const Icon(Icons.settings),
              title: const Text('Edit Clinic Info'),
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const EditClinicInfoScreen()),
              ),
            ),
            ListTile(
              leading: const Icon(Icons.settings_applications),
              title: const Text('Manage Clinic Manager & Password'),
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const ManageClinicManagerScreen()), // Placeholder or imported screen
              ),
            ),
          ],
        ),
      ),
      body: const Center(child: Text('Clinic Dashboard')),
    );
  }
}

// Placeholder for missing screen if not yet created or imported
class ManageClinicManagerScreen extends StatelessWidget {
  const ManageClinicManagerScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Manage Clinic Manager & Password'),
      ),
      body: const Center(
        child: Text('Manage Clinic Manager Screen'),
      ),
    );
  }
}
