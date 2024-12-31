import 'package:flexofast_basis_data_dashboard/features/dashboard_page.dart';
import 'package:flutter/material.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Flexofast Basis Data App',
      home: DashboardMenu(),
    );
  }
}
