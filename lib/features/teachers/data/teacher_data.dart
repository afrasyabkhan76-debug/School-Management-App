class TeacherData {
  static final List<Map<String, String>> teachers = [
    {
      'name': 'Mr. Imran Khan',
      'cnic': '12222-1234567-1',
      'address': 'Peshawar',
      'department': 'Computer Science',
    },
    {
      'name': 'Ms. Sana Ahmed',
      'cnic': '12222-2345678-2',
      'address': 'Charsadda',
      'department': 'Mathematics',
    },
    {
      'name': 'Mr. Bilal Shah',
      'cnic': '12222-3456789-3',
      'address': 'Mardan',
      'department': 'English',
    },
  ];

  static void addTeacher(Map<String, String> teacher) {
    teachers.add(teacher);
  }
}
