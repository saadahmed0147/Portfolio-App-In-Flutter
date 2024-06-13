import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:portfolio_app/Components/drawer.dart';

class ProjectsScreen extends StatefulWidget {
  const ProjectsScreen({super.key});

  @override
  State<ProjectsScreen> createState() => _ProjectsScreenState();
}

class _ProjectsScreenState extends State<ProjectsScreen> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height * 1;

    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        title: const Text(
          'Projects',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
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
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: height * 0.02),
              const Text(
                'Shoes Collection App 👟',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: height * 0.01),
              const Text(
                ' - A mobile app designed for shoe enthusiasts to browse, collect, and manage their shoe collections.',
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: height * 0.01),
              Row(
                children: [
                  const Text(
                    'Link : ',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                  Flexible(
                    child: TextButton(
                        onPressed: () {},
                        child: const Text(
                            'https://github.com/saadahmed0147/Shoes-Collection-App-in-Flutter')),
                  ),
                ],
              ),
              SizedBox(height: height * 0.02),
              const Text(
                'Weather App  🌥',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: height * 0.01),
              const Text(
                ' - Our weather app fetching data from the OpenWeatherAPI to deliver accurate forecasts, updated every hour. Users can seamlessly track weather conditions for the next 6 hours, ensuring they are always prepared for changing weather patterns.',
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: height * 0.01),
              Row(
                children: [
                  const Text(
                    'Link : ',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                  Flexible(
                    child: TextButton(
                        onPressed: () {},
                        child: const Text(
                            'https://github.com/saadahmed0147/Weather-App')),
                  ),
                ],
              ),
              SizedBox(height: height * 0.02),
              const Text(
                'Population App  👥',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: height * 0.01),
              const Text(
                ' - Our population app utilizes data from various sources to provide real-time population statistics of countries worldwide. It enables users to explore detailed demographic information and compare population figures across different regions.',
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: height * 0.01),
              Row(
                children: [
                  const Text(
                    'Link : ',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                  Flexible(
                    child: TextButton(
                        onPressed: () {},
                        child: const Text(
                            'https://github.com/saadahmed0147/Population-App-in-Flutter')),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
