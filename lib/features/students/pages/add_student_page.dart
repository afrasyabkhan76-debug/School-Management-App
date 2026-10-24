import 'package:flutter/material.dart';

import '../data/student_data.dart';

class AddStudentPage extends StatefulWidget {
  const AddStudentPage({super.key});

  @override
  State<AddStudentPage> createState() => _AddStudentPageState();
}

class _AddStudentPageState extends State<AddStudentPage> {
  final formKey = GlobalKey<FormState>();
  final name = TextEditingController();
  final father = TextEditingController();
  final cnic = TextEditingController();
  final phone = TextEditingController();
  final address = TextEditingController();
  final department = TextEditingController();

  @override
  void dispose() {
    name.dispose();
    father.dispose();
    cnic.dispose();
    phone.dispose();
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
      appBar: AppBar(title: const Text('Add Student')),
      body: Center(
        child: ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 500),
          child: Form(
            key: formKey,
            child: ListView(
              padding: const EdgeInsets.all(20),
              children: [
                field('Student Name', name),
                field("Father's Name", father),
                field('CNIC', cnic),
                field('Phone Number', phone),
                field('Address', address),
                field('Department', department),
                const SizedBox(height: 8),
                FilledButton(
                  onPressed: () {
                    if (formKey.currentState!.validate()) {
                      StudentData.addStudent({
                        'name': name.text.trim(),
                        'father': father.text.trim(),
                        'cnic': cnic.text.trim(),
                        'phone': phone.text.trim(),
                        'address': address.text.trim(),
                        'department': department.text.trim(),
                      });

                      Navigator.pop(context, true);
                    }
                  },
                  child: const Padding(
                    padding: EdgeInsets.all(14),
                    child: Text('Save Student'),
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
