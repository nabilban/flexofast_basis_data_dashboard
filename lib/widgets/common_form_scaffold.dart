import 'package:flutter/material.dart';

class CommonFormScaffold extends StatelessWidget {
  const CommonFormScaffold(
      {super.key, required this.title, required this.body, this.actions});

  final String title;
  final Widget body;
  final List<Widget>? actions;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: key,
      appBar: AppBar(
        title: Text(title),
      ),
      body: Column(
        children: [
          Expanded(
            child: body,
          ),
          if (actions != null)
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: actions!.map(
                  (action) {
                    return Expanded(
                      child: action,
                    );
                  },
                ).toList(),
              ),
            ),
        ],
      ),
    );
  }
}
