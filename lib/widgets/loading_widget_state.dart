import 'package:flutter/material.dart';

class LoadingWidgetState extends StatelessWidget {
  const LoadingWidgetState({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircularProgressIndicator.adaptive(),
          Text('Loading...'),
        ],
      ),
    );
  }
}
