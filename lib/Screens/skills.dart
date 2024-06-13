import 'package:flutter/material.dart';
import 'package:portfolio_app/Components/drawer.dart';

class SkillsScreen extends StatelessWidget {
  final List<Skill> skills = [
    Skill(
      name: 'Dart Programming Language',
      icon: Icons.code,
    ),
    Skill(
      name: 'Flutter Programming',
      icon: Icons.mobile_screen_share,
    ),
    Skill(
      name: 'Provider State Management',
      icon: Icons.memory,
    ),
    Skill(
      name: 'REST APIs',
      icon: Icons.api,
    ),
    Skill(
      name: 'MVVM Architecture',
      icon: Icons.layers,
    ),
    Skill(
      name: 'GitHub',
      icon: Icons.code_outlined,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Skills'),
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
      body: ListView.builder(
        itemCount: skills.length,
        itemBuilder: (context, index) {
          final skill = skills[index];
          return Card(
            margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
            child: ListTile(
              leading: Icon(skill.icon),
              title: Text(skill.name),
            ),
          );
        },
      ),
    );
  }
}

class Skill {
  final String name;
  final IconData icon;

  Skill({required this.name, required this.icon});
}
