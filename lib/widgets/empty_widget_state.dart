import 'package:flutter/material.dart';

class EmptyWidgetState extends StatelessWidget {
  const EmptyWidgetState({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.eco_outlined),
          Text('Data Kosong'),
        ],
      ),
    );
  }
}
