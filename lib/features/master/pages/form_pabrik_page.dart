import 'package:flexofast_basis_data_dashboard/datasource/datasource.dart';
import 'package:flexofast_basis_data_dashboard/widgets/common_scaffold.dart';
import 'package:flutter/material.dart';

class FormPabrikPage extends StatelessWidget {
  const FormPabrikPage({super.key, this.pabrik});

  final PabrikEntityData? pabrik;

  @override
  Widget build(BuildContext context) {
    return const CommonScaffold(title: 'Form Pabrik', body: Placeholder());
  }
}
