import 'package:flutter/material.dart';

class StudentCard extends StatelessWidget {
  final Map<String, String> student;

  const StudentCard({super.key, required this.student});

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
              student['name'] ?? '',
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            Text("Father's Name: ${student['father'] ?? ''}"),
            Text('CNIC: ${student['cnic'] ?? ''}'),
            Text('Phone: ${student['phone'] ?? ''}'),
            Text('Address: ${student['address'] ?? ''}'),
            Text('Department: ${student['department'] ?? ''}'),
          ],
        ),
      ),
    );
  }
}
