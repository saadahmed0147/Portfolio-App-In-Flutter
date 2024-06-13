import 'package:flutter/material.dart';
import 'package:portfolio_app/Components/drawer.dart';

class EducationScreen extends StatelessWidget {
  final List<Education> educationList = [
    Education(
      level: 'MATRICULATION',
      school: "MILLENNIUM'S EDUCATION SYSTEM",
    ),
    Education(
      level: 'INTERMEDIATE',
      school: 'GOVT. DEGREE BOYS COLLEGE',
    ),
    Education(
      level: 'UNDERGRADUATE',
      school: 'VIRTUAL UNIVERSITY',
    ),
    Education(
      level: 'CERTIFICATION',
      school: 'SAYLANI MASS IT TRAINING',
      details: 'Web & Mobile App Development',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Education'),
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
        itemCount: educationList.length,
        itemBuilder: (context, index) {
          final education = educationList[index];
          return Card(
            margin: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
            child: ListTile(
              title: Text(education.level),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(education.school),
                  if (education.details != null)
                    Text(
                      education.details!,
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

class Education {
  final String level;
  final String school;
  final String? details;

  Education({
    required this.level,
    required this.school,
    this.details,
  });
}
