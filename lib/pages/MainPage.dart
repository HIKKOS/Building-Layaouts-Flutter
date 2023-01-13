import 'package:building_layaouts/widgets/TextSection.dart';
import 'package:building_layaouts/widgets/TitleSection.dart';
import 'package:building_layaouts/widgets/buttonSection.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Building layaouts',
      home: Scaffold(
        body: Column(
          children: [
            Image.asset(
              'images/lake.jpg',
              height: 240,
              width: 600,
              fit: BoxFit.cover,
            ),
            const TilteSection(),
            ButtonSection(),
            const TextSection()
          ],
        ),
      ),
    );
  }
}

Column _buildButtonColumn(Color color, IconData icon, String label) {
  return Column(
    mainAxisSize: MainAxisSize.min,
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Icon(icon, color: color),
      Container(
        margin: const EdgeInsets.only(top: 8),
        child: Text(
          label,
          style: TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w400,
            color: color,
          ),
        ),
      ),
    ],
  );
}
