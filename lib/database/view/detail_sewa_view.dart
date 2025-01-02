import 'package:drift/drift.dart';
import 'package:flexofast_basis_data_dashboard/entity/client_entity.dart';
import 'package:flexofast_basis_data_dashboard/entity/gudang_entity.dart';
import 'package:flexofast_basis_data_dashboard/entity/pembayaran_entity.dart';
import 'package:flexofast_basis_data_dashboard/entity/sewa_entity.dart';
import 'package:flexofast_basis_data_dashboard/entity/tagihan_entity.dart';

abstract class DetailSewaView extends View {
  SewaEntity get sewa;
  GudangEntity get gudang;
  ClientEntity get client;
  TagihanEntity get tagihan;
  PembayaranEntity get pembayaran;

  @override
  Query as() => select([
        sewa.id,
        sewa.tanggalMulai,
        sewa.tanggalAkhir,
        client.nama,
        client.noHandphone,
        gudang.tipe,
        gudang.alamat,
        gudang.volume,
        tagihan.biaya,
        pembayaran.createdAt,
      ]).from(sewa).join([
        innerJoin(gudang, gudang.id.equalsExp(sewa.idGudang)),
        innerJoin(client, client.id.equalsExp(sewa.idClient)),
        innerJoin(tagihan, tagihan.idSewa.equalsExp(sewa.id)),
        innerJoin(pembayaran, pembayaran.id.equalsExp(tagihan.idPembayaran)),
      ]);
}
