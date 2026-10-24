import 'package:flutter/material.dart';

import '../../auth/pages/sign_in_page.dart';
import '../../students/data/student_data.dart';
import '../../students/pages/add_student_page.dart';
import '../../students/pages/students_list_page.dart';
import '../../teachers/data/teacher_data.dart';
import '../../teachers/pages/add_teacher_page.dart';
import '../../teachers/pages/teachers_list_page.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({super.key});

  Future<void> openPage(BuildContext context, Widget page) async {
    await Navigator.push(context, MaterialPageRoute(builder: (_) => page));
  }

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: const Color(0xFFF5F6FC),
      appBar: AppBar(
        backgroundColor: const Color(0xFFF5F6FC),
        surfaceTintColor: Colors.transparent,
        elevation: 0,
        title: const Row(
          children: [
            Icon(Icons.school_rounded, color: Color(0xFF6046D8), size: 30),
            SizedBox(width: 10),
            Text(
              'School Management',
              style: TextStyle(
                color: Color(0xFF25234D),
                fontWeight: FontWeight.w800,
                fontSize: 20,
              ),
            ),
          ],
        ),
        actions: [
          IconButton(
            tooltip: 'Sign out',
            onPressed: () {
              Navigator.pushAndRemoveUntil(
                context,
                MaterialPageRoute(builder: (_) => const SignInPage()),
                (route) => false,
              );
            },
            icon: const Icon(Icons.logout_rounded, color: Color(0xFF6046D8)),
          ),
          const SizedBox(width: 12),
        ],
      ),
      body: Center(
        child: ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 1120),
          child: ListView(
            padding: EdgeInsets.symmetric(
              horizontal: width < 500 ? 16 : 28,
              vertical: 20,
            ),
            children: [
              // Welcome banner
              Container(
                padding: EdgeInsets.all(width < 500 ? 22 : 32),
                decoration: BoxDecoration(
                  gradient: const LinearGradient(
                    colors: [
                      Color(0xFF5141C9),
                      Color(0xFF8064F6),
                      Color(0xFF9B83FF),
                    ],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                  borderRadius: BorderRadius.circular(28),
                  boxShadow: [
                    BoxShadow(
                      color: const Color(0xFF6046D8).withValues(alpha: 0.24),
                      blurRadius: 24,
                      offset: const Offset(0, 12),
                    ),
                  ],
                ),
                child: Row(
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 12,
                              vertical: 6,
                            ),
                            decoration: BoxDecoration(
                              color: Colors.white.withValues(alpha: 0.16),
                              borderRadius: BorderRadius.circular(30),
                            ),
                            child: const Text(
                              'SCHOOL DASHBOARD',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 10,
                                letterSpacing: 1.5,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          const SizedBox(height: 18),
                          Text(
                            'Welcome Back!',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: width < 500 ? 25 : 34,
                              fontWeight: FontWeight.w800,
                            ),
                          ),
                          const SizedBox(height: 10),
                          const Text(
                            'Manage your students and teachers\n'
                            'easily from one place.',
                            style: TextStyle(
                              color: Color(0xFFEAE6FF),
                              height: 1.6,
                              fontSize: 14,
                            ),
                          ),
                        ],
                      ),
                    ),
                    if (width >= 450)
                      Container(
                        width: width < 650 ? 75 : 120,
                        height: width < 650 ? 75 : 120,
                        decoration: BoxDecoration(
                          color: Colors.white.withValues(alpha: 0.13),
                          shape: BoxShape.circle,
                          border: Border.all(
                            color: Colors.white.withValues(alpha: 0.20),
                            width: 2,
                          ),
                        ),
                        child: Icon(
                          Icons.school_rounded,
                          color: Colors.white,
                          size: width < 650 ? 42 : 68,
                        ),
                      ),
                  ],
                ),
              ),

              const SizedBox(height: 32),

              const Text(
                'School Overview',
                style: TextStyle(
                  color: Color(0xFF25234D),
                  fontSize: 23,
                  fontWeight: FontWeight.w800,
                ),
              ),
              const SizedBox(height: 6),
              const Text(
                'Your school at a glance',
                style: TextStyle(color: Color(0xFF8589A3), fontSize: 14),
              ),
              const SizedBox(height: 20),

              // Total cards at the top
              LayoutBuilder(
                builder: (context, constraints) {
                  final twoColumns = constraints.maxWidth >= 550;
                  final cardWidth = twoColumns
                      ? (constraints.maxWidth - 18) / 2
                      : constraints.maxWidth;

                  return Wrap(
                    spacing: 18,
                    runSpacing: 18,
                    children: [
                      SizedBox(
                        width: cardWidth,
                        child: _statCard(
                          title: 'Total Students',
                          value: '${StudentData.students.length}',
                          subtitle: 'Registered students',
                          icon: Icons.groups_rounded,
                          color: const Color(0xFF4385F5),
                          lightColor: const Color(0xFFEAF1FF),
                          onTap: () =>
                              openPage(context, const StudentsListPage()),
                        ),
                      ),
                      SizedBox(
                        width: cardWidth,
                        child: _statCard(
                          title: 'Total Teachers',
                          value: '${TeacherData.teachers.length}',
                          subtitle: 'Registered teachers',
                          icon: Icons.cast_for_education_rounded,
                          color: const Color(0xFF7855E9),
                          lightColor: const Color(0xFFF0EAFE),
                          onTap: () =>
                              openPage(context, const TeachersListPage()),
                        ),
                      ),
                    ],
                  );
                },
              ),

              const SizedBox(height: 32),

              const Text(
                'Quick Actions',
                style: TextStyle(
                  color: Color(0xFF25234D),
                  fontSize: 23,
                  fontWeight: FontWeight.w800,
                ),
              ),
              const SizedBox(height: 6),
              const Text(
                'Add new members to your school',
                style: TextStyle(color: Color(0xFF8589A3), fontSize: 14),
              ),
              const SizedBox(height: 20),

              // Add cards at the bottom
              LayoutBuilder(
                builder: (context, constraints) {
                  final twoColumns = constraints.maxWidth >= 550;
                  final cardWidth = twoColumns
                      ? (constraints.maxWidth - 18) / 2
                      : constraints.maxWidth;

                  return Wrap(
                    spacing: 18,
                    runSpacing: 18,
                    children: [
                      SizedBox(
                        width: cardWidth,
                        child: _actionCard(
                          title: 'Add Student',
                          subtitle: 'Register a new student',
                          icon: Icons.person_add_alt_1_rounded,
                          color: const Color(0xFF119B83),
                          lightColor: const Color(0xFFE3F8F2),
                          onTap: () =>
                              openPage(context, const AddStudentPage()),
                        ),
                      ),
                      SizedBox(
                        width: cardWidth,
                        child: _actionCard(
                          title: 'Add Teacher',
                          subtitle: 'Register a new teacher',
                          icon: Icons.add_moderator_rounded,
                          color: const Color(0xFF7855E9),
                          lightColor: const Color(0xFFF0EAFE),
                          onTap: () =>
                              openPage(context, const AddTeacherPage()),
                        ),
                      ),
                    ],
                  );
                },
              ),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }

  Widget _statCard({
    required String title,
    required String value,
    required String subtitle,
    required IconData icon,
    required Color color,
    required Color lightColor,
    required VoidCallback onTap,
  }) {
    return Material(
      color: Colors.white,
      borderRadius: BorderRadius.circular(24),
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(24),
        child: Container(
          padding: const EdgeInsets.all(24),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(24),
            border: Border.all(color: color.withValues(alpha: 0.16)),
            boxShadow: [
              BoxShadow(
                color: color.withValues(alpha: 0.07),
                blurRadius: 20,
                offset: const Offset(0, 8),
              ),
            ],
          ),
          child: Row(
            children: [
              Container(
                width: 72,
                height: 72,
                decoration: BoxDecoration(
                  color: lightColor,
                  borderRadius: BorderRadius.circular(22),
                ),
                child: Icon(icon, color: color, size: 36),
              ),
              const SizedBox(width: 18),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: const TextStyle(
                        color: Color(0xFF35345B),
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      value,
                      style: TextStyle(
                        color: color,
                        fontSize: 35,
                        height: 1,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      subtitle,
                      style: const TextStyle(
                        color: Color(0xFF898DA7),
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
              ),
              Icon(Icons.arrow_forward_ios_rounded, color: color, size: 17),
            ],
          ),
        ),
      ),
    );
  }

  Widget _actionCard({
    required String title,
    required String subtitle,
    required IconData icon,
    required Color color,
    required Color lightColor,
    required VoidCallback onTap,
  }) {
    return Material(
      color: Colors.white,
      borderRadius: BorderRadius.circular(24),
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(24),
        child: Container(
          padding: const EdgeInsets.all(24),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(24),
            border: Border.all(color: color.withValues(alpha: 0.18)),
            boxShadow: [
              BoxShadow(
                color: color.withValues(alpha: 0.06),
                blurRadius: 18,
                offset: const Offset(0, 7),
              ),
            ],
          ),
          child: Row(
            children: [
              Container(
                width: 68,
                height: 68,
                decoration: BoxDecoration(
                  color: lightColor,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Icon(icon, color: color, size: 33),
              ),
              const SizedBox(width: 18),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: const TextStyle(
                        color: Color(0xFF29274F),
                        fontSize: 18,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                    const SizedBox(height: 7),
                    Text(
                      subtitle,
                      style: const TextStyle(
                        color: Color(0xFF8589A3),
                        fontSize: 13,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: 42,
                height: 42,
                decoration: BoxDecoration(
                  color: color,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: const Icon(
                  Icons.arrow_forward_rounded,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
