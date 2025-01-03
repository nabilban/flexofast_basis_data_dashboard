import 'package:flutter/material.dart';

class CommonTextField extends StatelessWidget {
  const CommonTextField({
    super.key,
    required this.controller,
    required this.label,
    this.onChanged,
    this.keyboardType = TextInputType.text,
    this.floatingLabelBehavior,
  });

  final TextEditingController controller;
  final String label;
  final TextInputType keyboardType;
  final ValueChanged<String>? onChanged;
  final FloatingLabelBehavior? floatingLabelBehavior;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      keyboardType: keyboardType,
      onChanged: onChanged,
      decoration: InputDecoration(
        floatingLabelBehavior: floatingLabelBehavior,
        labelText: label,
        border: const OutlineInputBorder(),
      ),
    );
  }
}
