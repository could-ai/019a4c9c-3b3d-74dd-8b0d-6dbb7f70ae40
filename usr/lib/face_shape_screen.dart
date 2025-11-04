import 'package:flutter/material.dart';
import 'package:couldai_user_app/results_screen.dart';

class FaceShapeScreen extends StatelessWidget {
  const FaceShapeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> faceShapes = [
      {'name': 'بيضاوي', 'icon': Icons.sentiment_satisfied},
      {'name': 'دائري', 'icon': Icons.circle_outlined},
      {'name': 'مربع', 'icon': Icons.crop_square},
      {'name': 'قلب', 'icon': Icons.favorite_border},
      {'name': 'مستطيل', 'icon': Icons.rectangle_outlined},
      {'name': 'ماسي', 'icon': Icons.diamond_outlined},
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('اختر شكل وجهك'),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: GridView.builder(
        padding: const EdgeInsets.all(16.0),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 16.0,
          mainAxisSpacing: 16.0,
          childAspectRatio: 1.2,
        ),
        itemCount: faceShapes.length,
        itemBuilder: (context, index) {
          final shape = faceShapes[index];
          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ResultsScreen(faceShape: shape['name']),
                ),
              );
            },
            child: Card(
              elevation: 4.0,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(shape['icon'], size: 50, color: Colors.deepPurple),
                  const SizedBox(height: 12),
                  Text(
                    shape['name'],
                    style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
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
