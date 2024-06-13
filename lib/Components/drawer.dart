import 'package:flutter/material.dart';
import 'package:portfolio_app/Screens/about_me.dart';
import 'package:portfolio_app/Screens/contact.dart';
import 'package:portfolio_app/Screens/education.dart';
import 'package:portfolio_app/Screens/home_screen.dart';
import 'package:portfolio_app/Screens/projects.dart';
import 'package:portfolio_app/Screens/skills.dart';

class DrawerWidget extends StatefulWidget {
  const DrawerWidget({super.key});

  @override
  State<DrawerWidget> createState() => _DrawerWidgetState();
}

class _DrawerWidgetState extends State<DrawerWidget> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height * 1;

    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.grey.shade800,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: 40,
                  backgroundImage: const AssetImage('assets/profileImage.png'),
                  backgroundColor: Colors.grey.shade800,
                ),
                SizedBox(height: height * 0.01),
                const Text(
                  'Saad Ahmed',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => HomeScreen(),
                  ));
            },
            child: const ListTile(
              leading: Icon(Icons.home),
              title: Text('Home'),
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => AboutScreen(),
                  ));
            },
            child: const ListTile(
              leading: Icon(Icons.person),
              title: Text('About Me'),
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ProjectsScreen(),
                  ));
            },
            child: const ListTile(
              leading: Icon(Icons.work),
              title: Text('Projects'),
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => EducationScreen(),
                  ));
            },
            child: const ListTile(
              leading: Icon(Icons.school),
              title: Text('Education'),
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SkillsScreen(),
                  ));
            },
            child: const ListTile(
              leading: Icon(Icons.star),
              title: Text('Skills'),
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ContactScreen(),
                  ));
            },
            child: const ListTile(
              leading: Icon(Icons.contact_mail),
              title: Text('Contact'),
            ),
          ),
        ],
      ),
    );
  }
}
