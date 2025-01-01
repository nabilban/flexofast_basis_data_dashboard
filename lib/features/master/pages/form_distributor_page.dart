import 'package:flexofast_basis_data_dashboard/datasource/datasource.dart';
import 'package:flexofast_basis_data_dashboard/widgets/common_scaffold.dart';
import 'package:flutter/material.dart';

class FormDistributorPage extends StatelessWidget {
  const FormDistributorPage({super.key, this.distributor});

  final DistributorEntityData? distributor;

  @override
  Widget build(BuildContext context) {
    return const CommonScaffold(title: 'Form Distributor', body: Placeholder());
  }
}
