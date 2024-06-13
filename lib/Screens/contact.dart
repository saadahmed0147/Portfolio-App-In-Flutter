import 'package:flutter/material.dart';
import 'package:portfolio_app/Components/drawer.dart';

class ContactScreen extends StatelessWidget {
  final String linkedInUrl = 'www.linkedin.com/in/saadahmed0147';
  final String phoneNumber = '+92 323 3543083';
  final String whatsappNumber = '+92 323 3543083';
  final String email = 'saadahmed0147@gmail.com';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Contact'),
        centerTitle: true,
        actions: [
          Builder(
            builder: (BuildContext context) {
              return IconButton(
                icon: Icon(
                  Icons.menu,
                  color: Colors.grey.shade800,
                ),
                onPressed: () {
                  Scaffold.of(context).openEndDrawer();
                },
              );
            },
          ),
        ],
      ),
      endDrawer: const DrawerWidget(),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            ContactTile(
              icon: Icons.person,
              label: 'LinkedIn',
              value: linkedInUrl,
            ),
            ContactTile(
              icon: Icons.phone,
              label: 'Phone',
              value: phoneNumber,
            ),
            ContactTile(
              icon: Icons.message,
              label: 'WhatsApp',
              value: whatsappNumber,
            ),
            ContactTile(
              icon: Icons.email,
              label: 'Email',
              value: email,
            ),
          ],
        ),
      ),
    );
  }
}

class ContactTile extends StatelessWidget {
  final IconData icon;
  final String label;
  final String value;

  const ContactTile({
    required this.icon,
    required this.label,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(icon),
      title: Text(label),
      subtitle: Text(value),
    );
  }
}
