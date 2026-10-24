import 'package:flutter/material.dart';

import '../data/teacher_data.dart';
import '../widgets/teacher_card.dart';

class TeachersListPage extends StatelessWidget {
  const TeachersListPage({super.key});

  @override
  Widget build(BuildContext context) {
    final teachers = TeacherData.teachers;

    return Scaffold(
      appBar: AppBar(title: const Text('Teachers')),
      body: teachers.isEmpty
          ? const Center(child: Text('No teachers added yet.'))
          : ListView.builder(
              padding: const EdgeInsets.all(16),
              itemCount: teachers.length,
              itemBuilder: (context, index) {
                return TeacherCard(teacher: teachers[index]);
              },
            ),
    );
  }
}
