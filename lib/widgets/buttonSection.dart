import 'package:flutter/material.dart';

class ButtonSection extends StatelessWidget {
  Column _buildColumn(IconData icon, String label, Color color,
      BuildContext context, String msg) {
    return Column(
      children: [
        IconButton(
          onPressed: () {
            ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(duration: Duration(seconds: 1), content: Text(msg)));
          },
          icon: Icon(
            icon,
            size: 25,
          ),
          color: color,
        ),
        Text(label),
      ],
    );
  }

  const ButtonSection({super.key});

  @override
  Widget build(BuildContext context) {
    Color color = Theme.of(context).primaryColor;
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          _buildColumn(Icons.call, 'Call', color, context, 'LLamando a'),
          _buildColumn(Icons.near_me, 'Routes', color, context, 'Yendo a'),
          _buildColumn(Icons.share, 'Share', color, context, 'Compartiendo a')
        ],
      ),
    );
  }
}
