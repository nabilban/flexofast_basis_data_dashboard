import 'package:flexofast_basis_data_dashboard/features/sewa/cubit/detail_sewa_cubit.dart';
import 'package:flexofast_basis_data_dashboard/utils.dart';
import 'package:flexofast_basis_data_dashboard/widgets/common_form_scaffold.dart';
import 'package:flexofast_basis_data_dashboard/widgets/empty_widget_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DetailSewaPage extends StatelessWidget {
  const DetailSewaPage({
    super.key,
    required this.idSewa,
  });
  final int idSewa;

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: DetailSewaCubit()..getDetailSewa(idSewa),
      child: CommonFormScaffold(
        title: 'Detail Sewa',
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: BlocBuilder<DetailSewaCubit, DetailSewaState>(
            builder: (context, state) {
              return state.maybeWhen(
                orElse: () => const EmptyWidgetState(),
                loading: () => const Center(child: CircularProgressIndicator()),
                loaded: (sewaDetail, tagihan) => ListView(
                  padding: const EdgeInsets.all(8.0),
                  children: [
                    _buildSectionTitle('Sewa Details'),
                    _buildCard([
                      _buildInfoRow('Sewa', sewaDetail.id.toString()),
                      const Divider(),
                      _buildInfoRow('Name', sewaDetail.nama),
                      _buildInfoRow(
                          'No Handphone Client', sewaDetail.noHandphone),
                      _buildInfoRow('Alamat', sewaDetail.alamat),
                      _buildInfoRow('Gudang', sewaDetail.tipe),
                      _buildInfoRow(
                        'Date',
                        '${Utils.formatDate(sewaDetail.tanggalMulai)} - ${Utils.formatDate(sewaDetail.tanggalAkhir)}',
                      ),
                      _buildInfoRow(
                        'Masa Sewa',
                        '${sewaDetail.tanggalAkhir.difference(sewaDetail.tanggalMulai).inDays} hari',
                      ),
                      _buildInfoRow('Volume', '${sewaDetail.volume} / m³'),
                      _buildInfoRow(
                        'Biaya',
                        Utils.formatCurrency(sewaDetail.biaya),
                      ),
                    ]),
                    const SizedBox(height: 16),
                    _buildSectionTitle('Tagihan Details'),
                    _buildCard([
                      _buildInfoRow('Tagihan', tagihan.id.toString()),
                      const Divider(),
                      _buildInfoRow(
                          'Biaya Sewa', Utils.formatCurrency(tagihan.biaya)),
                      _buildInfoRow(
                          'Batas Waktu', Utils.formatDate(tagihan.batasWaktu)),
                    ]),
                  ],
                ),
              );
            },
          ),
        ),
        actions: [
          ElevatedButton.icon(
            onPressed: () {},
            icon: const Icon(Icons.payments_outlined),
            label: const Text('Pembayaran'),
          ),
        ],
      ),
    );
  }

  Widget _buildSectionTitle(String title) {
    return Text(
      title,
      style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
    );
  }

  Widget _buildCard(List<Widget> children) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 8),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: children,
        ),
      ),
    );
  }

  Widget _buildInfoRow(String label, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(label, style: const TextStyle(fontWeight: FontWeight.bold)),
          Flexible(child: Text(value, textAlign: TextAlign.end)),
        ],
      ),
    );
  }
}
