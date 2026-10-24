import 'package:flutter/material.dart';

class AuthTextField extends StatelessWidget {
  final String label;
  final bool isPassword;
  final TextInputType keyboardType;

  const AuthTextField({
    super.key,
    required this.label,
    this.isPassword = false,
    this.keyboardType = TextInputType.text,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: isPassword,
      keyboardType: keyboardType,
      validator: (value) {
        if (value == null || value.trim().isEmpty) {
          return 'Please enter $label';
        }

        if (isPassword && value.length < 6) {
          return 'Password must be at least 6 characters';
        }

        if (label == 'Email' &&
            !RegExp(r'^[^@]+@[^@]+\.[^@]+$').hasMatch(value)) {
          return 'Enter a valid email';
        }

        return null;
      },
      decoration: InputDecoration(
        labelText: label,
        prefixIcon: Icon(
          isPassword ? Icons.lock_outline : Icons.person_outline,
        ),
      ),
    );
  }
}
