class StudentData {
  static final List<Map<String, String>> students = [
    {
      'name': 'Ali Khan',
      'father': 'Ahmad Khan',
      'cnic': '11111-1234567-1',
      'phone': '03001234567',
      'address': 'Peshawar',
      'department': 'Computer Science',
    },
    {
      'name': 'Ayesha Noor',
      'father': 'Khalid Noor',
      'cnic': '11111-2345678-2',
      'phone': '03011234567',
      'address': 'Charsadda',
      'department': 'Mathematics',
    },
    {
      'name': 'Hamza Ahmed',
      'father': 'Usman Ahmed',
      'cnic': '11111-3456789-3',
      'phone': '03021234567',
      'address': 'Mardan',
      'department': 'Computer Science',
    },
    {
      'name': 'Fatima Shah',
      'father': 'Bilal Shah',
      'cnic': '11111-4567890-4',
      'phone': '03031234567',
      'address': 'Peshawar',
      'department': 'English',
    },
    {
      'name': 'Usman Ali',
      'father': 'Sajid Ali',
      'cnic': '11111-5678901-5',
      'phone': '03041234567',
      'address': 'Nowshera',
      'department': 'Physics',
    },
  ];

  static void addStudent(Map<String, String> student) {
    students.add(student);
  }
}
