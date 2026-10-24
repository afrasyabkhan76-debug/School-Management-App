import 'package:flutter/material.dart';

class TeacherCard extends StatelessWidget {
  final Map<String, String> teacher;

  const TeacherCard({super.key, required this.teacher});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.only(bottom: 12),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              teacher['name'] ?? '',
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            Text('CNIC: ${teacher['cnic'] ?? ''}'),
            Text('Address: ${teacher['address'] ?? ''}'),
            Text('Department: ${teacher['department'] ?? ''}'),
          ],
        ),
      ),
    );
  }
}
