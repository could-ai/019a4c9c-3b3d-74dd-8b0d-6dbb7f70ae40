import 'package:flutter/material.dart';

class ResultsScreen extends StatelessWidget {
  final String faceShape;

  const ResultsScreen({super.key, required this.faceShape});

  // Mock data for hairstyle recommendations
  final Map<String, List<String>> hairstyleRecommendations = const {
    'بيضاوي': [
      'قصة الطبقات الطويلة',
      'البوب غير المتماثل',
      'الشعر المتوسط المموج',
      'قصة البيكسي',
    ],
    'دائري': [
      'قصة البيكسي الطويلة',
      'الطبقات التي تصل إلى الذقن',
      'الشعر الطويل مع تموجات ناعمة',
      'فرق جانبي عميق',
    ],
    'مربع': [
      'الشعر الطويل المموج',
      'البوب الطويل (لوب)',
      'الغرة الجانبية',
      'الطبقات الناعمة',
    ],
    'قلب': [
      'البوب بطول الذقن',
      'الشعر المتوسط مع غرة جانبية',
      'الطبقات الطويلة',
      'الشعر المموج',
    ],
    'مستطيل': [
      'الغرة المستقيمة أو الجانبية',
      'الشعر المموج بطول الكتف',
      'الطبقات التي تضيف عرضًا',
      'تجنب الشعر الطويل المستقيم',
    ],
    'ماسي': [
      'البوب بطول الذقن',
      'الشعر المتوسط إلى الطويل مع طبقات',
      'الغرة الجانبية الناعمة',
      'تسريحات الشعر المرفوعة',
    ],
  };

  @override
  Widget build(BuildContext context) {
    final recommendations = hairstyleRecommendations[faceShape] ?? [];

    return Scaffold(
      appBar: AppBar(
        title: Text('توصيات للوجه $faceShape'),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(8.0),
        itemCount: recommendations.length,
        itemBuilder: (context, index) {
          final hairstyle = recommendations[index];
          return Card(
            margin: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
            child: ListTile(
              leading: const Icon(Icons.style, color: Colors.deepPurple),
              title: Text(hairstyle),
              contentPadding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 16.0),
            ),
          );
        },
      ),
    );
  }
}
