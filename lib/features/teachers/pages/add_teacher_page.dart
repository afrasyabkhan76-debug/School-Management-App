import 'package:flutter/material.dart';

import '../data/teacher_data.dart';

class AddTeacherPage extends StatefulWidget {
  const AddTeacherPage({super.key});

  @override
  State<AddTeacherPage> createState() => _AddTeacherPageState();
}

class _AddTeacherPageState extends State<AddTeacherPage> {
  final formKey = GlobalKey<FormState>();
  final name = TextEditingController();
  final cnic = TextEditingController();
  final address = TextEditingController();
  final department = TextEditingController();

  @override
  void dispose() {
    name.dispose();
    cnic.dispose();
    address.dispose();
    department.dispose();
    super.dispose();
  }

  Widget field(String label, TextEditingController controller) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 14),
      child: TextFormField(
        controller: controller,
        decoration: InputDecoration(labelText: label),
        validator: (value) {
          if (value == null || value.trim().isEmpty) {
            return 'Please enter $label';
          }
          return null;
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Add Teacher')),
      body: Center(
        child: ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 500),
          child: Form(
            key: formKey,
            child: ListView(
              padding: const EdgeInsets.all(20),
              children: [
                field('Teacher Name', name),
                field('CNIC', cnic),
                field('Address', address),
                field('Department', department),
                const SizedBox(height: 8),
                FilledButton(
                  onPressed: () {
                    if (formKey.currentState!.validate()) {
                      TeacherData.addTeacher({
                        'name': name.text.trim(),
                        'cnic': cnic.text.trim(),
                        'address': address.text.trim(),
                        'department': department.text.trim(),
                      });

                      Navigator.pop(context, true);
                    }
                  },
                  child: const Padding(
                    padding: EdgeInsets.all(14),
                    child: Text('Save Teacher'),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
