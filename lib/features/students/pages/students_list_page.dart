import 'package:flutter/material.dart';

import '../data/student_data.dart';
import '../widgets/student_card.dart';

class StudentsListPage extends StatelessWidget {
  const StudentsListPage({super.key});

  @override
  Widget build(BuildContext context) {
    final students = StudentData.students;

    return Scaffold(
      appBar: AppBar(title: const Text('Students')),
      body: students.isEmpty
          ? const Center(child: Text('No students added yet.'))
          : ListView.builder(
              padding: const EdgeInsets.all(16),
              itemCount: students.length,
              itemBuilder: (context, index) {
                return StudentCard(student: students[index]);
              },
            ),
    );
  }
}
