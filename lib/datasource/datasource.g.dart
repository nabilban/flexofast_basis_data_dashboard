// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'datasource.dart';

// ignore_for_file: type=lint
class $ClientEntityTable extends ClientEntity
    with TableInfo<$ClientEntityTable, ClientEntityData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $ClientEntityTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _namaMeta = const VerificationMeta('nama');
  @override
  late final GeneratedColumn<String> nama = GeneratedColumn<String>(
      'nama', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _noHandphoneMeta =
      const VerificationMeta('noHandphone');
  @override
  late final GeneratedColumn<String> noHandphone = GeneratedColumn<String>(
      'no_handphone', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _alamatMeta = const VerificationMeta('alamat');
  @override
  late final GeneratedColumn<String> alamat = GeneratedColumn<String>(
      'alamat', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _createdAtMeta =
      const VerificationMeta('createdAt');
  @override
  late final GeneratedColumn<DateTime> createdAt = GeneratedColumn<DateTime>(
      'created_at', aliasedName, true,
      type: DriftSqlType.dateTime, requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns =>
      [id, nama, noHandphone, alamat, createdAt];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'client_entity';
  @override
  VerificationContext validateIntegrity(Insertable<ClientEntityData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('nama')) {
      context.handle(
          _namaMeta, nama.isAcceptableOrUnknown(data['nama']!, _namaMeta));
    } else if (isInserting) {
      context.missing(_namaMeta);
    }
    if (data.containsKey('no_handphone')) {
      context.handle(
          _noHandphoneMeta,
          noHandphone.isAcceptableOrUnknown(
              data['no_handphone']!, _noHandphoneMeta));
    } else if (isInserting) {
      context.missing(_noHandphoneMeta);
    }
    if (data.containsKey('alamat')) {
      context.handle(_alamatMeta,
          alamat.isAcceptableOrUnknown(data['alamat']!, _alamatMeta));
    }
    if (data.containsKey('created_at')) {
      context.handle(_createdAtMeta,
          createdAt.isAcceptableOrUnknown(data['created_at']!, _createdAtMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  ClientEntityData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return ClientEntityData(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      nama: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}nama'])!,
      noHandphone: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}no_handphone'])!,
      alamat: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}alamat']),
      createdAt: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}created_at']),
    );
  }

  @override
  $ClientEntityTable createAlias(String alias) {
    return $ClientEntityTable(attachedDatabase, alias);
  }
}

class ClientEntityData extends DataClass
    implements Insertable<ClientEntityData> {
  final int id;
  final String nama;
  final String noHandphone;
  final String? alamat;
  final DateTime? createdAt;
  const ClientEntityData(
      {required this.id,
      required this.nama,
      required this.noHandphone,
      this.alamat,
      this.createdAt});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['nama'] = Variable<String>(nama);
    map['no_handphone'] = Variable<String>(noHandphone);
    if (!nullToAbsent || alamat != null) {
      map['alamat'] = Variable<String>(alamat);
    }
    if (!nullToAbsent || createdAt != null) {
      map['created_at'] = Variable<DateTime>(createdAt);
    }
    return map;
  }

  ClientEntityCompanion toCompanion(bool nullToAbsent) {
    return ClientEntityCompanion(
      id: Value(id),
      nama: Value(nama),
      noHandphone: Value(noHandphone),
      alamat:
          alamat == null && nullToAbsent ? const Value.absent() : Value(alamat),
      createdAt: createdAt == null && nullToAbsent
          ? const Value.absent()
          : Value(createdAt),
    );
  }

  factory ClientEntityData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return ClientEntityData(
      id: serializer.fromJson<int>(json['id']),
      nama: serializer.fromJson<String>(json['nama']),
      noHandphone: serializer.fromJson<String>(json['noHandphone']),
      alamat: serializer.fromJson<String?>(json['alamat']),
      createdAt: serializer.fromJson<DateTime?>(json['createdAt']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'nama': serializer.toJson<String>(nama),
      'noHandphone': serializer.toJson<String>(noHandphone),
      'alamat': serializer.toJson<String?>(alamat),
      'createdAt': serializer.toJson<DateTime?>(createdAt),
    };
  }

  ClientEntityData copyWith(
          {int? id,
          String? nama,
          String? noHandphone,
          Value<String?> alamat = const Value.absent(),
          Value<DateTime?> createdAt = const Value.absent()}) =>
      ClientEntityData(
        id: id ?? this.id,
        nama: nama ?? this.nama,
        noHandphone: noHandphone ?? this.noHandphone,
        alamat: alamat.present ? alamat.value : this.alamat,
        createdAt: createdAt.present ? createdAt.value : this.createdAt,
      );
  ClientEntityData copyWithCompanion(ClientEntityCompanion data) {
    return ClientEntityData(
      id: data.id.present ? data.id.value : this.id,
      nama: data.nama.present ? data.nama.value : this.nama,
      noHandphone:
          data.noHandphone.present ? data.noHandphone.value : this.noHandphone,
      alamat: data.alamat.present ? data.alamat.value : this.alamat,
      createdAt: data.createdAt.present ? data.createdAt.value : this.createdAt,
    );
  }

  @override
  String toString() {
    return (StringBuffer('ClientEntityData(')
          ..write('id: $id, ')
          ..write('nama: $nama, ')
          ..write('noHandphone: $noHandphone, ')
          ..write('alamat: $alamat, ')
          ..write('createdAt: $createdAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, nama, noHandphone, alamat, createdAt);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is ClientEntityData &&
          other.id == this.id &&
          other.nama == this.nama &&
          other.noHandphone == this.noHandphone &&
          other.alamat == this.alamat &&
          other.createdAt == this.createdAt);
}

class ClientEntityCompanion extends UpdateCompanion<ClientEntityData> {
  final Value<int> id;
  final Value<String> nama;
  final Value<String> noHandphone;
  final Value<String?> alamat;
  final Value<DateTime?> createdAt;
  const ClientEntityCompanion({
    this.id = const Value.absent(),
    this.nama = const Value.absent(),
    this.noHandphone = const Value.absent(),
    this.alamat = const Value.absent(),
    this.createdAt = const Value.absent(),
  });
  ClientEntityCompanion.insert({
    this.id = const Value.absent(),
    required String nama,
    required String noHandphone,
    this.alamat = const Value.absent(),
    this.createdAt = const Value.absent(),
  })  : nama = Value(nama),
        noHandphone = Value(noHandphone);
  static Insertable<ClientEntityData> custom({
    Expression<int>? id,
    Expression<String>? nama,
    Expression<String>? noHandphone,
    Expression<String>? alamat,
    Expression<DateTime>? createdAt,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (nama != null) 'nama': nama,
      if (noHandphone != null) 'no_handphone': noHandphone,
      if (alamat != null) 'alamat': alamat,
      if (createdAt != null) 'created_at': createdAt,
    });
  }

  ClientEntityCompanion copyWith(
      {Value<int>? id,
      Value<String>? nama,
      Value<String>? noHandphone,
      Value<String?>? alamat,
      Value<DateTime?>? createdAt}) {
    return ClientEntityCompanion(
      id: id ?? this.id,
      nama: nama ?? this.nama,
      noHandphone: noHandphone ?? this.noHandphone,
      alamat: alamat ?? this.alamat,
      createdAt: createdAt ?? this.createdAt,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (nama.present) {
      map['nama'] = Variable<String>(nama.value);
    }
    if (noHandphone.present) {
      map['no_handphone'] = Variable<String>(noHandphone.value);
    }
    if (alamat.present) {
      map['alamat'] = Variable<String>(alamat.value);
    }
    if (createdAt.present) {
      map['created_at'] = Variable<DateTime>(createdAt.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('ClientEntityCompanion(')
          ..write('id: $id, ')
          ..write('nama: $nama, ')
          ..write('noHandphone: $noHandphone, ')
          ..write('alamat: $alamat, ')
          ..write('createdAt: $createdAt')
          ..write(')'))
        .toString();
  }
}

class $DistributorEntityTable extends DistributorEntity
    with TableInfo<$DistributorEntityTable, DistributorEntityData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $DistributorEntityTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _namaMeta = const VerificationMeta('nama');
  @override
  late final GeneratedColumn<String> nama = GeneratedColumn<String>(
      'nama', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _alamatMeta = const VerificationMeta('alamat');
  @override
  late final GeneratedColumn<String> alamat = GeneratedColumn<String>(
      'alamat', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [id, nama, alamat];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'distributor_entity';
  @override
  VerificationContext validateIntegrity(
      Insertable<DistributorEntityData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('nama')) {
      context.handle(
          _namaMeta, nama.isAcceptableOrUnknown(data['nama']!, _namaMeta));
    } else if (isInserting) {
      context.missing(_namaMeta);
    }
    if (data.containsKey('alamat')) {
      context.handle(_alamatMeta,
          alamat.isAcceptableOrUnknown(data['alamat']!, _alamatMeta));
    } else if (isInserting) {
      context.missing(_alamatMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  DistributorEntityData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return DistributorEntityData(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      nama: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}nama'])!,
      alamat: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}alamat'])!,
    );
  }

  @override
  $DistributorEntityTable createAlias(String alias) {
    return $DistributorEntityTable(attachedDatabase, alias);
  }
}

class DistributorEntityData extends DataClass
    implements Insertable<DistributorEntityData> {
  final int id;
  final String nama;
  final String alamat;
  const DistributorEntityData(
      {required this.id, required this.nama, required this.alamat});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['nama'] = Variable<String>(nama);
    map['alamat'] = Variable<String>(alamat);
    return map;
  }

  DistributorEntityCompanion toCompanion(bool nullToAbsent) {
    return DistributorEntityCompanion(
      id: Value(id),
      nama: Value(nama),
      alamat: Value(alamat),
    );
  }

  factory DistributorEntityData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return DistributorEntityData(
      id: serializer.fromJson<int>(json['id']),
      nama: serializer.fromJson<String>(json['nama']),
      alamat: serializer.fromJson<String>(json['alamat']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'nama': serializer.toJson<String>(nama),
      'alamat': serializer.toJson<String>(alamat),
    };
  }

  DistributorEntityData copyWith({int? id, String? nama, String? alamat}) =>
      DistributorEntityData(
        id: id ?? this.id,
        nama: nama ?? this.nama,
        alamat: alamat ?? this.alamat,
      );
  DistributorEntityData copyWithCompanion(DistributorEntityCompanion data) {
    return DistributorEntityData(
      id: data.id.present ? data.id.value : this.id,
      nama: data.nama.present ? data.nama.value : this.nama,
      alamat: data.alamat.present ? data.alamat.value : this.alamat,
    );
  }

  @override
  String toString() {
    return (StringBuffer('DistributorEntityData(')
          ..write('id: $id, ')
          ..write('nama: $nama, ')
          ..write('alamat: $alamat')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, nama, alamat);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is DistributorEntityData &&
          other.id == this.id &&
          other.nama == this.nama &&
          other.alamat == this.alamat);
}

class DistributorEntityCompanion
    extends UpdateCompanion<DistributorEntityData> {
  final Value<int> id;
  final Value<String> nama;
  final Value<String> alamat;
  const DistributorEntityCompanion({
    this.id = const Value.absent(),
    this.nama = const Value.absent(),
    this.alamat = const Value.absent(),
  });
  DistributorEntityCompanion.insert({
    this.id = const Value.absent(),
    required String nama,
    required String alamat,
  })  : nama = Value(nama),
        alamat = Value(alamat);
  static Insertable<DistributorEntityData> custom({
    Expression<int>? id,
    Expression<String>? nama,
    Expression<String>? alamat,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (nama != null) 'nama': nama,
      if (alamat != null) 'alamat': alamat,
    });
  }

  DistributorEntityCompanion copyWith(
      {Value<int>? id, Value<String>? nama, Value<String>? alamat}) {
    return DistributorEntityCompanion(
      id: id ?? this.id,
      nama: nama ?? this.nama,
      alamat: alamat ?? this.alamat,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (nama.present) {
      map['nama'] = Variable<String>(nama.value);
    }
    if (alamat.present) {
      map['alamat'] = Variable<String>(alamat.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('DistributorEntityCompanion(')
          ..write('id: $id, ')
          ..write('nama: $nama, ')
          ..write('alamat: $alamat')
          ..write(')'))
        .toString();
  }
}

class $GudangEntityTable extends GudangEntity
    with TableInfo<$GudangEntityTable, GudangEntityData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $GudangEntityTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _tipeMeta = const VerificationMeta('tipe');
  @override
  late final GeneratedColumn<String> tipe = GeneratedColumn<String>(
      'tipe', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _volumeMeta = const VerificationMeta('volume');
  @override
  late final GeneratedColumn<int> volume = GeneratedColumn<int>(
      'volume', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _alamatMeta = const VerificationMeta('alamat');
  @override
  late final GeneratedColumn<String> alamat = GeneratedColumn<String>(
      'alamat', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _hargaMeta = const VerificationMeta('harga');
  @override
  late final GeneratedColumn<int> harga = GeneratedColumn<int>(
      'harga', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [id, tipe, volume, alamat, harga];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'gudang_entity';
  @override
  VerificationContext validateIntegrity(Insertable<GudangEntityData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('tipe')) {
      context.handle(
          _tipeMeta, tipe.isAcceptableOrUnknown(data['tipe']!, _tipeMeta));
    } else if (isInserting) {
      context.missing(_tipeMeta);
    }
    if (data.containsKey('volume')) {
      context.handle(_volumeMeta,
          volume.isAcceptableOrUnknown(data['volume']!, _volumeMeta));
    } else if (isInserting) {
      context.missing(_volumeMeta);
    }
    if (data.containsKey('alamat')) {
      context.handle(_alamatMeta,
          alamat.isAcceptableOrUnknown(data['alamat']!, _alamatMeta));
    } else if (isInserting) {
      context.missing(_alamatMeta);
    }
    if (data.containsKey('harga')) {
      context.handle(
          _hargaMeta, harga.isAcceptableOrUnknown(data['harga']!, _hargaMeta));
    } else if (isInserting) {
      context.missing(_hargaMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  GudangEntityData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return GudangEntityData(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      tipe: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}tipe'])!,
      volume: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}volume'])!,
      alamat: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}alamat'])!,
      harga: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}harga'])!,
    );
  }

  @override
  $GudangEntityTable createAlias(String alias) {
    return $GudangEntityTable(attachedDatabase, alias);
  }
}

class GudangEntityData extends DataClass
    implements Insertable<GudangEntityData> {
  final int id;
  final String tipe;
  final int volume;
  final String alamat;
  final int harga;
  const GudangEntityData(
      {required this.id,
      required this.tipe,
      required this.volume,
      required this.alamat,
      required this.harga});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['tipe'] = Variable<String>(tipe);
    map['volume'] = Variable<int>(volume);
    map['alamat'] = Variable<String>(alamat);
    map['harga'] = Variable<int>(harga);
    return map;
  }

  GudangEntityCompanion toCompanion(bool nullToAbsent) {
    return GudangEntityCompanion(
      id: Value(id),
      tipe: Value(tipe),
      volume: Value(volume),
      alamat: Value(alamat),
      harga: Value(harga),
    );
  }

  factory GudangEntityData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return GudangEntityData(
      id: serializer.fromJson<int>(json['id']),
      tipe: serializer.fromJson<String>(json['tipe']),
      volume: serializer.fromJson<int>(json['volume']),
      alamat: serializer.fromJson<String>(json['alamat']),
      harga: serializer.fromJson<int>(json['harga']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'tipe': serializer.toJson<String>(tipe),
      'volume': serializer.toJson<int>(volume),
      'alamat': serializer.toJson<String>(alamat),
      'harga': serializer.toJson<int>(harga),
    };
  }

  GudangEntityData copyWith(
          {int? id, String? tipe, int? volume, String? alamat, int? harga}) =>
      GudangEntityData(
        id: id ?? this.id,
        tipe: tipe ?? this.tipe,
        volume: volume ?? this.volume,
        alamat: alamat ?? this.alamat,
        harga: harga ?? this.harga,
      );
  GudangEntityData copyWithCompanion(GudangEntityCompanion data) {
    return GudangEntityData(
      id: data.id.present ? data.id.value : this.id,
      tipe: data.tipe.present ? data.tipe.value : this.tipe,
      volume: data.volume.present ? data.volume.value : this.volume,
      alamat: data.alamat.present ? data.alamat.value : this.alamat,
      harga: data.harga.present ? data.harga.value : this.harga,
    );
  }

  @override
  String toString() {
    return (StringBuffer('GudangEntityData(')
          ..write('id: $id, ')
          ..write('tipe: $tipe, ')
          ..write('volume: $volume, ')
          ..write('alamat: $alamat, ')
          ..write('harga: $harga')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, tipe, volume, alamat, harga);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is GudangEntityData &&
          other.id == this.id &&
          other.tipe == this.tipe &&
          other.volume == this.volume &&
          other.alamat == this.alamat &&
          other.harga == this.harga);
}

class GudangEntityCompanion extends UpdateCompanion<GudangEntityData> {
  final Value<int> id;
  final Value<String> tipe;
  final Value<int> volume;
  final Value<String> alamat;
  final Value<int> harga;
  const GudangEntityCompanion({
    this.id = const Value.absent(),
    this.tipe = const Value.absent(),
    this.volume = const Value.absent(),
    this.alamat = const Value.absent(),
    this.harga = const Value.absent(),
  });
  GudangEntityCompanion.insert({
    this.id = const Value.absent(),
    required String tipe,
    required int volume,
    required String alamat,
    required int harga,
  })  : tipe = Value(tipe),
        volume = Value(volume),
        alamat = Value(alamat),
        harga = Value(harga);
  static Insertable<GudangEntityData> custom({
    Expression<int>? id,
    Expression<String>? tipe,
    Expression<int>? volume,
    Expression<String>? alamat,
    Expression<int>? harga,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (tipe != null) 'tipe': tipe,
      if (volume != null) 'volume': volume,
      if (alamat != null) 'alamat': alamat,
      if (harga != null) 'harga': harga,
    });
  }

  GudangEntityCompanion copyWith(
      {Value<int>? id,
      Value<String>? tipe,
      Value<int>? volume,
      Value<String>? alamat,
      Value<int>? harga}) {
    return GudangEntityCompanion(
      id: id ?? this.id,
      tipe: tipe ?? this.tipe,
      volume: volume ?? this.volume,
      alamat: alamat ?? this.alamat,
      harga: harga ?? this.harga,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (tipe.present) {
      map['tipe'] = Variable<String>(tipe.value);
    }
    if (volume.present) {
      map['volume'] = Variable<int>(volume.value);
    }
    if (alamat.present) {
      map['alamat'] = Variable<String>(alamat.value);
    }
    if (harga.present) {
      map['harga'] = Variable<int>(harga.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('GudangEntityCompanion(')
          ..write('id: $id, ')
          ..write('tipe: $tipe, ')
          ..write('volume: $volume, ')
          ..write('alamat: $alamat, ')
          ..write('harga: $harga')
          ..write(')'))
        .toString();
  }
}

class $PabrikEntityTable extends PabrikEntity
    with TableInfo<$PabrikEntityTable, PabrikEntityData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $PabrikEntityTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _namaMeta = const VerificationMeta('nama');
  @override
  late final GeneratedColumn<String> nama = GeneratedColumn<String>(
      'nama', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _alamatMeta = const VerificationMeta('alamat');
  @override
  late final GeneratedColumn<String> alamat = GeneratedColumn<String>(
      'alamat', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [id, nama, alamat];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'pabrik_entity';
  @override
  VerificationContext validateIntegrity(Insertable<PabrikEntityData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('nama')) {
      context.handle(
          _namaMeta, nama.isAcceptableOrUnknown(data['nama']!, _namaMeta));
    } else if (isInserting) {
      context.missing(_namaMeta);
    }
    if (data.containsKey('alamat')) {
      context.handle(_alamatMeta,
          alamat.isAcceptableOrUnknown(data['alamat']!, _alamatMeta));
    } else if (isInserting) {
      context.missing(_alamatMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  PabrikEntityData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return PabrikEntityData(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      nama: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}nama'])!,
      alamat: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}alamat'])!,
    );
  }

  @override
  $PabrikEntityTable createAlias(String alias) {
    return $PabrikEntityTable(attachedDatabase, alias);
  }
}

class PabrikEntityData extends DataClass
    implements Insertable<PabrikEntityData> {
  final int id;
  final String nama;
  final String alamat;
  const PabrikEntityData(
      {required this.id, required this.nama, required this.alamat});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['nama'] = Variable<String>(nama);
    map['alamat'] = Variable<String>(alamat);
    return map;
  }

  PabrikEntityCompanion toCompanion(bool nullToAbsent) {
    return PabrikEntityCompanion(
      id: Value(id),
      nama: Value(nama),
      alamat: Value(alamat),
    );
  }

  factory PabrikEntityData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return PabrikEntityData(
      id: serializer.fromJson<int>(json['id']),
      nama: serializer.fromJson<String>(json['nama']),
      alamat: serializer.fromJson<String>(json['alamat']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'nama': serializer.toJson<String>(nama),
      'alamat': serializer.toJson<String>(alamat),
    };
  }

  PabrikEntityData copyWith({int? id, String? nama, String? alamat}) =>
      PabrikEntityData(
        id: id ?? this.id,
        nama: nama ?? this.nama,
        alamat: alamat ?? this.alamat,
      );
  PabrikEntityData copyWithCompanion(PabrikEntityCompanion data) {
    return PabrikEntityData(
      id: data.id.present ? data.id.value : this.id,
      nama: data.nama.present ? data.nama.value : this.nama,
      alamat: data.alamat.present ? data.alamat.value : this.alamat,
    );
  }

  @override
  String toString() {
    return (StringBuffer('PabrikEntityData(')
          ..write('id: $id, ')
          ..write('nama: $nama, ')
          ..write('alamat: $alamat')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, nama, alamat);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is PabrikEntityData &&
          other.id == this.id &&
          other.nama == this.nama &&
          other.alamat == this.alamat);
}

class PabrikEntityCompanion extends UpdateCompanion<PabrikEntityData> {
  final Value<int> id;
  final Value<String> nama;
  final Value<String> alamat;
  const PabrikEntityCompanion({
    this.id = const Value.absent(),
    this.nama = const Value.absent(),
    this.alamat = const Value.absent(),
  });
  PabrikEntityCompanion.insert({
    this.id = const Value.absent(),
    required String nama,
    required String alamat,
  })  : nama = Value(nama),
        alamat = Value(alamat);
  static Insertable<PabrikEntityData> custom({
    Expression<int>? id,
    Expression<String>? nama,
    Expression<String>? alamat,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (nama != null) 'nama': nama,
      if (alamat != null) 'alamat': alamat,
    });
  }

  PabrikEntityCompanion copyWith(
      {Value<int>? id, Value<String>? nama, Value<String>? alamat}) {
    return PabrikEntityCompanion(
      id: id ?? this.id,
      nama: nama ?? this.nama,
      alamat: alamat ?? this.alamat,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (nama.present) {
      map['nama'] = Variable<String>(nama.value);
    }
    if (alamat.present) {
      map['alamat'] = Variable<String>(alamat.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('PabrikEntityCompanion(')
          ..write('id: $id, ')
          ..write('nama: $nama, ')
          ..write('alamat: $alamat')
          ..write(')'))
        .toString();
  }
}

class $PegawaiEntityTable extends PegawaiEntity
    with TableInfo<$PegawaiEntityTable, PegawaiEntityData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $PegawaiEntityTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _namaMeta = const VerificationMeta('nama');
  @override
  late final GeneratedColumn<String> nama = GeneratedColumn<String>(
      'nama', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _createdAtMeta =
      const VerificationMeta('createdAt');
  @override
  late final GeneratedColumn<DateTime> createdAt = GeneratedColumn<DateTime>(
      'created_at', aliasedName, true,
      type: DriftSqlType.dateTime, requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns => [id, nama, createdAt];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'pegawai_entity';
  @override
  VerificationContext validateIntegrity(Insertable<PegawaiEntityData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('nama')) {
      context.handle(
          _namaMeta, nama.isAcceptableOrUnknown(data['nama']!, _namaMeta));
    } else if (isInserting) {
      context.missing(_namaMeta);
    }
    if (data.containsKey('created_at')) {
      context.handle(_createdAtMeta,
          createdAt.isAcceptableOrUnknown(data['created_at']!, _createdAtMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  PegawaiEntityData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return PegawaiEntityData(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      nama: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}nama'])!,
      createdAt: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}created_at']),
    );
  }

  @override
  $PegawaiEntityTable createAlias(String alias) {
    return $PegawaiEntityTable(attachedDatabase, alias);
  }
}

class PegawaiEntityData extends DataClass
    implements Insertable<PegawaiEntityData> {
  final int id;
  final String nama;
  final DateTime? createdAt;
  const PegawaiEntityData(
      {required this.id, required this.nama, this.createdAt});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['nama'] = Variable<String>(nama);
    if (!nullToAbsent || createdAt != null) {
      map['created_at'] = Variable<DateTime>(createdAt);
    }
    return map;
  }

  PegawaiEntityCompanion toCompanion(bool nullToAbsent) {
    return PegawaiEntityCompanion(
      id: Value(id),
      nama: Value(nama),
      createdAt: createdAt == null && nullToAbsent
          ? const Value.absent()
          : Value(createdAt),
    );
  }

  factory PegawaiEntityData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return PegawaiEntityData(
      id: serializer.fromJson<int>(json['id']),
      nama: serializer.fromJson<String>(json['nama']),
      createdAt: serializer.fromJson<DateTime?>(json['createdAt']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'nama': serializer.toJson<String>(nama),
      'createdAt': serializer.toJson<DateTime?>(createdAt),
    };
  }

  PegawaiEntityData copyWith(
          {int? id,
          String? nama,
          Value<DateTime?> createdAt = const Value.absent()}) =>
      PegawaiEntityData(
        id: id ?? this.id,
        nama: nama ?? this.nama,
        createdAt: createdAt.present ? createdAt.value : this.createdAt,
      );
  PegawaiEntityData copyWithCompanion(PegawaiEntityCompanion data) {
    return PegawaiEntityData(
      id: data.id.present ? data.id.value : this.id,
      nama: data.nama.present ? data.nama.value : this.nama,
      createdAt: data.createdAt.present ? data.createdAt.value : this.createdAt,
    );
  }

  @override
  String toString() {
    return (StringBuffer('PegawaiEntityData(')
          ..write('id: $id, ')
          ..write('nama: $nama, ')
          ..write('createdAt: $createdAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, nama, createdAt);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is PegawaiEntityData &&
          other.id == this.id &&
          other.nama == this.nama &&
          other.createdAt == this.createdAt);
}

class PegawaiEntityCompanion extends UpdateCompanion<PegawaiEntityData> {
  final Value<int> id;
  final Value<String> nama;
  final Value<DateTime?> createdAt;
  const PegawaiEntityCompanion({
    this.id = const Value.absent(),
    this.nama = const Value.absent(),
    this.createdAt = const Value.absent(),
  });
  PegawaiEntityCompanion.insert({
    this.id = const Value.absent(),
    required String nama,
    this.createdAt = const Value.absent(),
  }) : nama = Value(nama);
  static Insertable<PegawaiEntityData> custom({
    Expression<int>? id,
    Expression<String>? nama,
    Expression<DateTime>? createdAt,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (nama != null) 'nama': nama,
      if (createdAt != null) 'created_at': createdAt,
    });
  }

  PegawaiEntityCompanion copyWith(
      {Value<int>? id, Value<String>? nama, Value<DateTime?>? createdAt}) {
    return PegawaiEntityCompanion(
      id: id ?? this.id,
      nama: nama ?? this.nama,
      createdAt: createdAt ?? this.createdAt,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (nama.present) {
      map['nama'] = Variable<String>(nama.value);
    }
    if (createdAt.present) {
      map['created_at'] = Variable<DateTime>(createdAt.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('PegawaiEntityCompanion(')
          ..write('id: $id, ')
          ..write('nama: $nama, ')
          ..write('createdAt: $createdAt')
          ..write(')'))
        .toString();
  }
}

class $SewaEntityTable extends SewaEntity
    with TableInfo<$SewaEntityTable, SewaEntityData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $SewaEntityTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _idClientMeta =
      const VerificationMeta('idClient');
  @override
  late final GeneratedColumn<int> idClient = GeneratedColumn<int>(
      'id_client', aliasedName, false,
      type: DriftSqlType.int,
      requiredDuringInsert: true,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('REFERENCES client_entity (id)'));
  static const VerificationMeta _idGudangMeta =
      const VerificationMeta('idGudang');
  @override
  late final GeneratedColumn<int> idGudang = GeneratedColumn<int>(
      'id_gudang', aliasedName, false,
      type: DriftSqlType.int,
      requiredDuringInsert: true,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('REFERENCES gudang_entity (id)'));
  static const VerificationMeta _tanggalMulaiMeta =
      const VerificationMeta('tanggalMulai');
  @override
  late final GeneratedColumn<DateTime> tanggalMulai = GeneratedColumn<DateTime>(
      'tanggal_mulai', aliasedName, false,
      type: DriftSqlType.dateTime, requiredDuringInsert: true);
  static const VerificationMeta _tanggalAkhirMeta =
      const VerificationMeta('tanggalAkhir');
  @override
  late final GeneratedColumn<DateTime> tanggalAkhir = GeneratedColumn<DateTime>(
      'tanggal_akhir', aliasedName, false,
      type: DriftSqlType.dateTime, requiredDuringInsert: true);
  static const VerificationMeta _createdAtMeta =
      const VerificationMeta('createdAt');
  @override
  late final GeneratedColumn<DateTime> createdAt = GeneratedColumn<DateTime>(
      'created_at', aliasedName, true,
      type: DriftSqlType.dateTime, requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns =>
      [id, idClient, idGudang, tanggalMulai, tanggalAkhir, createdAt];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'sewa_entity';
  @override
  VerificationContext validateIntegrity(Insertable<SewaEntityData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('id_client')) {
      context.handle(_idClientMeta,
          idClient.isAcceptableOrUnknown(data['id_client']!, _idClientMeta));
    } else if (isInserting) {
      context.missing(_idClientMeta);
    }
    if (data.containsKey('id_gudang')) {
      context.handle(_idGudangMeta,
          idGudang.isAcceptableOrUnknown(data['id_gudang']!, _idGudangMeta));
    } else if (isInserting) {
      context.missing(_idGudangMeta);
    }
    if (data.containsKey('tanggal_mulai')) {
      context.handle(
          _tanggalMulaiMeta,
          tanggalMulai.isAcceptableOrUnknown(
              data['tanggal_mulai']!, _tanggalMulaiMeta));
    } else if (isInserting) {
      context.missing(_tanggalMulaiMeta);
    }
    if (data.containsKey('tanggal_akhir')) {
      context.handle(
          _tanggalAkhirMeta,
          tanggalAkhir.isAcceptableOrUnknown(
              data['tanggal_akhir']!, _tanggalAkhirMeta));
    } else if (isInserting) {
      context.missing(_tanggalAkhirMeta);
    }
    if (data.containsKey('created_at')) {
      context.handle(_createdAtMeta,
          createdAt.isAcceptableOrUnknown(data['created_at']!, _createdAtMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  SewaEntityData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return SewaEntityData(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      idClient: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id_client'])!,
      idGudang: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id_gudang'])!,
      tanggalMulai: attachedDatabase.typeMapping.read(
          DriftSqlType.dateTime, data['${effectivePrefix}tanggal_mulai'])!,
      tanggalAkhir: attachedDatabase.typeMapping.read(
          DriftSqlType.dateTime, data['${effectivePrefix}tanggal_akhir'])!,
      createdAt: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}created_at']),
    );
  }

  @override
  $SewaEntityTable createAlias(String alias) {
    return $SewaEntityTable(attachedDatabase, alias);
  }
}

class SewaEntityData extends DataClass implements Insertable<SewaEntityData> {
  final int id;
  final int idClient;
  final int idGudang;
  final DateTime tanggalMulai;
  final DateTime tanggalAkhir;
  final DateTime? createdAt;
  const SewaEntityData(
      {required this.id,
      required this.idClient,
      required this.idGudang,
      required this.tanggalMulai,
      required this.tanggalAkhir,
      this.createdAt});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['id_client'] = Variable<int>(idClient);
    map['id_gudang'] = Variable<int>(idGudang);
    map['tanggal_mulai'] = Variable<DateTime>(tanggalMulai);
    map['tanggal_akhir'] = Variable<DateTime>(tanggalAkhir);
    if (!nullToAbsent || createdAt != null) {
      map['created_at'] = Variable<DateTime>(createdAt);
    }
    return map;
  }

  SewaEntityCompanion toCompanion(bool nullToAbsent) {
    return SewaEntityCompanion(
      id: Value(id),
      idClient: Value(idClient),
      idGudang: Value(idGudang),
      tanggalMulai: Value(tanggalMulai),
      tanggalAkhir: Value(tanggalAkhir),
      createdAt: createdAt == null && nullToAbsent
          ? const Value.absent()
          : Value(createdAt),
    );
  }

  factory SewaEntityData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return SewaEntityData(
      id: serializer.fromJson<int>(json['id']),
      idClient: serializer.fromJson<int>(json['idClient']),
      idGudang: serializer.fromJson<int>(json['idGudang']),
      tanggalMulai: serializer.fromJson<DateTime>(json['tanggalMulai']),
      tanggalAkhir: serializer.fromJson<DateTime>(json['tanggalAkhir']),
      createdAt: serializer.fromJson<DateTime?>(json['createdAt']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'idClient': serializer.toJson<int>(idClient),
      'idGudang': serializer.toJson<int>(idGudang),
      'tanggalMulai': serializer.toJson<DateTime>(tanggalMulai),
      'tanggalAkhir': serializer.toJson<DateTime>(tanggalAkhir),
      'createdAt': serializer.toJson<DateTime?>(createdAt),
    };
  }

  SewaEntityData copyWith(
          {int? id,
          int? idClient,
          int? idGudang,
          DateTime? tanggalMulai,
          DateTime? tanggalAkhir,
          Value<DateTime?> createdAt = const Value.absent()}) =>
      SewaEntityData(
        id: id ?? this.id,
        idClient: idClient ?? this.idClient,
        idGudang: idGudang ?? this.idGudang,
        tanggalMulai: tanggalMulai ?? this.tanggalMulai,
        tanggalAkhir: tanggalAkhir ?? this.tanggalAkhir,
        createdAt: createdAt.present ? createdAt.value : this.createdAt,
      );
  SewaEntityData copyWithCompanion(SewaEntityCompanion data) {
    return SewaEntityData(
      id: data.id.present ? data.id.value : this.id,
      idClient: data.idClient.present ? data.idClient.value : this.idClient,
      idGudang: data.idGudang.present ? data.idGudang.value : this.idGudang,
      tanggalMulai: data.tanggalMulai.present
          ? data.tanggalMulai.value
          : this.tanggalMulai,
      tanggalAkhir: data.tanggalAkhir.present
          ? data.tanggalAkhir.value
          : this.tanggalAkhir,
      createdAt: data.createdAt.present ? data.createdAt.value : this.createdAt,
    );
  }

  @override
  String toString() {
    return (StringBuffer('SewaEntityData(')
          ..write('id: $id, ')
          ..write('idClient: $idClient, ')
          ..write('idGudang: $idGudang, ')
          ..write('tanggalMulai: $tanggalMulai, ')
          ..write('tanggalAkhir: $tanggalAkhir, ')
          ..write('createdAt: $createdAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
      id, idClient, idGudang, tanggalMulai, tanggalAkhir, createdAt);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is SewaEntityData &&
          other.id == this.id &&
          other.idClient == this.idClient &&
          other.idGudang == this.idGudang &&
          other.tanggalMulai == this.tanggalMulai &&
          other.tanggalAkhir == this.tanggalAkhir &&
          other.createdAt == this.createdAt);
}

class SewaEntityCompanion extends UpdateCompanion<SewaEntityData> {
  final Value<int> id;
  final Value<int> idClient;
  final Value<int> idGudang;
  final Value<DateTime> tanggalMulai;
  final Value<DateTime> tanggalAkhir;
  final Value<DateTime?> createdAt;
  const SewaEntityCompanion({
    this.id = const Value.absent(),
    this.idClient = const Value.absent(),
    this.idGudang = const Value.absent(),
    this.tanggalMulai = const Value.absent(),
    this.tanggalAkhir = const Value.absent(),
    this.createdAt = const Value.absent(),
  });
  SewaEntityCompanion.insert({
    this.id = const Value.absent(),
    required int idClient,
    required int idGudang,
    required DateTime tanggalMulai,
    required DateTime tanggalAkhir,
    this.createdAt = const Value.absent(),
  })  : idClient = Value(idClient),
        idGudang = Value(idGudang),
        tanggalMulai = Value(tanggalMulai),
        tanggalAkhir = Value(tanggalAkhir);
  static Insertable<SewaEntityData> custom({
    Expression<int>? id,
    Expression<int>? idClient,
    Expression<int>? idGudang,
    Expression<DateTime>? tanggalMulai,
    Expression<DateTime>? tanggalAkhir,
    Expression<DateTime>? createdAt,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (idClient != null) 'id_client': idClient,
      if (idGudang != null) 'id_gudang': idGudang,
      if (tanggalMulai != null) 'tanggal_mulai': tanggalMulai,
      if (tanggalAkhir != null) 'tanggal_akhir': tanggalAkhir,
      if (createdAt != null) 'created_at': createdAt,
    });
  }

  SewaEntityCompanion copyWith(
      {Value<int>? id,
      Value<int>? idClient,
      Value<int>? idGudang,
      Value<DateTime>? tanggalMulai,
      Value<DateTime>? tanggalAkhir,
      Value<DateTime?>? createdAt}) {
    return SewaEntityCompanion(
      id: id ?? this.id,
      idClient: idClient ?? this.idClient,
      idGudang: idGudang ?? this.idGudang,
      tanggalMulai: tanggalMulai ?? this.tanggalMulai,
      tanggalAkhir: tanggalAkhir ?? this.tanggalAkhir,
      createdAt: createdAt ?? this.createdAt,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (idClient.present) {
      map['id_client'] = Variable<int>(idClient.value);
    }
    if (idGudang.present) {
      map['id_gudang'] = Variable<int>(idGudang.value);
    }
    if (tanggalMulai.present) {
      map['tanggal_mulai'] = Variable<DateTime>(tanggalMulai.value);
    }
    if (tanggalAkhir.present) {
      map['tanggal_akhir'] = Variable<DateTime>(tanggalAkhir.value);
    }
    if (createdAt.present) {
      map['created_at'] = Variable<DateTime>(createdAt.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('SewaEntityCompanion(')
          ..write('id: $id, ')
          ..write('idClient: $idClient, ')
          ..write('idGudang: $idGudang, ')
          ..write('tanggalMulai: $tanggalMulai, ')
          ..write('tanggalAkhir: $tanggalAkhir, ')
          ..write('createdAt: $createdAt')
          ..write(')'))
        .toString();
  }
}

class $TagihanEntityTable extends TagihanEntity
    with TableInfo<$TagihanEntityTable, TagihanEntityData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $TagihanEntityTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _idSewaMeta = const VerificationMeta('idSewa');
  @override
  late final GeneratedColumn<int> idSewa = GeneratedColumn<int>(
      'id_sewa', aliasedName, false,
      type: DriftSqlType.int,
      requiredDuringInsert: true,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('REFERENCES sewa_entity (id)'));
  static const VerificationMeta _idPembayaranMeta =
      const VerificationMeta('idPembayaran');
  @override
  late final GeneratedColumn<int> idPembayaran = GeneratedColumn<int>(
      'id_pembayaran', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _biayaMeta = const VerificationMeta('biaya');
  @override
  late final GeneratedColumn<int> biaya = GeneratedColumn<int>(
      'biaya', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _batasWaktuMeta =
      const VerificationMeta('batasWaktu');
  @override
  late final GeneratedColumn<DateTime> batasWaktu = GeneratedColumn<DateTime>(
      'batas_waktu', aliasedName, false,
      type: DriftSqlType.dateTime, requiredDuringInsert: true);
  static const VerificationMeta _createdAtMeta =
      const VerificationMeta('createdAt');
  @override
  late final GeneratedColumn<DateTime> createdAt = GeneratedColumn<DateTime>(
      'created_at', aliasedName, true,
      type: DriftSqlType.dateTime, requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns =>
      [id, idSewa, idPembayaran, biaya, batasWaktu, createdAt];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'tagihan_entity';
  @override
  VerificationContext validateIntegrity(Insertable<TagihanEntityData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('id_sewa')) {
      context.handle(_idSewaMeta,
          idSewa.isAcceptableOrUnknown(data['id_sewa']!, _idSewaMeta));
    } else if (isInserting) {
      context.missing(_idSewaMeta);
    }
    if (data.containsKey('id_pembayaran')) {
      context.handle(
          _idPembayaranMeta,
          idPembayaran.isAcceptableOrUnknown(
              data['id_pembayaran']!, _idPembayaranMeta));
    } else if (isInserting) {
      context.missing(_idPembayaranMeta);
    }
    if (data.containsKey('biaya')) {
      context.handle(
          _biayaMeta, biaya.isAcceptableOrUnknown(data['biaya']!, _biayaMeta));
    } else if (isInserting) {
      context.missing(_biayaMeta);
    }
    if (data.containsKey('batas_waktu')) {
      context.handle(
          _batasWaktuMeta,
          batasWaktu.isAcceptableOrUnknown(
              data['batas_waktu']!, _batasWaktuMeta));
    } else if (isInserting) {
      context.missing(_batasWaktuMeta);
    }
    if (data.containsKey('created_at')) {
      context.handle(_createdAtMeta,
          createdAt.isAcceptableOrUnknown(data['created_at']!, _createdAtMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  TagihanEntityData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return TagihanEntityData(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      idSewa: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id_sewa'])!,
      idPembayaran: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id_pembayaran'])!,
      biaya: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}biaya'])!,
      batasWaktu: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}batas_waktu'])!,
      createdAt: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}created_at']),
    );
  }

  @override
  $TagihanEntityTable createAlias(String alias) {
    return $TagihanEntityTable(attachedDatabase, alias);
  }
}

class TagihanEntityData extends DataClass
    implements Insertable<TagihanEntityData> {
  final int id;
  final int idSewa;
  final int idPembayaran;
  final int biaya;
  final DateTime batasWaktu;
  final DateTime? createdAt;
  const TagihanEntityData(
      {required this.id,
      required this.idSewa,
      required this.idPembayaran,
      required this.biaya,
      required this.batasWaktu,
      this.createdAt});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['id_sewa'] = Variable<int>(idSewa);
    map['id_pembayaran'] = Variable<int>(idPembayaran);
    map['biaya'] = Variable<int>(biaya);
    map['batas_waktu'] = Variable<DateTime>(batasWaktu);
    if (!nullToAbsent || createdAt != null) {
      map['created_at'] = Variable<DateTime>(createdAt);
    }
    return map;
  }

  TagihanEntityCompanion toCompanion(bool nullToAbsent) {
    return TagihanEntityCompanion(
      id: Value(id),
      idSewa: Value(idSewa),
      idPembayaran: Value(idPembayaran),
      biaya: Value(biaya),
      batasWaktu: Value(batasWaktu),
      createdAt: createdAt == null && nullToAbsent
          ? const Value.absent()
          : Value(createdAt),
    );
  }

  factory TagihanEntityData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return TagihanEntityData(
      id: serializer.fromJson<int>(json['id']),
      idSewa: serializer.fromJson<int>(json['idSewa']),
      idPembayaran: serializer.fromJson<int>(json['idPembayaran']),
      biaya: serializer.fromJson<int>(json['biaya']),
      batasWaktu: serializer.fromJson<DateTime>(json['batasWaktu']),
      createdAt: serializer.fromJson<DateTime?>(json['createdAt']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'idSewa': serializer.toJson<int>(idSewa),
      'idPembayaran': serializer.toJson<int>(idPembayaran),
      'biaya': serializer.toJson<int>(biaya),
      'batasWaktu': serializer.toJson<DateTime>(batasWaktu),
      'createdAt': serializer.toJson<DateTime?>(createdAt),
    };
  }

  TagihanEntityData copyWith(
          {int? id,
          int? idSewa,
          int? idPembayaran,
          int? biaya,
          DateTime? batasWaktu,
          Value<DateTime?> createdAt = const Value.absent()}) =>
      TagihanEntityData(
        id: id ?? this.id,
        idSewa: idSewa ?? this.idSewa,
        idPembayaran: idPembayaran ?? this.idPembayaran,
        biaya: biaya ?? this.biaya,
        batasWaktu: batasWaktu ?? this.batasWaktu,
        createdAt: createdAt.present ? createdAt.value : this.createdAt,
      );
  TagihanEntityData copyWithCompanion(TagihanEntityCompanion data) {
    return TagihanEntityData(
      id: data.id.present ? data.id.value : this.id,
      idSewa: data.idSewa.present ? data.idSewa.value : this.idSewa,
      idPembayaran: data.idPembayaran.present
          ? data.idPembayaran.value
          : this.idPembayaran,
      biaya: data.biaya.present ? data.biaya.value : this.biaya,
      batasWaktu:
          data.batasWaktu.present ? data.batasWaktu.value : this.batasWaktu,
      createdAt: data.createdAt.present ? data.createdAt.value : this.createdAt,
    );
  }

  @override
  String toString() {
    return (StringBuffer('TagihanEntityData(')
          ..write('id: $id, ')
          ..write('idSewa: $idSewa, ')
          ..write('idPembayaran: $idPembayaran, ')
          ..write('biaya: $biaya, ')
          ..write('batasWaktu: $batasWaktu, ')
          ..write('createdAt: $createdAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode =>
      Object.hash(id, idSewa, idPembayaran, biaya, batasWaktu, createdAt);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is TagihanEntityData &&
          other.id == this.id &&
          other.idSewa == this.idSewa &&
          other.idPembayaran == this.idPembayaran &&
          other.biaya == this.biaya &&
          other.batasWaktu == this.batasWaktu &&
          other.createdAt == this.createdAt);
}

class TagihanEntityCompanion extends UpdateCompanion<TagihanEntityData> {
  final Value<int> id;
  final Value<int> idSewa;
  final Value<int> idPembayaran;
  final Value<int> biaya;
  final Value<DateTime> batasWaktu;
  final Value<DateTime?> createdAt;
  const TagihanEntityCompanion({
    this.id = const Value.absent(),
    this.idSewa = const Value.absent(),
    this.idPembayaran = const Value.absent(),
    this.biaya = const Value.absent(),
    this.batasWaktu = const Value.absent(),
    this.createdAt = const Value.absent(),
  });
  TagihanEntityCompanion.insert({
    this.id = const Value.absent(),
    required int idSewa,
    required int idPembayaran,
    required int biaya,
    required DateTime batasWaktu,
    this.createdAt = const Value.absent(),
  })  : idSewa = Value(idSewa),
        idPembayaran = Value(idPembayaran),
        biaya = Value(biaya),
        batasWaktu = Value(batasWaktu);
  static Insertable<TagihanEntityData> custom({
    Expression<int>? id,
    Expression<int>? idSewa,
    Expression<int>? idPembayaran,
    Expression<int>? biaya,
    Expression<DateTime>? batasWaktu,
    Expression<DateTime>? createdAt,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (idSewa != null) 'id_sewa': idSewa,
      if (idPembayaran != null) 'id_pembayaran': idPembayaran,
      if (biaya != null) 'biaya': biaya,
      if (batasWaktu != null) 'batas_waktu': batasWaktu,
      if (createdAt != null) 'created_at': createdAt,
    });
  }

  TagihanEntityCompanion copyWith(
      {Value<int>? id,
      Value<int>? idSewa,
      Value<int>? idPembayaran,
      Value<int>? biaya,
      Value<DateTime>? batasWaktu,
      Value<DateTime?>? createdAt}) {
    return TagihanEntityCompanion(
      id: id ?? this.id,
      idSewa: idSewa ?? this.idSewa,
      idPembayaran: idPembayaran ?? this.idPembayaran,
      biaya: biaya ?? this.biaya,
      batasWaktu: batasWaktu ?? this.batasWaktu,
      createdAt: createdAt ?? this.createdAt,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (idSewa.present) {
      map['id_sewa'] = Variable<int>(idSewa.value);
    }
    if (idPembayaran.present) {
      map['id_pembayaran'] = Variable<int>(idPembayaran.value);
    }
    if (biaya.present) {
      map['biaya'] = Variable<int>(biaya.value);
    }
    if (batasWaktu.present) {
      map['batas_waktu'] = Variable<DateTime>(batasWaktu.value);
    }
    if (createdAt.present) {
      map['created_at'] = Variable<DateTime>(createdAt.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('TagihanEntityCompanion(')
          ..write('id: $id, ')
          ..write('idSewa: $idSewa, ')
          ..write('idPembayaran: $idPembayaran, ')
          ..write('biaya: $biaya, ')
          ..write('batasWaktu: $batasWaktu, ')
          ..write('createdAt: $createdAt')
          ..write(')'))
        .toString();
  }
}

class $PembayaranEntityTable extends PembayaranEntity
    with TableInfo<$PembayaranEntityTable, PembayaranEntityData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $PembayaranEntityTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _idTagihanMeta =
      const VerificationMeta('idTagihan');
  @override
  late final GeneratedColumn<int> idTagihan = GeneratedColumn<int>(
      'id_tagihan', aliasedName, false,
      type: DriftSqlType.int,
      requiredDuringInsert: true,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('REFERENCES tagihan_entity (id)'));
  static const VerificationMeta _jumlahBayarMeta =
      const VerificationMeta('jumlahBayar');
  @override
  late final GeneratedColumn<int> jumlahBayar = GeneratedColumn<int>(
      'jumlah_bayar', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _createdAtMeta =
      const VerificationMeta('createdAt');
  @override
  late final GeneratedColumn<DateTime> createdAt = GeneratedColumn<DateTime>(
      'created_at', aliasedName, true,
      type: DriftSqlType.dateTime, requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns => [id, idTagihan, jumlahBayar, createdAt];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'pembayaran_entity';
  @override
  VerificationContext validateIntegrity(
      Insertable<PembayaranEntityData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('id_tagihan')) {
      context.handle(_idTagihanMeta,
          idTagihan.isAcceptableOrUnknown(data['id_tagihan']!, _idTagihanMeta));
    } else if (isInserting) {
      context.missing(_idTagihanMeta);
    }
    if (data.containsKey('jumlah_bayar')) {
      context.handle(
          _jumlahBayarMeta,
          jumlahBayar.isAcceptableOrUnknown(
              data['jumlah_bayar']!, _jumlahBayarMeta));
    } else if (isInserting) {
      context.missing(_jumlahBayarMeta);
    }
    if (data.containsKey('created_at')) {
      context.handle(_createdAtMeta,
          createdAt.isAcceptableOrUnknown(data['created_at']!, _createdAtMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  PembayaranEntityData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return PembayaranEntityData(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      idTagihan: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id_tagihan'])!,
      jumlahBayar: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}jumlah_bayar'])!,
      createdAt: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}created_at']),
    );
  }

  @override
  $PembayaranEntityTable createAlias(String alias) {
    return $PembayaranEntityTable(attachedDatabase, alias);
  }
}

class PembayaranEntityData extends DataClass
    implements Insertable<PembayaranEntityData> {
  final int id;
  final int idTagihan;
  final int jumlahBayar;
  final DateTime? createdAt;
  const PembayaranEntityData(
      {required this.id,
      required this.idTagihan,
      required this.jumlahBayar,
      this.createdAt});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['id_tagihan'] = Variable<int>(idTagihan);
    map['jumlah_bayar'] = Variable<int>(jumlahBayar);
    if (!nullToAbsent || createdAt != null) {
      map['created_at'] = Variable<DateTime>(createdAt);
    }
    return map;
  }

  PembayaranEntityCompanion toCompanion(bool nullToAbsent) {
    return PembayaranEntityCompanion(
      id: Value(id),
      idTagihan: Value(idTagihan),
      jumlahBayar: Value(jumlahBayar),
      createdAt: createdAt == null && nullToAbsent
          ? const Value.absent()
          : Value(createdAt),
    );
  }

  factory PembayaranEntityData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return PembayaranEntityData(
      id: serializer.fromJson<int>(json['id']),
      idTagihan: serializer.fromJson<int>(json['idTagihan']),
      jumlahBayar: serializer.fromJson<int>(json['jumlahBayar']),
      createdAt: serializer.fromJson<DateTime?>(json['createdAt']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'idTagihan': serializer.toJson<int>(idTagihan),
      'jumlahBayar': serializer.toJson<int>(jumlahBayar),
      'createdAt': serializer.toJson<DateTime?>(createdAt),
    };
  }

  PembayaranEntityData copyWith(
          {int? id,
          int? idTagihan,
          int? jumlahBayar,
          Value<DateTime?> createdAt = const Value.absent()}) =>
      PembayaranEntityData(
        id: id ?? this.id,
        idTagihan: idTagihan ?? this.idTagihan,
        jumlahBayar: jumlahBayar ?? this.jumlahBayar,
        createdAt: createdAt.present ? createdAt.value : this.createdAt,
      );
  PembayaranEntityData copyWithCompanion(PembayaranEntityCompanion data) {
    return PembayaranEntityData(
      id: data.id.present ? data.id.value : this.id,
      idTagihan: data.idTagihan.present ? data.idTagihan.value : this.idTagihan,
      jumlahBayar:
          data.jumlahBayar.present ? data.jumlahBayar.value : this.jumlahBayar,
      createdAt: data.createdAt.present ? data.createdAt.value : this.createdAt,
    );
  }

  @override
  String toString() {
    return (StringBuffer('PembayaranEntityData(')
          ..write('id: $id, ')
          ..write('idTagihan: $idTagihan, ')
          ..write('jumlahBayar: $jumlahBayar, ')
          ..write('createdAt: $createdAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, idTagihan, jumlahBayar, createdAt);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is PembayaranEntityData &&
          other.id == this.id &&
          other.idTagihan == this.idTagihan &&
          other.jumlahBayar == this.jumlahBayar &&
          other.createdAt == this.createdAt);
}

class PembayaranEntityCompanion extends UpdateCompanion<PembayaranEntityData> {
  final Value<int> id;
  final Value<int> idTagihan;
  final Value<int> jumlahBayar;
  final Value<DateTime?> createdAt;
  const PembayaranEntityCompanion({
    this.id = const Value.absent(),
    this.idTagihan = const Value.absent(),
    this.jumlahBayar = const Value.absent(),
    this.createdAt = const Value.absent(),
  });
  PembayaranEntityCompanion.insert({
    this.id = const Value.absent(),
    required int idTagihan,
    required int jumlahBayar,
    this.createdAt = const Value.absent(),
  })  : idTagihan = Value(idTagihan),
        jumlahBayar = Value(jumlahBayar);
  static Insertable<PembayaranEntityData> custom({
    Expression<int>? id,
    Expression<int>? idTagihan,
    Expression<int>? jumlahBayar,
    Expression<DateTime>? createdAt,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (idTagihan != null) 'id_tagihan': idTagihan,
      if (jumlahBayar != null) 'jumlah_bayar': jumlahBayar,
      if (createdAt != null) 'created_at': createdAt,
    });
  }

  PembayaranEntityCompanion copyWith(
      {Value<int>? id,
      Value<int>? idTagihan,
      Value<int>? jumlahBayar,
      Value<DateTime?>? createdAt}) {
    return PembayaranEntityCompanion(
      id: id ?? this.id,
      idTagihan: idTagihan ?? this.idTagihan,
      jumlahBayar: jumlahBayar ?? this.jumlahBayar,
      createdAt: createdAt ?? this.createdAt,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (idTagihan.present) {
      map['id_tagihan'] = Variable<int>(idTagihan.value);
    }
    if (jumlahBayar.present) {
      map['jumlah_bayar'] = Variable<int>(jumlahBayar.value);
    }
    if (createdAt.present) {
      map['created_at'] = Variable<DateTime>(createdAt.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('PembayaranEntityCompanion(')
          ..write('id: $id, ')
          ..write('idTagihan: $idTagihan, ')
          ..write('jumlahBayar: $jumlahBayar, ')
          ..write('createdAt: $createdAt')
          ..write(')'))
        .toString();
  }
}

class $TransaksiEntityTable extends TransaksiEntity
    with TableInfo<$TransaksiEntityTable, TransaksiEntityData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $TransaksiEntityTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _idGudangMeta =
      const VerificationMeta('idGudang');
  @override
  late final GeneratedColumn<int> idGudang = GeneratedColumn<int>(
      'id_gudang', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _idBarangMeta =
      const VerificationMeta('idBarang');
  @override
  late final GeneratedColumn<int> idBarang = GeneratedColumn<int>(
      'id_barang', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _alamatMeta = const VerificationMeta('alamat');
  @override
  late final GeneratedColumn<int> alamat = GeneratedColumn<int>(
      'alamat', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _tipeMeta = const VerificationMeta('tipe');
  @override
  late final GeneratedColumnWithTypeConverter<TipeTransaksi, int> tipe =
      GeneratedColumn<int>('tipe', aliasedName, false,
              type: DriftSqlType.int, requiredDuringInsert: true)
          .withConverter<TipeTransaksi>($TransaksiEntityTable.$convertertipe);
  static const VerificationMeta _createdAtMeta =
      const VerificationMeta('createdAt');
  @override
  late final GeneratedColumn<DateTime> createdAt = GeneratedColumn<DateTime>(
      'created_at', aliasedName, true,
      type: DriftSqlType.dateTime, requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns =>
      [id, idGudang, idBarang, alamat, tipe, createdAt];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'transaksi_entity';
  @override
  VerificationContext validateIntegrity(
      Insertable<TransaksiEntityData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('id_gudang')) {
      context.handle(_idGudangMeta,
          idGudang.isAcceptableOrUnknown(data['id_gudang']!, _idGudangMeta));
    } else if (isInserting) {
      context.missing(_idGudangMeta);
    }
    if (data.containsKey('id_barang')) {
      context.handle(_idBarangMeta,
          idBarang.isAcceptableOrUnknown(data['id_barang']!, _idBarangMeta));
    } else if (isInserting) {
      context.missing(_idBarangMeta);
    }
    if (data.containsKey('alamat')) {
      context.handle(_alamatMeta,
          alamat.isAcceptableOrUnknown(data['alamat']!, _alamatMeta));
    } else if (isInserting) {
      context.missing(_alamatMeta);
    }
    context.handle(_tipeMeta, const VerificationResult.success());
    if (data.containsKey('created_at')) {
      context.handle(_createdAtMeta,
          createdAt.isAcceptableOrUnknown(data['created_at']!, _createdAtMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  TransaksiEntityData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return TransaksiEntityData(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      idGudang: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id_gudang'])!,
      idBarang: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id_barang'])!,
      alamat: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}alamat'])!,
      tipe: $TransaksiEntityTable.$convertertipe.fromSql(attachedDatabase
          .typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}tipe'])!),
      createdAt: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}created_at']),
    );
  }

  @override
  $TransaksiEntityTable createAlias(String alias) {
    return $TransaksiEntityTable(attachedDatabase, alias);
  }

  static JsonTypeConverter2<TipeTransaksi, int, int> $convertertipe =
      const EnumIndexConverter<TipeTransaksi>(TipeTransaksi.values);
}

class TransaksiEntityData extends DataClass
    implements Insertable<TransaksiEntityData> {
  final int id;
  final int idGudang;
  final int idBarang;
  final int alamat;
  final TipeTransaksi tipe;
  final DateTime? createdAt;
  const TransaksiEntityData(
      {required this.id,
      required this.idGudang,
      required this.idBarang,
      required this.alamat,
      required this.tipe,
      this.createdAt});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['id_gudang'] = Variable<int>(idGudang);
    map['id_barang'] = Variable<int>(idBarang);
    map['alamat'] = Variable<int>(alamat);
    {
      map['tipe'] =
          Variable<int>($TransaksiEntityTable.$convertertipe.toSql(tipe));
    }
    if (!nullToAbsent || createdAt != null) {
      map['created_at'] = Variable<DateTime>(createdAt);
    }
    return map;
  }

  TransaksiEntityCompanion toCompanion(bool nullToAbsent) {
    return TransaksiEntityCompanion(
      id: Value(id),
      idGudang: Value(idGudang),
      idBarang: Value(idBarang),
      alamat: Value(alamat),
      tipe: Value(tipe),
      createdAt: createdAt == null && nullToAbsent
          ? const Value.absent()
          : Value(createdAt),
    );
  }

  factory TransaksiEntityData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return TransaksiEntityData(
      id: serializer.fromJson<int>(json['id']),
      idGudang: serializer.fromJson<int>(json['idGudang']),
      idBarang: serializer.fromJson<int>(json['idBarang']),
      alamat: serializer.fromJson<int>(json['alamat']),
      tipe: $TransaksiEntityTable.$convertertipe
          .fromJson(serializer.fromJson<int>(json['tipe'])),
      createdAt: serializer.fromJson<DateTime?>(json['createdAt']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'idGudang': serializer.toJson<int>(idGudang),
      'idBarang': serializer.toJson<int>(idBarang),
      'alamat': serializer.toJson<int>(alamat),
      'tipe': serializer
          .toJson<int>($TransaksiEntityTable.$convertertipe.toJson(tipe)),
      'createdAt': serializer.toJson<DateTime?>(createdAt),
    };
  }

  TransaksiEntityData copyWith(
          {int? id,
          int? idGudang,
          int? idBarang,
          int? alamat,
          TipeTransaksi? tipe,
          Value<DateTime?> createdAt = const Value.absent()}) =>
      TransaksiEntityData(
        id: id ?? this.id,
        idGudang: idGudang ?? this.idGudang,
        idBarang: idBarang ?? this.idBarang,
        alamat: alamat ?? this.alamat,
        tipe: tipe ?? this.tipe,
        createdAt: createdAt.present ? createdAt.value : this.createdAt,
      );
  TransaksiEntityData copyWithCompanion(TransaksiEntityCompanion data) {
    return TransaksiEntityData(
      id: data.id.present ? data.id.value : this.id,
      idGudang: data.idGudang.present ? data.idGudang.value : this.idGudang,
      idBarang: data.idBarang.present ? data.idBarang.value : this.idBarang,
      alamat: data.alamat.present ? data.alamat.value : this.alamat,
      tipe: data.tipe.present ? data.tipe.value : this.tipe,
      createdAt: data.createdAt.present ? data.createdAt.value : this.createdAt,
    );
  }

  @override
  String toString() {
    return (StringBuffer('TransaksiEntityData(')
          ..write('id: $id, ')
          ..write('idGudang: $idGudang, ')
          ..write('idBarang: $idBarang, ')
          ..write('alamat: $alamat, ')
          ..write('tipe: $tipe, ')
          ..write('createdAt: $createdAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode =>
      Object.hash(id, idGudang, idBarang, alamat, tipe, createdAt);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is TransaksiEntityData &&
          other.id == this.id &&
          other.idGudang == this.idGudang &&
          other.idBarang == this.idBarang &&
          other.alamat == this.alamat &&
          other.tipe == this.tipe &&
          other.createdAt == this.createdAt);
}

class TransaksiEntityCompanion extends UpdateCompanion<TransaksiEntityData> {
  final Value<int> id;
  final Value<int> idGudang;
  final Value<int> idBarang;
  final Value<int> alamat;
  final Value<TipeTransaksi> tipe;
  final Value<DateTime?> createdAt;
  const TransaksiEntityCompanion({
    this.id = const Value.absent(),
    this.idGudang = const Value.absent(),
    this.idBarang = const Value.absent(),
    this.alamat = const Value.absent(),
    this.tipe = const Value.absent(),
    this.createdAt = const Value.absent(),
  });
  TransaksiEntityCompanion.insert({
    this.id = const Value.absent(),
    required int idGudang,
    required int idBarang,
    required int alamat,
    required TipeTransaksi tipe,
    this.createdAt = const Value.absent(),
  })  : idGudang = Value(idGudang),
        idBarang = Value(idBarang),
        alamat = Value(alamat),
        tipe = Value(tipe);
  static Insertable<TransaksiEntityData> custom({
    Expression<int>? id,
    Expression<int>? idGudang,
    Expression<int>? idBarang,
    Expression<int>? alamat,
    Expression<int>? tipe,
    Expression<DateTime>? createdAt,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (idGudang != null) 'id_gudang': idGudang,
      if (idBarang != null) 'id_barang': idBarang,
      if (alamat != null) 'alamat': alamat,
      if (tipe != null) 'tipe': tipe,
      if (createdAt != null) 'created_at': createdAt,
    });
  }

  TransaksiEntityCompanion copyWith(
      {Value<int>? id,
      Value<int>? idGudang,
      Value<int>? idBarang,
      Value<int>? alamat,
      Value<TipeTransaksi>? tipe,
      Value<DateTime?>? createdAt}) {
    return TransaksiEntityCompanion(
      id: id ?? this.id,
      idGudang: idGudang ?? this.idGudang,
      idBarang: idBarang ?? this.idBarang,
      alamat: alamat ?? this.alamat,
      tipe: tipe ?? this.tipe,
      createdAt: createdAt ?? this.createdAt,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (idGudang.present) {
      map['id_gudang'] = Variable<int>(idGudang.value);
    }
    if (idBarang.present) {
      map['id_barang'] = Variable<int>(idBarang.value);
    }
    if (alamat.present) {
      map['alamat'] = Variable<int>(alamat.value);
    }
    if (tipe.present) {
      map['tipe'] =
          Variable<int>($TransaksiEntityTable.$convertertipe.toSql(tipe.value));
    }
    if (createdAt.present) {
      map['created_at'] = Variable<DateTime>(createdAt.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('TransaksiEntityCompanion(')
          ..write('id: $id, ')
          ..write('idGudang: $idGudang, ')
          ..write('idBarang: $idBarang, ')
          ..write('alamat: $alamat, ')
          ..write('tipe: $tipe, ')
          ..write('createdAt: $createdAt')
          ..write(')'))
        .toString();
  }
}

class $PersetujuanEntityTable extends PersetujuanEntity
    with TableInfo<$PersetujuanEntityTable, PersetujuanEntityData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $PersetujuanEntityTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _idPegawaiMeta =
      const VerificationMeta('idPegawai');
  @override
  late final GeneratedColumn<int> idPegawai = GeneratedColumn<int>(
      'id_pegawai', aliasedName, false,
      type: DriftSqlType.int,
      requiredDuringInsert: true,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('REFERENCES pegawai_entity (id)'));
  static const VerificationMeta _idTransaksiMeta =
      const VerificationMeta('idTransaksi');
  @override
  late final GeneratedColumn<int> idTransaksi = GeneratedColumn<int>(
      'id_transaksi', aliasedName, false,
      type: DriftSqlType.int,
      requiredDuringInsert: true,
      defaultConstraints: GeneratedColumn.constraintIsAlways(
          'REFERENCES transaksi_entity (id)'));
  static const VerificationMeta _createdAtMeta =
      const VerificationMeta('createdAt');
  @override
  late final GeneratedColumn<DateTime> createdAt = GeneratedColumn<DateTime>(
      'created_at', aliasedName, true,
      type: DriftSqlType.dateTime, requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns => [id, idPegawai, idTransaksi, createdAt];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'persetujuan_entity';
  @override
  VerificationContext validateIntegrity(
      Insertable<PersetujuanEntityData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('id_pegawai')) {
      context.handle(_idPegawaiMeta,
          idPegawai.isAcceptableOrUnknown(data['id_pegawai']!, _idPegawaiMeta));
    } else if (isInserting) {
      context.missing(_idPegawaiMeta);
    }
    if (data.containsKey('id_transaksi')) {
      context.handle(
          _idTransaksiMeta,
          idTransaksi.isAcceptableOrUnknown(
              data['id_transaksi']!, _idTransaksiMeta));
    } else if (isInserting) {
      context.missing(_idTransaksiMeta);
    }
    if (data.containsKey('created_at')) {
      context.handle(_createdAtMeta,
          createdAt.isAcceptableOrUnknown(data['created_at']!, _createdAtMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  PersetujuanEntityData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return PersetujuanEntityData(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      idPegawai: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id_pegawai'])!,
      idTransaksi: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id_transaksi'])!,
      createdAt: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}created_at']),
    );
  }

  @override
  $PersetujuanEntityTable createAlias(String alias) {
    return $PersetujuanEntityTable(attachedDatabase, alias);
  }
}

class PersetujuanEntityData extends DataClass
    implements Insertable<PersetujuanEntityData> {
  final int id;
  final int idPegawai;
  final int idTransaksi;
  final DateTime? createdAt;
  const PersetujuanEntityData(
      {required this.id,
      required this.idPegawai,
      required this.idTransaksi,
      this.createdAt});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['id_pegawai'] = Variable<int>(idPegawai);
    map['id_transaksi'] = Variable<int>(idTransaksi);
    if (!nullToAbsent || createdAt != null) {
      map['created_at'] = Variable<DateTime>(createdAt);
    }
    return map;
  }

  PersetujuanEntityCompanion toCompanion(bool nullToAbsent) {
    return PersetujuanEntityCompanion(
      id: Value(id),
      idPegawai: Value(idPegawai),
      idTransaksi: Value(idTransaksi),
      createdAt: createdAt == null && nullToAbsent
          ? const Value.absent()
          : Value(createdAt),
    );
  }

  factory PersetujuanEntityData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return PersetujuanEntityData(
      id: serializer.fromJson<int>(json['id']),
      idPegawai: serializer.fromJson<int>(json['idPegawai']),
      idTransaksi: serializer.fromJson<int>(json['idTransaksi']),
      createdAt: serializer.fromJson<DateTime?>(json['createdAt']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'idPegawai': serializer.toJson<int>(idPegawai),
      'idTransaksi': serializer.toJson<int>(idTransaksi),
      'createdAt': serializer.toJson<DateTime?>(createdAt),
    };
  }

  PersetujuanEntityData copyWith(
          {int? id,
          int? idPegawai,
          int? idTransaksi,
          Value<DateTime?> createdAt = const Value.absent()}) =>
      PersetujuanEntityData(
        id: id ?? this.id,
        idPegawai: idPegawai ?? this.idPegawai,
        idTransaksi: idTransaksi ?? this.idTransaksi,
        createdAt: createdAt.present ? createdAt.value : this.createdAt,
      );
  PersetujuanEntityData copyWithCompanion(PersetujuanEntityCompanion data) {
    return PersetujuanEntityData(
      id: data.id.present ? data.id.value : this.id,
      idPegawai: data.idPegawai.present ? data.idPegawai.value : this.idPegawai,
      idTransaksi:
          data.idTransaksi.present ? data.idTransaksi.value : this.idTransaksi,
      createdAt: data.createdAt.present ? data.createdAt.value : this.createdAt,
    );
  }

  @override
  String toString() {
    return (StringBuffer('PersetujuanEntityData(')
          ..write('id: $id, ')
          ..write('idPegawai: $idPegawai, ')
          ..write('idTransaksi: $idTransaksi, ')
          ..write('createdAt: $createdAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, idPegawai, idTransaksi, createdAt);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is PersetujuanEntityData &&
          other.id == this.id &&
          other.idPegawai == this.idPegawai &&
          other.idTransaksi == this.idTransaksi &&
          other.createdAt == this.createdAt);
}

class PersetujuanEntityCompanion
    extends UpdateCompanion<PersetujuanEntityData> {
  final Value<int> id;
  final Value<int> idPegawai;
  final Value<int> idTransaksi;
  final Value<DateTime?> createdAt;
  const PersetujuanEntityCompanion({
    this.id = const Value.absent(),
    this.idPegawai = const Value.absent(),
    this.idTransaksi = const Value.absent(),
    this.createdAt = const Value.absent(),
  });
  PersetujuanEntityCompanion.insert({
    this.id = const Value.absent(),
    required int idPegawai,
    required int idTransaksi,
    this.createdAt = const Value.absent(),
  })  : idPegawai = Value(idPegawai),
        idTransaksi = Value(idTransaksi);
  static Insertable<PersetujuanEntityData> custom({
    Expression<int>? id,
    Expression<int>? idPegawai,
    Expression<int>? idTransaksi,
    Expression<DateTime>? createdAt,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (idPegawai != null) 'id_pegawai': idPegawai,
      if (idTransaksi != null) 'id_transaksi': idTransaksi,
      if (createdAt != null) 'created_at': createdAt,
    });
  }

  PersetujuanEntityCompanion copyWith(
      {Value<int>? id,
      Value<int>? idPegawai,
      Value<int>? idTransaksi,
      Value<DateTime?>? createdAt}) {
    return PersetujuanEntityCompanion(
      id: id ?? this.id,
      idPegawai: idPegawai ?? this.idPegawai,
      idTransaksi: idTransaksi ?? this.idTransaksi,
      createdAt: createdAt ?? this.createdAt,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (idPegawai.present) {
      map['id_pegawai'] = Variable<int>(idPegawai.value);
    }
    if (idTransaksi.present) {
      map['id_transaksi'] = Variable<int>(idTransaksi.value);
    }
    if (createdAt.present) {
      map['created_at'] = Variable<DateTime>(createdAt.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('PersetujuanEntityCompanion(')
          ..write('id: $id, ')
          ..write('idPegawai: $idPegawai, ')
          ..write('idTransaksi: $idTransaksi, ')
          ..write('createdAt: $createdAt')
          ..write(')'))
        .toString();
  }
}

abstract class _$Datasource extends GeneratedDatabase {
  _$Datasource(QueryExecutor e) : super(e);
  $DatasourceManager get managers => $DatasourceManager(this);
  late final $ClientEntityTable clientEntity = $ClientEntityTable(this);
  late final $DistributorEntityTable distributorEntity =
      $DistributorEntityTable(this);
  late final $GudangEntityTable gudangEntity = $GudangEntityTable(this);
  late final $PabrikEntityTable pabrikEntity = $PabrikEntityTable(this);
  late final $PegawaiEntityTable pegawaiEntity = $PegawaiEntityTable(this);
  late final $SewaEntityTable sewaEntity = $SewaEntityTable(this);
  late final $TagihanEntityTable tagihanEntity = $TagihanEntityTable(this);
  late final $PembayaranEntityTable pembayaranEntity =
      $PembayaranEntityTable(this);
  late final $TransaksiEntityTable transaksiEntity =
      $TransaksiEntityTable(this);
  late final $PersetujuanEntityTable persetujuanEntity =
      $PersetujuanEntityTable(this);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [
        clientEntity,
        distributorEntity,
        gudangEntity,
        pabrikEntity,
        pegawaiEntity,
        sewaEntity,
        tagihanEntity,
        pembayaranEntity,
        transaksiEntity,
        persetujuanEntity
      ];
}

typedef $$ClientEntityTableCreateCompanionBuilder = ClientEntityCompanion
    Function({
  Value<int> id,
  required String nama,
  required String noHandphone,
  Value<String?> alamat,
  Value<DateTime?> createdAt,
});
typedef $$ClientEntityTableUpdateCompanionBuilder = ClientEntityCompanion
    Function({
  Value<int> id,
  Value<String> nama,
  Value<String> noHandphone,
  Value<String?> alamat,
  Value<DateTime?> createdAt,
});

final class $$ClientEntityTableReferences
    extends BaseReferences<_$Datasource, $ClientEntityTable, ClientEntityData> {
  $$ClientEntityTableReferences(super.$_db, super.$_table, super.$_typedResult);

  static MultiTypedResultKey<$SewaEntityTable, List<SewaEntityData>>
      _sewaEntityRefsTable(_$Datasource db) => MultiTypedResultKey.fromTable(
          db.sewaEntity,
          aliasName:
              $_aliasNameGenerator(db.clientEntity.id, db.sewaEntity.idClient));

  $$SewaEntityTableProcessedTableManager get sewaEntityRefs {
    final manager = $$SewaEntityTableTableManager($_db, $_db.sewaEntity)
        .filter((f) => f.idClient.id($_item.id));

    final cache = $_typedResult.readTableOrNull(_sewaEntityRefsTable($_db));
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: cache));
  }
}

class $$ClientEntityTableFilterComposer
    extends Composer<_$Datasource, $ClientEntityTable> {
  $$ClientEntityTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get nama => $composableBuilder(
      column: $table.nama, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get noHandphone => $composableBuilder(
      column: $table.noHandphone, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get alamat => $composableBuilder(
      column: $table.alamat, builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get createdAt => $composableBuilder(
      column: $table.createdAt, builder: (column) => ColumnFilters(column));

  Expression<bool> sewaEntityRefs(
      Expression<bool> Function($$SewaEntityTableFilterComposer f) f) {
    final $$SewaEntityTableFilterComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.id,
        referencedTable: $db.sewaEntity,
        getReferencedColumn: (t) => t.idClient,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$SewaEntityTableFilterComposer(
              $db: $db,
              $table: $db.sewaEntity,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return f(composer);
  }
}

class $$ClientEntityTableOrderingComposer
    extends Composer<_$Datasource, $ClientEntityTable> {
  $$ClientEntityTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get nama => $composableBuilder(
      column: $table.nama, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get noHandphone => $composableBuilder(
      column: $table.noHandphone, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get alamat => $composableBuilder(
      column: $table.alamat, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get createdAt => $composableBuilder(
      column: $table.createdAt, builder: (column) => ColumnOrderings(column));
}

class $$ClientEntityTableAnnotationComposer
    extends Composer<_$Datasource, $ClientEntityTable> {
  $$ClientEntityTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get nama =>
      $composableBuilder(column: $table.nama, builder: (column) => column);

  GeneratedColumn<String> get noHandphone => $composableBuilder(
      column: $table.noHandphone, builder: (column) => column);

  GeneratedColumn<String> get alamat =>
      $composableBuilder(column: $table.alamat, builder: (column) => column);

  GeneratedColumn<DateTime> get createdAt =>
      $composableBuilder(column: $table.createdAt, builder: (column) => column);

  Expression<T> sewaEntityRefs<T extends Object>(
      Expression<T> Function($$SewaEntityTableAnnotationComposer a) f) {
    final $$SewaEntityTableAnnotationComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.id,
        referencedTable: $db.sewaEntity,
        getReferencedColumn: (t) => t.idClient,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$SewaEntityTableAnnotationComposer(
              $db: $db,
              $table: $db.sewaEntity,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return f(composer);
  }
}

class $$ClientEntityTableTableManager extends RootTableManager<
    _$Datasource,
    $ClientEntityTable,
    ClientEntityData,
    $$ClientEntityTableFilterComposer,
    $$ClientEntityTableOrderingComposer,
    $$ClientEntityTableAnnotationComposer,
    $$ClientEntityTableCreateCompanionBuilder,
    $$ClientEntityTableUpdateCompanionBuilder,
    (ClientEntityData, $$ClientEntityTableReferences),
    ClientEntityData,
    PrefetchHooks Function({bool sewaEntityRefs})> {
  $$ClientEntityTableTableManager(_$Datasource db, $ClientEntityTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$ClientEntityTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$ClientEntityTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$ClientEntityTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<int> id = const Value.absent(),
            Value<String> nama = const Value.absent(),
            Value<String> noHandphone = const Value.absent(),
            Value<String?> alamat = const Value.absent(),
            Value<DateTime?> createdAt = const Value.absent(),
          }) =>
              ClientEntityCompanion(
            id: id,
            nama: nama,
            noHandphone: noHandphone,
            alamat: alamat,
            createdAt: createdAt,
          ),
          createCompanionCallback: ({
            Value<int> id = const Value.absent(),
            required String nama,
            required String noHandphone,
            Value<String?> alamat = const Value.absent(),
            Value<DateTime?> createdAt = const Value.absent(),
          }) =>
              ClientEntityCompanion.insert(
            id: id,
            nama: nama,
            noHandphone: noHandphone,
            alamat: alamat,
            createdAt: createdAt,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (
                    e.readTable(table),
                    $$ClientEntityTableReferences(db, table, e)
                  ))
              .toList(),
          prefetchHooksCallback: ({sewaEntityRefs = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [if (sewaEntityRefs) db.sewaEntity],
              addJoins: null,
              getPrefetchedDataCallback: (items) async {
                return [
                  if (sewaEntityRefs)
                    await $_getPrefetchedData(
                        currentTable: table,
                        referencedTable: $$ClientEntityTableReferences
                            ._sewaEntityRefsTable(db),
                        managerFromTypedResult: (p0) =>
                            $$ClientEntityTableReferences(db, table, p0)
                                .sewaEntityRefs,
                        referencedItemsForCurrentItem: (item,
                                referencedItems) =>
                            referencedItems.where((e) => e.idClient == item.id),
                        typedResults: items)
                ];
              },
            );
          },
        ));
}

typedef $$ClientEntityTableProcessedTableManager = ProcessedTableManager<
    _$Datasource,
    $ClientEntityTable,
    ClientEntityData,
    $$ClientEntityTableFilterComposer,
    $$ClientEntityTableOrderingComposer,
    $$ClientEntityTableAnnotationComposer,
    $$ClientEntityTableCreateCompanionBuilder,
    $$ClientEntityTableUpdateCompanionBuilder,
    (ClientEntityData, $$ClientEntityTableReferences),
    ClientEntityData,
    PrefetchHooks Function({bool sewaEntityRefs})>;
typedef $$DistributorEntityTableCreateCompanionBuilder
    = DistributorEntityCompanion Function({
  Value<int> id,
  required String nama,
  required String alamat,
});
typedef $$DistributorEntityTableUpdateCompanionBuilder
    = DistributorEntityCompanion Function({
  Value<int> id,
  Value<String> nama,
  Value<String> alamat,
});

class $$DistributorEntityTableFilterComposer
    extends Composer<_$Datasource, $DistributorEntityTable> {
  $$DistributorEntityTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get nama => $composableBuilder(
      column: $table.nama, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get alamat => $composableBuilder(
      column: $table.alamat, builder: (column) => ColumnFilters(column));
}

class $$DistributorEntityTableOrderingComposer
    extends Composer<_$Datasource, $DistributorEntityTable> {
  $$DistributorEntityTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get nama => $composableBuilder(
      column: $table.nama, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get alamat => $composableBuilder(
      column: $table.alamat, builder: (column) => ColumnOrderings(column));
}

class $$DistributorEntityTableAnnotationComposer
    extends Composer<_$Datasource, $DistributorEntityTable> {
  $$DistributorEntityTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get nama =>
      $composableBuilder(column: $table.nama, builder: (column) => column);

  GeneratedColumn<String> get alamat =>
      $composableBuilder(column: $table.alamat, builder: (column) => column);
}

class $$DistributorEntityTableTableManager extends RootTableManager<
    _$Datasource,
    $DistributorEntityTable,
    DistributorEntityData,
    $$DistributorEntityTableFilterComposer,
    $$DistributorEntityTableOrderingComposer,
    $$DistributorEntityTableAnnotationComposer,
    $$DistributorEntityTableCreateCompanionBuilder,
    $$DistributorEntityTableUpdateCompanionBuilder,
    (
      DistributorEntityData,
      BaseReferences<_$Datasource, $DistributorEntityTable,
          DistributorEntityData>
    ),
    DistributorEntityData,
    PrefetchHooks Function()> {
  $$DistributorEntityTableTableManager(
      _$Datasource db, $DistributorEntityTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$DistributorEntityTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$DistributorEntityTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$DistributorEntityTableAnnotationComposer(
                  $db: db, $table: table),
          updateCompanionCallback: ({
            Value<int> id = const Value.absent(),
            Value<String> nama = const Value.absent(),
            Value<String> alamat = const Value.absent(),
          }) =>
              DistributorEntityCompanion(
            id: id,
            nama: nama,
            alamat: alamat,
          ),
          createCompanionCallback: ({
            Value<int> id = const Value.absent(),
            required String nama,
            required String alamat,
          }) =>
              DistributorEntityCompanion.insert(
            id: id,
            nama: nama,
            alamat: alamat,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ));
}

typedef $$DistributorEntityTableProcessedTableManager = ProcessedTableManager<
    _$Datasource,
    $DistributorEntityTable,
    DistributorEntityData,
    $$DistributorEntityTableFilterComposer,
    $$DistributorEntityTableOrderingComposer,
    $$DistributorEntityTableAnnotationComposer,
    $$DistributorEntityTableCreateCompanionBuilder,
    $$DistributorEntityTableUpdateCompanionBuilder,
    (
      DistributorEntityData,
      BaseReferences<_$Datasource, $DistributorEntityTable,
          DistributorEntityData>
    ),
    DistributorEntityData,
    PrefetchHooks Function()>;
typedef $$GudangEntityTableCreateCompanionBuilder = GudangEntityCompanion
    Function({
  Value<int> id,
  required String tipe,
  required int volume,
  required String alamat,
  required int harga,
});
typedef $$GudangEntityTableUpdateCompanionBuilder = GudangEntityCompanion
    Function({
  Value<int> id,
  Value<String> tipe,
  Value<int> volume,
  Value<String> alamat,
  Value<int> harga,
});

final class $$GudangEntityTableReferences
    extends BaseReferences<_$Datasource, $GudangEntityTable, GudangEntityData> {
  $$GudangEntityTableReferences(super.$_db, super.$_table, super.$_typedResult);

  static MultiTypedResultKey<$SewaEntityTable, List<SewaEntityData>>
      _sewaEntityRefsTable(_$Datasource db) => MultiTypedResultKey.fromTable(
          db.sewaEntity,
          aliasName:
              $_aliasNameGenerator(db.gudangEntity.id, db.sewaEntity.idGudang));

  $$SewaEntityTableProcessedTableManager get sewaEntityRefs {
    final manager = $$SewaEntityTableTableManager($_db, $_db.sewaEntity)
        .filter((f) => f.idGudang.id($_item.id));

    final cache = $_typedResult.readTableOrNull(_sewaEntityRefsTable($_db));
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: cache));
  }
}

class $$GudangEntityTableFilterComposer
    extends Composer<_$Datasource, $GudangEntityTable> {
  $$GudangEntityTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get tipe => $composableBuilder(
      column: $table.tipe, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get volume => $composableBuilder(
      column: $table.volume, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get alamat => $composableBuilder(
      column: $table.alamat, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get harga => $composableBuilder(
      column: $table.harga, builder: (column) => ColumnFilters(column));

  Expression<bool> sewaEntityRefs(
      Expression<bool> Function($$SewaEntityTableFilterComposer f) f) {
    final $$SewaEntityTableFilterComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.id,
        referencedTable: $db.sewaEntity,
        getReferencedColumn: (t) => t.idGudang,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$SewaEntityTableFilterComposer(
              $db: $db,
              $table: $db.sewaEntity,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return f(composer);
  }
}

class $$GudangEntityTableOrderingComposer
    extends Composer<_$Datasource, $GudangEntityTable> {
  $$GudangEntityTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get tipe => $composableBuilder(
      column: $table.tipe, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get volume => $composableBuilder(
      column: $table.volume, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get alamat => $composableBuilder(
      column: $table.alamat, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get harga => $composableBuilder(
      column: $table.harga, builder: (column) => ColumnOrderings(column));
}

class $$GudangEntityTableAnnotationComposer
    extends Composer<_$Datasource, $GudangEntityTable> {
  $$GudangEntityTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get tipe =>
      $composableBuilder(column: $table.tipe, builder: (column) => column);

  GeneratedColumn<int> get volume =>
      $composableBuilder(column: $table.volume, builder: (column) => column);

  GeneratedColumn<String> get alamat =>
      $composableBuilder(column: $table.alamat, builder: (column) => column);

  GeneratedColumn<int> get harga =>
      $composableBuilder(column: $table.harga, builder: (column) => column);

  Expression<T> sewaEntityRefs<T extends Object>(
      Expression<T> Function($$SewaEntityTableAnnotationComposer a) f) {
    final $$SewaEntityTableAnnotationComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.id,
        referencedTable: $db.sewaEntity,
        getReferencedColumn: (t) => t.idGudang,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$SewaEntityTableAnnotationComposer(
              $db: $db,
              $table: $db.sewaEntity,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return f(composer);
  }
}

class $$GudangEntityTableTableManager extends RootTableManager<
    _$Datasource,
    $GudangEntityTable,
    GudangEntityData,
    $$GudangEntityTableFilterComposer,
    $$GudangEntityTableOrderingComposer,
    $$GudangEntityTableAnnotationComposer,
    $$GudangEntityTableCreateCompanionBuilder,
    $$GudangEntityTableUpdateCompanionBuilder,
    (GudangEntityData, $$GudangEntityTableReferences),
    GudangEntityData,
    PrefetchHooks Function({bool sewaEntityRefs})> {
  $$GudangEntityTableTableManager(_$Datasource db, $GudangEntityTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$GudangEntityTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$GudangEntityTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$GudangEntityTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<int> id = const Value.absent(),
            Value<String> tipe = const Value.absent(),
            Value<int> volume = const Value.absent(),
            Value<String> alamat = const Value.absent(),
            Value<int> harga = const Value.absent(),
          }) =>
              GudangEntityCompanion(
            id: id,
            tipe: tipe,
            volume: volume,
            alamat: alamat,
            harga: harga,
          ),
          createCompanionCallback: ({
            Value<int> id = const Value.absent(),
            required String tipe,
            required int volume,
            required String alamat,
            required int harga,
          }) =>
              GudangEntityCompanion.insert(
            id: id,
            tipe: tipe,
            volume: volume,
            alamat: alamat,
            harga: harga,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (
                    e.readTable(table),
                    $$GudangEntityTableReferences(db, table, e)
                  ))
              .toList(),
          prefetchHooksCallback: ({sewaEntityRefs = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [if (sewaEntityRefs) db.sewaEntity],
              addJoins: null,
              getPrefetchedDataCallback: (items) async {
                return [
                  if (sewaEntityRefs)
                    await $_getPrefetchedData(
                        currentTable: table,
                        referencedTable: $$GudangEntityTableReferences
                            ._sewaEntityRefsTable(db),
                        managerFromTypedResult: (p0) =>
                            $$GudangEntityTableReferences(db, table, p0)
                                .sewaEntityRefs,
                        referencedItemsForCurrentItem: (item,
                                referencedItems) =>
                            referencedItems.where((e) => e.idGudang == item.id),
                        typedResults: items)
                ];
              },
            );
          },
        ));
}

typedef $$GudangEntityTableProcessedTableManager = ProcessedTableManager<
    _$Datasource,
    $GudangEntityTable,
    GudangEntityData,
    $$GudangEntityTableFilterComposer,
    $$GudangEntityTableOrderingComposer,
    $$GudangEntityTableAnnotationComposer,
    $$GudangEntityTableCreateCompanionBuilder,
    $$GudangEntityTableUpdateCompanionBuilder,
    (GudangEntityData, $$GudangEntityTableReferences),
    GudangEntityData,
    PrefetchHooks Function({bool sewaEntityRefs})>;
typedef $$PabrikEntityTableCreateCompanionBuilder = PabrikEntityCompanion
    Function({
  Value<int> id,
  required String nama,
  required String alamat,
});
typedef $$PabrikEntityTableUpdateCompanionBuilder = PabrikEntityCompanion
    Function({
  Value<int> id,
  Value<String> nama,
  Value<String> alamat,
});

class $$PabrikEntityTableFilterComposer
    extends Composer<_$Datasource, $PabrikEntityTable> {
  $$PabrikEntityTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get nama => $composableBuilder(
      column: $table.nama, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get alamat => $composableBuilder(
      column: $table.alamat, builder: (column) => ColumnFilters(column));
}

class $$PabrikEntityTableOrderingComposer
    extends Composer<_$Datasource, $PabrikEntityTable> {
  $$PabrikEntityTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get nama => $composableBuilder(
      column: $table.nama, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get alamat => $composableBuilder(
      column: $table.alamat, builder: (column) => ColumnOrderings(column));
}

class $$PabrikEntityTableAnnotationComposer
    extends Composer<_$Datasource, $PabrikEntityTable> {
  $$PabrikEntityTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get nama =>
      $composableBuilder(column: $table.nama, builder: (column) => column);

  GeneratedColumn<String> get alamat =>
      $composableBuilder(column: $table.alamat, builder: (column) => column);
}

class $$PabrikEntityTableTableManager extends RootTableManager<
    _$Datasource,
    $PabrikEntityTable,
    PabrikEntityData,
    $$PabrikEntityTableFilterComposer,
    $$PabrikEntityTableOrderingComposer,
    $$PabrikEntityTableAnnotationComposer,
    $$PabrikEntityTableCreateCompanionBuilder,
    $$PabrikEntityTableUpdateCompanionBuilder,
    (
      PabrikEntityData,
      BaseReferences<_$Datasource, $PabrikEntityTable, PabrikEntityData>
    ),
    PabrikEntityData,
    PrefetchHooks Function()> {
  $$PabrikEntityTableTableManager(_$Datasource db, $PabrikEntityTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$PabrikEntityTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$PabrikEntityTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$PabrikEntityTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<int> id = const Value.absent(),
            Value<String> nama = const Value.absent(),
            Value<String> alamat = const Value.absent(),
          }) =>
              PabrikEntityCompanion(
            id: id,
            nama: nama,
            alamat: alamat,
          ),
          createCompanionCallback: ({
            Value<int> id = const Value.absent(),
            required String nama,
            required String alamat,
          }) =>
              PabrikEntityCompanion.insert(
            id: id,
            nama: nama,
            alamat: alamat,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ));
}

typedef $$PabrikEntityTableProcessedTableManager = ProcessedTableManager<
    _$Datasource,
    $PabrikEntityTable,
    PabrikEntityData,
    $$PabrikEntityTableFilterComposer,
    $$PabrikEntityTableOrderingComposer,
    $$PabrikEntityTableAnnotationComposer,
    $$PabrikEntityTableCreateCompanionBuilder,
    $$PabrikEntityTableUpdateCompanionBuilder,
    (
      PabrikEntityData,
      BaseReferences<_$Datasource, $PabrikEntityTable, PabrikEntityData>
    ),
    PabrikEntityData,
    PrefetchHooks Function()>;
typedef $$PegawaiEntityTableCreateCompanionBuilder = PegawaiEntityCompanion
    Function({
  Value<int> id,
  required String nama,
  Value<DateTime?> createdAt,
});
typedef $$PegawaiEntityTableUpdateCompanionBuilder = PegawaiEntityCompanion
    Function({
  Value<int> id,
  Value<String> nama,
  Value<DateTime?> createdAt,
});

final class $$PegawaiEntityTableReferences extends BaseReferences<_$Datasource,
    $PegawaiEntityTable, PegawaiEntityData> {
  $$PegawaiEntityTableReferences(
      super.$_db, super.$_table, super.$_typedResult);

  static MultiTypedResultKey<$PersetujuanEntityTable,
      List<PersetujuanEntityData>> _persetujuanEntityRefsTable(
          _$Datasource db) =>
      MultiTypedResultKey.fromTable(db.persetujuanEntity,
          aliasName: $_aliasNameGenerator(
              db.pegawaiEntity.id, db.persetujuanEntity.idPegawai));

  $$PersetujuanEntityTableProcessedTableManager get persetujuanEntityRefs {
    final manager =
        $$PersetujuanEntityTableTableManager($_db, $_db.persetujuanEntity)
            .filter((f) => f.idPegawai.id($_item.id));

    final cache =
        $_typedResult.readTableOrNull(_persetujuanEntityRefsTable($_db));
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: cache));
  }
}

class $$PegawaiEntityTableFilterComposer
    extends Composer<_$Datasource, $PegawaiEntityTable> {
  $$PegawaiEntityTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get nama => $composableBuilder(
      column: $table.nama, builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get createdAt => $composableBuilder(
      column: $table.createdAt, builder: (column) => ColumnFilters(column));

  Expression<bool> persetujuanEntityRefs(
      Expression<bool> Function($$PersetujuanEntityTableFilterComposer f) f) {
    final $$PersetujuanEntityTableFilterComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.id,
        referencedTable: $db.persetujuanEntity,
        getReferencedColumn: (t) => t.idPegawai,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$PersetujuanEntityTableFilterComposer(
              $db: $db,
              $table: $db.persetujuanEntity,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return f(composer);
  }
}

class $$PegawaiEntityTableOrderingComposer
    extends Composer<_$Datasource, $PegawaiEntityTable> {
  $$PegawaiEntityTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get nama => $composableBuilder(
      column: $table.nama, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get createdAt => $composableBuilder(
      column: $table.createdAt, builder: (column) => ColumnOrderings(column));
}

class $$PegawaiEntityTableAnnotationComposer
    extends Composer<_$Datasource, $PegawaiEntityTable> {
  $$PegawaiEntityTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get nama =>
      $composableBuilder(column: $table.nama, builder: (column) => column);

  GeneratedColumn<DateTime> get createdAt =>
      $composableBuilder(column: $table.createdAt, builder: (column) => column);

  Expression<T> persetujuanEntityRefs<T extends Object>(
      Expression<T> Function($$PersetujuanEntityTableAnnotationComposer a) f) {
    final $$PersetujuanEntityTableAnnotationComposer composer =
        $composerBuilder(
            composer: this,
            getCurrentColumn: (t) => t.id,
            referencedTable: $db.persetujuanEntity,
            getReferencedColumn: (t) => t.idPegawai,
            builder: (joinBuilder,
                    {$addJoinBuilderToRootComposer,
                    $removeJoinBuilderFromRootComposer}) =>
                $$PersetujuanEntityTableAnnotationComposer(
                  $db: $db,
                  $table: $db.persetujuanEntity,
                  $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
                  joinBuilder: joinBuilder,
                  $removeJoinBuilderFromRootComposer:
                      $removeJoinBuilderFromRootComposer,
                ));
    return f(composer);
  }
}

class $$PegawaiEntityTableTableManager extends RootTableManager<
    _$Datasource,
    $PegawaiEntityTable,
    PegawaiEntityData,
    $$PegawaiEntityTableFilterComposer,
    $$PegawaiEntityTableOrderingComposer,
    $$PegawaiEntityTableAnnotationComposer,
    $$PegawaiEntityTableCreateCompanionBuilder,
    $$PegawaiEntityTableUpdateCompanionBuilder,
    (PegawaiEntityData, $$PegawaiEntityTableReferences),
    PegawaiEntityData,
    PrefetchHooks Function({bool persetujuanEntityRefs})> {
  $$PegawaiEntityTableTableManager(_$Datasource db, $PegawaiEntityTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$PegawaiEntityTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$PegawaiEntityTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$PegawaiEntityTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<int> id = const Value.absent(),
            Value<String> nama = const Value.absent(),
            Value<DateTime?> createdAt = const Value.absent(),
          }) =>
              PegawaiEntityCompanion(
            id: id,
            nama: nama,
            createdAt: createdAt,
          ),
          createCompanionCallback: ({
            Value<int> id = const Value.absent(),
            required String nama,
            Value<DateTime?> createdAt = const Value.absent(),
          }) =>
              PegawaiEntityCompanion.insert(
            id: id,
            nama: nama,
            createdAt: createdAt,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (
                    e.readTable(table),
                    $$PegawaiEntityTableReferences(db, table, e)
                  ))
              .toList(),
          prefetchHooksCallback: ({persetujuanEntityRefs = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [
                if (persetujuanEntityRefs) db.persetujuanEntity
              ],
              addJoins: null,
              getPrefetchedDataCallback: (items) async {
                return [
                  if (persetujuanEntityRefs)
                    await $_getPrefetchedData(
                        currentTable: table,
                        referencedTable: $$PegawaiEntityTableReferences
                            ._persetujuanEntityRefsTable(db),
                        managerFromTypedResult: (p0) =>
                            $$PegawaiEntityTableReferences(db, table, p0)
                                .persetujuanEntityRefs,
                        referencedItemsForCurrentItem:
                            (item, referencedItems) => referencedItems
                                .where((e) => e.idPegawai == item.id),
                        typedResults: items)
                ];
              },
            );
          },
        ));
}

typedef $$PegawaiEntityTableProcessedTableManager = ProcessedTableManager<
    _$Datasource,
    $PegawaiEntityTable,
    PegawaiEntityData,
    $$PegawaiEntityTableFilterComposer,
    $$PegawaiEntityTableOrderingComposer,
    $$PegawaiEntityTableAnnotationComposer,
    $$PegawaiEntityTableCreateCompanionBuilder,
    $$PegawaiEntityTableUpdateCompanionBuilder,
    (PegawaiEntityData, $$PegawaiEntityTableReferences),
    PegawaiEntityData,
    PrefetchHooks Function({bool persetujuanEntityRefs})>;
typedef $$SewaEntityTableCreateCompanionBuilder = SewaEntityCompanion Function({
  Value<int> id,
  required int idClient,
  required int idGudang,
  required DateTime tanggalMulai,
  required DateTime tanggalAkhir,
  Value<DateTime?> createdAt,
});
typedef $$SewaEntityTableUpdateCompanionBuilder = SewaEntityCompanion Function({
  Value<int> id,
  Value<int> idClient,
  Value<int> idGudang,
  Value<DateTime> tanggalMulai,
  Value<DateTime> tanggalAkhir,
  Value<DateTime?> createdAt,
});

final class $$SewaEntityTableReferences
    extends BaseReferences<_$Datasource, $SewaEntityTable, SewaEntityData> {
  $$SewaEntityTableReferences(super.$_db, super.$_table, super.$_typedResult);

  static $ClientEntityTable _idClientTable(_$Datasource db) =>
      db.clientEntity.createAlias(
          $_aliasNameGenerator(db.sewaEntity.idClient, db.clientEntity.id));

  $$ClientEntityTableProcessedTableManager get idClient {
    final manager = $$ClientEntityTableTableManager($_db, $_db.clientEntity)
        .filter((f) => f.id($_item.idClient!));
    final item = $_typedResult.readTableOrNull(_idClientTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: [item]));
  }

  static $GudangEntityTable _idGudangTable(_$Datasource db) =>
      db.gudangEntity.createAlias(
          $_aliasNameGenerator(db.sewaEntity.idGudang, db.gudangEntity.id));

  $$GudangEntityTableProcessedTableManager get idGudang {
    final manager = $$GudangEntityTableTableManager($_db, $_db.gudangEntity)
        .filter((f) => f.id($_item.idGudang!));
    final item = $_typedResult.readTableOrNull(_idGudangTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: [item]));
  }

  static MultiTypedResultKey<$TagihanEntityTable, List<TagihanEntityData>>
      _tagihanEntityRefsTable(_$Datasource db) => MultiTypedResultKey.fromTable(
          db.tagihanEntity,
          aliasName:
              $_aliasNameGenerator(db.sewaEntity.id, db.tagihanEntity.idSewa));

  $$TagihanEntityTableProcessedTableManager get tagihanEntityRefs {
    final manager = $$TagihanEntityTableTableManager($_db, $_db.tagihanEntity)
        .filter((f) => f.idSewa.id($_item.id));

    final cache = $_typedResult.readTableOrNull(_tagihanEntityRefsTable($_db));
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: cache));
  }
}

class $$SewaEntityTableFilterComposer
    extends Composer<_$Datasource, $SewaEntityTable> {
  $$SewaEntityTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get tanggalMulai => $composableBuilder(
      column: $table.tanggalMulai, builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get tanggalAkhir => $composableBuilder(
      column: $table.tanggalAkhir, builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get createdAt => $composableBuilder(
      column: $table.createdAt, builder: (column) => ColumnFilters(column));

  $$ClientEntityTableFilterComposer get idClient {
    final $$ClientEntityTableFilterComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.idClient,
        referencedTable: $db.clientEntity,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$ClientEntityTableFilterComposer(
              $db: $db,
              $table: $db.clientEntity,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }

  $$GudangEntityTableFilterComposer get idGudang {
    final $$GudangEntityTableFilterComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.idGudang,
        referencedTable: $db.gudangEntity,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$GudangEntityTableFilterComposer(
              $db: $db,
              $table: $db.gudangEntity,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }

  Expression<bool> tagihanEntityRefs(
      Expression<bool> Function($$TagihanEntityTableFilterComposer f) f) {
    final $$TagihanEntityTableFilterComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.id,
        referencedTable: $db.tagihanEntity,
        getReferencedColumn: (t) => t.idSewa,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$TagihanEntityTableFilterComposer(
              $db: $db,
              $table: $db.tagihanEntity,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return f(composer);
  }
}

class $$SewaEntityTableOrderingComposer
    extends Composer<_$Datasource, $SewaEntityTable> {
  $$SewaEntityTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get tanggalMulai => $composableBuilder(
      column: $table.tanggalMulai,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get tanggalAkhir => $composableBuilder(
      column: $table.tanggalAkhir,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get createdAt => $composableBuilder(
      column: $table.createdAt, builder: (column) => ColumnOrderings(column));

  $$ClientEntityTableOrderingComposer get idClient {
    final $$ClientEntityTableOrderingComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.idClient,
        referencedTable: $db.clientEntity,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$ClientEntityTableOrderingComposer(
              $db: $db,
              $table: $db.clientEntity,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }

  $$GudangEntityTableOrderingComposer get idGudang {
    final $$GudangEntityTableOrderingComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.idGudang,
        referencedTable: $db.gudangEntity,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$GudangEntityTableOrderingComposer(
              $db: $db,
              $table: $db.gudangEntity,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }
}

class $$SewaEntityTableAnnotationComposer
    extends Composer<_$Datasource, $SewaEntityTable> {
  $$SewaEntityTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<DateTime> get tanggalMulai => $composableBuilder(
      column: $table.tanggalMulai, builder: (column) => column);

  GeneratedColumn<DateTime> get tanggalAkhir => $composableBuilder(
      column: $table.tanggalAkhir, builder: (column) => column);

  GeneratedColumn<DateTime> get createdAt =>
      $composableBuilder(column: $table.createdAt, builder: (column) => column);

  $$ClientEntityTableAnnotationComposer get idClient {
    final $$ClientEntityTableAnnotationComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.idClient,
        referencedTable: $db.clientEntity,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$ClientEntityTableAnnotationComposer(
              $db: $db,
              $table: $db.clientEntity,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }

  $$GudangEntityTableAnnotationComposer get idGudang {
    final $$GudangEntityTableAnnotationComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.idGudang,
        referencedTable: $db.gudangEntity,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$GudangEntityTableAnnotationComposer(
              $db: $db,
              $table: $db.gudangEntity,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }

  Expression<T> tagihanEntityRefs<T extends Object>(
      Expression<T> Function($$TagihanEntityTableAnnotationComposer a) f) {
    final $$TagihanEntityTableAnnotationComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.id,
        referencedTable: $db.tagihanEntity,
        getReferencedColumn: (t) => t.idSewa,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$TagihanEntityTableAnnotationComposer(
              $db: $db,
              $table: $db.tagihanEntity,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return f(composer);
  }
}

class $$SewaEntityTableTableManager extends RootTableManager<
    _$Datasource,
    $SewaEntityTable,
    SewaEntityData,
    $$SewaEntityTableFilterComposer,
    $$SewaEntityTableOrderingComposer,
    $$SewaEntityTableAnnotationComposer,
    $$SewaEntityTableCreateCompanionBuilder,
    $$SewaEntityTableUpdateCompanionBuilder,
    (SewaEntityData, $$SewaEntityTableReferences),
    SewaEntityData,
    PrefetchHooks Function(
        {bool idClient, bool idGudang, bool tagihanEntityRefs})> {
  $$SewaEntityTableTableManager(_$Datasource db, $SewaEntityTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$SewaEntityTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$SewaEntityTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$SewaEntityTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<int> id = const Value.absent(),
            Value<int> idClient = const Value.absent(),
            Value<int> idGudang = const Value.absent(),
            Value<DateTime> tanggalMulai = const Value.absent(),
            Value<DateTime> tanggalAkhir = const Value.absent(),
            Value<DateTime?> createdAt = const Value.absent(),
          }) =>
              SewaEntityCompanion(
            id: id,
            idClient: idClient,
            idGudang: idGudang,
            tanggalMulai: tanggalMulai,
            tanggalAkhir: tanggalAkhir,
            createdAt: createdAt,
          ),
          createCompanionCallback: ({
            Value<int> id = const Value.absent(),
            required int idClient,
            required int idGudang,
            required DateTime tanggalMulai,
            required DateTime tanggalAkhir,
            Value<DateTime?> createdAt = const Value.absent(),
          }) =>
              SewaEntityCompanion.insert(
            id: id,
            idClient: idClient,
            idGudang: idGudang,
            tanggalMulai: tanggalMulai,
            tanggalAkhir: tanggalAkhir,
            createdAt: createdAt,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (
                    e.readTable(table),
                    $$SewaEntityTableReferences(db, table, e)
                  ))
              .toList(),
          prefetchHooksCallback: (
              {idClient = false, idGudang = false, tagihanEntityRefs = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [
                if (tagihanEntityRefs) db.tagihanEntity
              ],
              addJoins: <
                  T extends TableManagerState<
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic>>(state) {
                if (idClient) {
                  state = state.withJoin(
                    currentTable: table,
                    currentColumn: table.idClient,
                    referencedTable:
                        $$SewaEntityTableReferences._idClientTable(db),
                    referencedColumn:
                        $$SewaEntityTableReferences._idClientTable(db).id,
                  ) as T;
                }
                if (idGudang) {
                  state = state.withJoin(
                    currentTable: table,
                    currentColumn: table.idGudang,
                    referencedTable:
                        $$SewaEntityTableReferences._idGudangTable(db),
                    referencedColumn:
                        $$SewaEntityTableReferences._idGudangTable(db).id,
                  ) as T;
                }

                return state;
              },
              getPrefetchedDataCallback: (items) async {
                return [
                  if (tagihanEntityRefs)
                    await $_getPrefetchedData(
                        currentTable: table,
                        referencedTable: $$SewaEntityTableReferences
                            ._tagihanEntityRefsTable(db),
                        managerFromTypedResult: (p0) =>
                            $$SewaEntityTableReferences(db, table, p0)
                                .tagihanEntityRefs,
                        referencedItemsForCurrentItem: (item,
                                referencedItems) =>
                            referencedItems.where((e) => e.idSewa == item.id),
                        typedResults: items)
                ];
              },
            );
          },
        ));
}

typedef $$SewaEntityTableProcessedTableManager = ProcessedTableManager<
    _$Datasource,
    $SewaEntityTable,
    SewaEntityData,
    $$SewaEntityTableFilterComposer,
    $$SewaEntityTableOrderingComposer,
    $$SewaEntityTableAnnotationComposer,
    $$SewaEntityTableCreateCompanionBuilder,
    $$SewaEntityTableUpdateCompanionBuilder,
    (SewaEntityData, $$SewaEntityTableReferences),
    SewaEntityData,
    PrefetchHooks Function(
        {bool idClient, bool idGudang, bool tagihanEntityRefs})>;
typedef $$TagihanEntityTableCreateCompanionBuilder = TagihanEntityCompanion
    Function({
  Value<int> id,
  required int idSewa,
  required int idPembayaran,
  required int biaya,
  required DateTime batasWaktu,
  Value<DateTime?> createdAt,
});
typedef $$TagihanEntityTableUpdateCompanionBuilder = TagihanEntityCompanion
    Function({
  Value<int> id,
  Value<int> idSewa,
  Value<int> idPembayaran,
  Value<int> biaya,
  Value<DateTime> batasWaktu,
  Value<DateTime?> createdAt,
});

final class $$TagihanEntityTableReferences extends BaseReferences<_$Datasource,
    $TagihanEntityTable, TagihanEntityData> {
  $$TagihanEntityTableReferences(
      super.$_db, super.$_table, super.$_typedResult);

  static $SewaEntityTable _idSewaTable(_$Datasource db) =>
      db.sewaEntity.createAlias(
          $_aliasNameGenerator(db.tagihanEntity.idSewa, db.sewaEntity.id));

  $$SewaEntityTableProcessedTableManager get idSewa {
    final manager = $$SewaEntityTableTableManager($_db, $_db.sewaEntity)
        .filter((f) => f.id($_item.idSewa!));
    final item = $_typedResult.readTableOrNull(_idSewaTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: [item]));
  }

  static MultiTypedResultKey<$PembayaranEntityTable, List<PembayaranEntityData>>
      _pembayaranEntityRefsTable(_$Datasource db) =>
          MultiTypedResultKey.fromTable(db.pembayaranEntity,
              aliasName: $_aliasNameGenerator(
                  db.tagihanEntity.id, db.pembayaranEntity.idTagihan));

  $$PembayaranEntityTableProcessedTableManager get pembayaranEntityRefs {
    final manager =
        $$PembayaranEntityTableTableManager($_db, $_db.pembayaranEntity)
            .filter((f) => f.idTagihan.id($_item.id));

    final cache =
        $_typedResult.readTableOrNull(_pembayaranEntityRefsTable($_db));
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: cache));
  }
}

class $$TagihanEntityTableFilterComposer
    extends Composer<_$Datasource, $TagihanEntityTable> {
  $$TagihanEntityTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get idPembayaran => $composableBuilder(
      column: $table.idPembayaran, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get biaya => $composableBuilder(
      column: $table.biaya, builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get batasWaktu => $composableBuilder(
      column: $table.batasWaktu, builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get createdAt => $composableBuilder(
      column: $table.createdAt, builder: (column) => ColumnFilters(column));

  $$SewaEntityTableFilterComposer get idSewa {
    final $$SewaEntityTableFilterComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.idSewa,
        referencedTable: $db.sewaEntity,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$SewaEntityTableFilterComposer(
              $db: $db,
              $table: $db.sewaEntity,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }

  Expression<bool> pembayaranEntityRefs(
      Expression<bool> Function($$PembayaranEntityTableFilterComposer f) f) {
    final $$PembayaranEntityTableFilterComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.id,
        referencedTable: $db.pembayaranEntity,
        getReferencedColumn: (t) => t.idTagihan,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$PembayaranEntityTableFilterComposer(
              $db: $db,
              $table: $db.pembayaranEntity,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return f(composer);
  }
}

class $$TagihanEntityTableOrderingComposer
    extends Composer<_$Datasource, $TagihanEntityTable> {
  $$TagihanEntityTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get idPembayaran => $composableBuilder(
      column: $table.idPembayaran,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get biaya => $composableBuilder(
      column: $table.biaya, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get batasWaktu => $composableBuilder(
      column: $table.batasWaktu, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get createdAt => $composableBuilder(
      column: $table.createdAt, builder: (column) => ColumnOrderings(column));

  $$SewaEntityTableOrderingComposer get idSewa {
    final $$SewaEntityTableOrderingComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.idSewa,
        referencedTable: $db.sewaEntity,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$SewaEntityTableOrderingComposer(
              $db: $db,
              $table: $db.sewaEntity,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }
}

class $$TagihanEntityTableAnnotationComposer
    extends Composer<_$Datasource, $TagihanEntityTable> {
  $$TagihanEntityTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<int> get idPembayaran => $composableBuilder(
      column: $table.idPembayaran, builder: (column) => column);

  GeneratedColumn<int> get biaya =>
      $composableBuilder(column: $table.biaya, builder: (column) => column);

  GeneratedColumn<DateTime> get batasWaktu => $composableBuilder(
      column: $table.batasWaktu, builder: (column) => column);

  GeneratedColumn<DateTime> get createdAt =>
      $composableBuilder(column: $table.createdAt, builder: (column) => column);

  $$SewaEntityTableAnnotationComposer get idSewa {
    final $$SewaEntityTableAnnotationComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.idSewa,
        referencedTable: $db.sewaEntity,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$SewaEntityTableAnnotationComposer(
              $db: $db,
              $table: $db.sewaEntity,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }

  Expression<T> pembayaranEntityRefs<T extends Object>(
      Expression<T> Function($$PembayaranEntityTableAnnotationComposer a) f) {
    final $$PembayaranEntityTableAnnotationComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.id,
        referencedTable: $db.pembayaranEntity,
        getReferencedColumn: (t) => t.idTagihan,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$PembayaranEntityTableAnnotationComposer(
              $db: $db,
              $table: $db.pembayaranEntity,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return f(composer);
  }
}

class $$TagihanEntityTableTableManager extends RootTableManager<
    _$Datasource,
    $TagihanEntityTable,
    TagihanEntityData,
    $$TagihanEntityTableFilterComposer,
    $$TagihanEntityTableOrderingComposer,
    $$TagihanEntityTableAnnotationComposer,
    $$TagihanEntityTableCreateCompanionBuilder,
    $$TagihanEntityTableUpdateCompanionBuilder,
    (TagihanEntityData, $$TagihanEntityTableReferences),
    TagihanEntityData,
    PrefetchHooks Function({bool idSewa, bool pembayaranEntityRefs})> {
  $$TagihanEntityTableTableManager(_$Datasource db, $TagihanEntityTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$TagihanEntityTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$TagihanEntityTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$TagihanEntityTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<int> id = const Value.absent(),
            Value<int> idSewa = const Value.absent(),
            Value<int> idPembayaran = const Value.absent(),
            Value<int> biaya = const Value.absent(),
            Value<DateTime> batasWaktu = const Value.absent(),
            Value<DateTime?> createdAt = const Value.absent(),
          }) =>
              TagihanEntityCompanion(
            id: id,
            idSewa: idSewa,
            idPembayaran: idPembayaran,
            biaya: biaya,
            batasWaktu: batasWaktu,
            createdAt: createdAt,
          ),
          createCompanionCallback: ({
            Value<int> id = const Value.absent(),
            required int idSewa,
            required int idPembayaran,
            required int biaya,
            required DateTime batasWaktu,
            Value<DateTime?> createdAt = const Value.absent(),
          }) =>
              TagihanEntityCompanion.insert(
            id: id,
            idSewa: idSewa,
            idPembayaran: idPembayaran,
            biaya: biaya,
            batasWaktu: batasWaktu,
            createdAt: createdAt,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (
                    e.readTable(table),
                    $$TagihanEntityTableReferences(db, table, e)
                  ))
              .toList(),
          prefetchHooksCallback: (
              {idSewa = false, pembayaranEntityRefs = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [
                if (pembayaranEntityRefs) db.pembayaranEntity
              ],
              addJoins: <
                  T extends TableManagerState<
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic>>(state) {
                if (idSewa) {
                  state = state.withJoin(
                    currentTable: table,
                    currentColumn: table.idSewa,
                    referencedTable:
                        $$TagihanEntityTableReferences._idSewaTable(db),
                    referencedColumn:
                        $$TagihanEntityTableReferences._idSewaTable(db).id,
                  ) as T;
                }

                return state;
              },
              getPrefetchedDataCallback: (items) async {
                return [
                  if (pembayaranEntityRefs)
                    await $_getPrefetchedData(
                        currentTable: table,
                        referencedTable: $$TagihanEntityTableReferences
                            ._pembayaranEntityRefsTable(db),
                        managerFromTypedResult: (p0) =>
                            $$TagihanEntityTableReferences(db, table, p0)
                                .pembayaranEntityRefs,
                        referencedItemsForCurrentItem:
                            (item, referencedItems) => referencedItems
                                .where((e) => e.idTagihan == item.id),
                        typedResults: items)
                ];
              },
            );
          },
        ));
}

typedef $$TagihanEntityTableProcessedTableManager = ProcessedTableManager<
    _$Datasource,
    $TagihanEntityTable,
    TagihanEntityData,
    $$TagihanEntityTableFilterComposer,
    $$TagihanEntityTableOrderingComposer,
    $$TagihanEntityTableAnnotationComposer,
    $$TagihanEntityTableCreateCompanionBuilder,
    $$TagihanEntityTableUpdateCompanionBuilder,
    (TagihanEntityData, $$TagihanEntityTableReferences),
    TagihanEntityData,
    PrefetchHooks Function({bool idSewa, bool pembayaranEntityRefs})>;
typedef $$PembayaranEntityTableCreateCompanionBuilder
    = PembayaranEntityCompanion Function({
  Value<int> id,
  required int idTagihan,
  required int jumlahBayar,
  Value<DateTime?> createdAt,
});
typedef $$PembayaranEntityTableUpdateCompanionBuilder
    = PembayaranEntityCompanion Function({
  Value<int> id,
  Value<int> idTagihan,
  Value<int> jumlahBayar,
  Value<DateTime?> createdAt,
});

final class $$PembayaranEntityTableReferences extends BaseReferences<
    _$Datasource, $PembayaranEntityTable, PembayaranEntityData> {
  $$PembayaranEntityTableReferences(
      super.$_db, super.$_table, super.$_typedResult);

  static $TagihanEntityTable _idTagihanTable(_$Datasource db) =>
      db.tagihanEntity.createAlias($_aliasNameGenerator(
          db.pembayaranEntity.idTagihan, db.tagihanEntity.id));

  $$TagihanEntityTableProcessedTableManager get idTagihan {
    final manager = $$TagihanEntityTableTableManager($_db, $_db.tagihanEntity)
        .filter((f) => f.id($_item.idTagihan!));
    final item = $_typedResult.readTableOrNull(_idTagihanTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: [item]));
  }
}

class $$PembayaranEntityTableFilterComposer
    extends Composer<_$Datasource, $PembayaranEntityTable> {
  $$PembayaranEntityTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get jumlahBayar => $composableBuilder(
      column: $table.jumlahBayar, builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get createdAt => $composableBuilder(
      column: $table.createdAt, builder: (column) => ColumnFilters(column));

  $$TagihanEntityTableFilterComposer get idTagihan {
    final $$TagihanEntityTableFilterComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.idTagihan,
        referencedTable: $db.tagihanEntity,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$TagihanEntityTableFilterComposer(
              $db: $db,
              $table: $db.tagihanEntity,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }
}

class $$PembayaranEntityTableOrderingComposer
    extends Composer<_$Datasource, $PembayaranEntityTable> {
  $$PembayaranEntityTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get jumlahBayar => $composableBuilder(
      column: $table.jumlahBayar, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get createdAt => $composableBuilder(
      column: $table.createdAt, builder: (column) => ColumnOrderings(column));

  $$TagihanEntityTableOrderingComposer get idTagihan {
    final $$TagihanEntityTableOrderingComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.idTagihan,
        referencedTable: $db.tagihanEntity,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$TagihanEntityTableOrderingComposer(
              $db: $db,
              $table: $db.tagihanEntity,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }
}

class $$PembayaranEntityTableAnnotationComposer
    extends Composer<_$Datasource, $PembayaranEntityTable> {
  $$PembayaranEntityTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<int> get jumlahBayar => $composableBuilder(
      column: $table.jumlahBayar, builder: (column) => column);

  GeneratedColumn<DateTime> get createdAt =>
      $composableBuilder(column: $table.createdAt, builder: (column) => column);

  $$TagihanEntityTableAnnotationComposer get idTagihan {
    final $$TagihanEntityTableAnnotationComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.idTagihan,
        referencedTable: $db.tagihanEntity,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$TagihanEntityTableAnnotationComposer(
              $db: $db,
              $table: $db.tagihanEntity,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }
}

class $$PembayaranEntityTableTableManager extends RootTableManager<
    _$Datasource,
    $PembayaranEntityTable,
    PembayaranEntityData,
    $$PembayaranEntityTableFilterComposer,
    $$PembayaranEntityTableOrderingComposer,
    $$PembayaranEntityTableAnnotationComposer,
    $$PembayaranEntityTableCreateCompanionBuilder,
    $$PembayaranEntityTableUpdateCompanionBuilder,
    (PembayaranEntityData, $$PembayaranEntityTableReferences),
    PembayaranEntityData,
    PrefetchHooks Function({bool idTagihan})> {
  $$PembayaranEntityTableTableManager(
      _$Datasource db, $PembayaranEntityTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$PembayaranEntityTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$PembayaranEntityTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$PembayaranEntityTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<int> id = const Value.absent(),
            Value<int> idTagihan = const Value.absent(),
            Value<int> jumlahBayar = const Value.absent(),
            Value<DateTime?> createdAt = const Value.absent(),
          }) =>
              PembayaranEntityCompanion(
            id: id,
            idTagihan: idTagihan,
            jumlahBayar: jumlahBayar,
            createdAt: createdAt,
          ),
          createCompanionCallback: ({
            Value<int> id = const Value.absent(),
            required int idTagihan,
            required int jumlahBayar,
            Value<DateTime?> createdAt = const Value.absent(),
          }) =>
              PembayaranEntityCompanion.insert(
            id: id,
            idTagihan: idTagihan,
            jumlahBayar: jumlahBayar,
            createdAt: createdAt,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (
                    e.readTable(table),
                    $$PembayaranEntityTableReferences(db, table, e)
                  ))
              .toList(),
          prefetchHooksCallback: ({idTagihan = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [],
              addJoins: <
                  T extends TableManagerState<
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic>>(state) {
                if (idTagihan) {
                  state = state.withJoin(
                    currentTable: table,
                    currentColumn: table.idTagihan,
                    referencedTable:
                        $$PembayaranEntityTableReferences._idTagihanTable(db),
                    referencedColumn: $$PembayaranEntityTableReferences
                        ._idTagihanTable(db)
                        .id,
                  ) as T;
                }

                return state;
              },
              getPrefetchedDataCallback: (items) async {
                return [];
              },
            );
          },
        ));
}

typedef $$PembayaranEntityTableProcessedTableManager = ProcessedTableManager<
    _$Datasource,
    $PembayaranEntityTable,
    PembayaranEntityData,
    $$PembayaranEntityTableFilterComposer,
    $$PembayaranEntityTableOrderingComposer,
    $$PembayaranEntityTableAnnotationComposer,
    $$PembayaranEntityTableCreateCompanionBuilder,
    $$PembayaranEntityTableUpdateCompanionBuilder,
    (PembayaranEntityData, $$PembayaranEntityTableReferences),
    PembayaranEntityData,
    PrefetchHooks Function({bool idTagihan})>;
typedef $$TransaksiEntityTableCreateCompanionBuilder = TransaksiEntityCompanion
    Function({
  Value<int> id,
  required int idGudang,
  required int idBarang,
  required int alamat,
  required TipeTransaksi tipe,
  Value<DateTime?> createdAt,
});
typedef $$TransaksiEntityTableUpdateCompanionBuilder = TransaksiEntityCompanion
    Function({
  Value<int> id,
  Value<int> idGudang,
  Value<int> idBarang,
  Value<int> alamat,
  Value<TipeTransaksi> tipe,
  Value<DateTime?> createdAt,
});

final class $$TransaksiEntityTableReferences extends BaseReferences<
    _$Datasource, $TransaksiEntityTable, TransaksiEntityData> {
  $$TransaksiEntityTableReferences(
      super.$_db, super.$_table, super.$_typedResult);

  static MultiTypedResultKey<$PersetujuanEntityTable,
      List<PersetujuanEntityData>> _persetujuanEntityRefsTable(
          _$Datasource db) =>
      MultiTypedResultKey.fromTable(db.persetujuanEntity,
          aliasName: $_aliasNameGenerator(
              db.transaksiEntity.id, db.persetujuanEntity.idTransaksi));

  $$PersetujuanEntityTableProcessedTableManager get persetujuanEntityRefs {
    final manager =
        $$PersetujuanEntityTableTableManager($_db, $_db.persetujuanEntity)
            .filter((f) => f.idTransaksi.id($_item.id));

    final cache =
        $_typedResult.readTableOrNull(_persetujuanEntityRefsTable($_db));
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: cache));
  }
}

class $$TransaksiEntityTableFilterComposer
    extends Composer<_$Datasource, $TransaksiEntityTable> {
  $$TransaksiEntityTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get idGudang => $composableBuilder(
      column: $table.idGudang, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get idBarang => $composableBuilder(
      column: $table.idBarang, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get alamat => $composableBuilder(
      column: $table.alamat, builder: (column) => ColumnFilters(column));

  ColumnWithTypeConverterFilters<TipeTransaksi, TipeTransaksi, int> get tipe =>
      $composableBuilder(
          column: $table.tipe,
          builder: (column) => ColumnWithTypeConverterFilters(column));

  ColumnFilters<DateTime> get createdAt => $composableBuilder(
      column: $table.createdAt, builder: (column) => ColumnFilters(column));

  Expression<bool> persetujuanEntityRefs(
      Expression<bool> Function($$PersetujuanEntityTableFilterComposer f) f) {
    final $$PersetujuanEntityTableFilterComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.id,
        referencedTable: $db.persetujuanEntity,
        getReferencedColumn: (t) => t.idTransaksi,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$PersetujuanEntityTableFilterComposer(
              $db: $db,
              $table: $db.persetujuanEntity,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return f(composer);
  }
}

class $$TransaksiEntityTableOrderingComposer
    extends Composer<_$Datasource, $TransaksiEntityTable> {
  $$TransaksiEntityTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get idGudang => $composableBuilder(
      column: $table.idGudang, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get idBarang => $composableBuilder(
      column: $table.idBarang, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get alamat => $composableBuilder(
      column: $table.alamat, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get tipe => $composableBuilder(
      column: $table.tipe, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get createdAt => $composableBuilder(
      column: $table.createdAt, builder: (column) => ColumnOrderings(column));
}

class $$TransaksiEntityTableAnnotationComposer
    extends Composer<_$Datasource, $TransaksiEntityTable> {
  $$TransaksiEntityTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<int> get idGudang =>
      $composableBuilder(column: $table.idGudang, builder: (column) => column);

  GeneratedColumn<int> get idBarang =>
      $composableBuilder(column: $table.idBarang, builder: (column) => column);

  GeneratedColumn<int> get alamat =>
      $composableBuilder(column: $table.alamat, builder: (column) => column);

  GeneratedColumnWithTypeConverter<TipeTransaksi, int> get tipe =>
      $composableBuilder(column: $table.tipe, builder: (column) => column);

  GeneratedColumn<DateTime> get createdAt =>
      $composableBuilder(column: $table.createdAt, builder: (column) => column);

  Expression<T> persetujuanEntityRefs<T extends Object>(
      Expression<T> Function($$PersetujuanEntityTableAnnotationComposer a) f) {
    final $$PersetujuanEntityTableAnnotationComposer composer =
        $composerBuilder(
            composer: this,
            getCurrentColumn: (t) => t.id,
            referencedTable: $db.persetujuanEntity,
            getReferencedColumn: (t) => t.idTransaksi,
            builder: (joinBuilder,
                    {$addJoinBuilderToRootComposer,
                    $removeJoinBuilderFromRootComposer}) =>
                $$PersetujuanEntityTableAnnotationComposer(
                  $db: $db,
                  $table: $db.persetujuanEntity,
                  $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
                  joinBuilder: joinBuilder,
                  $removeJoinBuilderFromRootComposer:
                      $removeJoinBuilderFromRootComposer,
                ));
    return f(composer);
  }
}

class $$TransaksiEntityTableTableManager extends RootTableManager<
    _$Datasource,
    $TransaksiEntityTable,
    TransaksiEntityData,
    $$TransaksiEntityTableFilterComposer,
    $$TransaksiEntityTableOrderingComposer,
    $$TransaksiEntityTableAnnotationComposer,
    $$TransaksiEntityTableCreateCompanionBuilder,
    $$TransaksiEntityTableUpdateCompanionBuilder,
    (TransaksiEntityData, $$TransaksiEntityTableReferences),
    TransaksiEntityData,
    PrefetchHooks Function({bool persetujuanEntityRefs})> {
  $$TransaksiEntityTableTableManager(
      _$Datasource db, $TransaksiEntityTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$TransaksiEntityTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$TransaksiEntityTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$TransaksiEntityTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<int> id = const Value.absent(),
            Value<int> idGudang = const Value.absent(),
            Value<int> idBarang = const Value.absent(),
            Value<int> alamat = const Value.absent(),
            Value<TipeTransaksi> tipe = const Value.absent(),
            Value<DateTime?> createdAt = const Value.absent(),
          }) =>
              TransaksiEntityCompanion(
            id: id,
            idGudang: idGudang,
            idBarang: idBarang,
            alamat: alamat,
            tipe: tipe,
            createdAt: createdAt,
          ),
          createCompanionCallback: ({
            Value<int> id = const Value.absent(),
            required int idGudang,
            required int idBarang,
            required int alamat,
            required TipeTransaksi tipe,
            Value<DateTime?> createdAt = const Value.absent(),
          }) =>
              TransaksiEntityCompanion.insert(
            id: id,
            idGudang: idGudang,
            idBarang: idBarang,
            alamat: alamat,
            tipe: tipe,
            createdAt: createdAt,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (
                    e.readTable(table),
                    $$TransaksiEntityTableReferences(db, table, e)
                  ))
              .toList(),
          prefetchHooksCallback: ({persetujuanEntityRefs = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [
                if (persetujuanEntityRefs) db.persetujuanEntity
              ],
              addJoins: null,
              getPrefetchedDataCallback: (items) async {
                return [
                  if (persetujuanEntityRefs)
                    await $_getPrefetchedData(
                        currentTable: table,
                        referencedTable: $$TransaksiEntityTableReferences
                            ._persetujuanEntityRefsTable(db),
                        managerFromTypedResult: (p0) =>
                            $$TransaksiEntityTableReferences(db, table, p0)
                                .persetujuanEntityRefs,
                        referencedItemsForCurrentItem:
                            (item, referencedItems) => referencedItems
                                .where((e) => e.idTransaksi == item.id),
                        typedResults: items)
                ];
              },
            );
          },
        ));
}

typedef $$TransaksiEntityTableProcessedTableManager = ProcessedTableManager<
    _$Datasource,
    $TransaksiEntityTable,
    TransaksiEntityData,
    $$TransaksiEntityTableFilterComposer,
    $$TransaksiEntityTableOrderingComposer,
    $$TransaksiEntityTableAnnotationComposer,
    $$TransaksiEntityTableCreateCompanionBuilder,
    $$TransaksiEntityTableUpdateCompanionBuilder,
    (TransaksiEntityData, $$TransaksiEntityTableReferences),
    TransaksiEntityData,
    PrefetchHooks Function({bool persetujuanEntityRefs})>;
typedef $$PersetujuanEntityTableCreateCompanionBuilder
    = PersetujuanEntityCompanion Function({
  Value<int> id,
  required int idPegawai,
  required int idTransaksi,
  Value<DateTime?> createdAt,
});
typedef $$PersetujuanEntityTableUpdateCompanionBuilder
    = PersetujuanEntityCompanion Function({
  Value<int> id,
  Value<int> idPegawai,
  Value<int> idTransaksi,
  Value<DateTime?> createdAt,
});

final class $$PersetujuanEntityTableReferences extends BaseReferences<
    _$Datasource, $PersetujuanEntityTable, PersetujuanEntityData> {
  $$PersetujuanEntityTableReferences(
      super.$_db, super.$_table, super.$_typedResult);

  static $PegawaiEntityTable _idPegawaiTable(_$Datasource db) =>
      db.pegawaiEntity.createAlias($_aliasNameGenerator(
          db.persetujuanEntity.idPegawai, db.pegawaiEntity.id));

  $$PegawaiEntityTableProcessedTableManager get idPegawai {
    final manager = $$PegawaiEntityTableTableManager($_db, $_db.pegawaiEntity)
        .filter((f) => f.id($_item.idPegawai!));
    final item = $_typedResult.readTableOrNull(_idPegawaiTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: [item]));
  }

  static $TransaksiEntityTable _idTransaksiTable(_$Datasource db) =>
      db.transaksiEntity.createAlias($_aliasNameGenerator(
          db.persetujuanEntity.idTransaksi, db.transaksiEntity.id));

  $$TransaksiEntityTableProcessedTableManager get idTransaksi {
    final manager =
        $$TransaksiEntityTableTableManager($_db, $_db.transaksiEntity)
            .filter((f) => f.id($_item.idTransaksi!));
    final item = $_typedResult.readTableOrNull(_idTransaksiTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: [item]));
  }
}

class $$PersetujuanEntityTableFilterComposer
    extends Composer<_$Datasource, $PersetujuanEntityTable> {
  $$PersetujuanEntityTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get createdAt => $composableBuilder(
      column: $table.createdAt, builder: (column) => ColumnFilters(column));

  $$PegawaiEntityTableFilterComposer get idPegawai {
    final $$PegawaiEntityTableFilterComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.idPegawai,
        referencedTable: $db.pegawaiEntity,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$PegawaiEntityTableFilterComposer(
              $db: $db,
              $table: $db.pegawaiEntity,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }

  $$TransaksiEntityTableFilterComposer get idTransaksi {
    final $$TransaksiEntityTableFilterComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.idTransaksi,
        referencedTable: $db.transaksiEntity,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$TransaksiEntityTableFilterComposer(
              $db: $db,
              $table: $db.transaksiEntity,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }
}

class $$PersetujuanEntityTableOrderingComposer
    extends Composer<_$Datasource, $PersetujuanEntityTable> {
  $$PersetujuanEntityTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get createdAt => $composableBuilder(
      column: $table.createdAt, builder: (column) => ColumnOrderings(column));

  $$PegawaiEntityTableOrderingComposer get idPegawai {
    final $$PegawaiEntityTableOrderingComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.idPegawai,
        referencedTable: $db.pegawaiEntity,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$PegawaiEntityTableOrderingComposer(
              $db: $db,
              $table: $db.pegawaiEntity,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }

  $$TransaksiEntityTableOrderingComposer get idTransaksi {
    final $$TransaksiEntityTableOrderingComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.idTransaksi,
        referencedTable: $db.transaksiEntity,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$TransaksiEntityTableOrderingComposer(
              $db: $db,
              $table: $db.transaksiEntity,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }
}

class $$PersetujuanEntityTableAnnotationComposer
    extends Composer<_$Datasource, $PersetujuanEntityTable> {
  $$PersetujuanEntityTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<DateTime> get createdAt =>
      $composableBuilder(column: $table.createdAt, builder: (column) => column);

  $$PegawaiEntityTableAnnotationComposer get idPegawai {
    final $$PegawaiEntityTableAnnotationComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.idPegawai,
        referencedTable: $db.pegawaiEntity,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$PegawaiEntityTableAnnotationComposer(
              $db: $db,
              $table: $db.pegawaiEntity,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }

  $$TransaksiEntityTableAnnotationComposer get idTransaksi {
    final $$TransaksiEntityTableAnnotationComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.idTransaksi,
        referencedTable: $db.transaksiEntity,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$TransaksiEntityTableAnnotationComposer(
              $db: $db,
              $table: $db.transaksiEntity,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }
}

class $$PersetujuanEntityTableTableManager extends RootTableManager<
    _$Datasource,
    $PersetujuanEntityTable,
    PersetujuanEntityData,
    $$PersetujuanEntityTableFilterComposer,
    $$PersetujuanEntityTableOrderingComposer,
    $$PersetujuanEntityTableAnnotationComposer,
    $$PersetujuanEntityTableCreateCompanionBuilder,
    $$PersetujuanEntityTableUpdateCompanionBuilder,
    (PersetujuanEntityData, $$PersetujuanEntityTableReferences),
    PersetujuanEntityData,
    PrefetchHooks Function({bool idPegawai, bool idTransaksi})> {
  $$PersetujuanEntityTableTableManager(
      _$Datasource db, $PersetujuanEntityTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$PersetujuanEntityTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$PersetujuanEntityTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$PersetujuanEntityTableAnnotationComposer(
                  $db: db, $table: table),
          updateCompanionCallback: ({
            Value<int> id = const Value.absent(),
            Value<int> idPegawai = const Value.absent(),
            Value<int> idTransaksi = const Value.absent(),
            Value<DateTime?> createdAt = const Value.absent(),
          }) =>
              PersetujuanEntityCompanion(
            id: id,
            idPegawai: idPegawai,
            idTransaksi: idTransaksi,
            createdAt: createdAt,
          ),
          createCompanionCallback: ({
            Value<int> id = const Value.absent(),
            required int idPegawai,
            required int idTransaksi,
            Value<DateTime?> createdAt = const Value.absent(),
          }) =>
              PersetujuanEntityCompanion.insert(
            id: id,
            idPegawai: idPegawai,
            idTransaksi: idTransaksi,
            createdAt: createdAt,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (
                    e.readTable(table),
                    $$PersetujuanEntityTableReferences(db, table, e)
                  ))
              .toList(),
          prefetchHooksCallback: ({idPegawai = false, idTransaksi = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [],
              addJoins: <
                  T extends TableManagerState<
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic>>(state) {
                if (idPegawai) {
                  state = state.withJoin(
                    currentTable: table,
                    currentColumn: table.idPegawai,
                    referencedTable:
                        $$PersetujuanEntityTableReferences._idPegawaiTable(db),
                    referencedColumn: $$PersetujuanEntityTableReferences
                        ._idPegawaiTable(db)
                        .id,
                  ) as T;
                }
                if (idTransaksi) {
                  state = state.withJoin(
                    currentTable: table,
                    currentColumn: table.idTransaksi,
                    referencedTable: $$PersetujuanEntityTableReferences
                        ._idTransaksiTable(db),
                    referencedColumn: $$PersetujuanEntityTableReferences
                        ._idTransaksiTable(db)
                        .id,
                  ) as T;
                }

                return state;
              },
              getPrefetchedDataCallback: (items) async {
                return [];
              },
            );
          },
        ));
}

typedef $$PersetujuanEntityTableProcessedTableManager = ProcessedTableManager<
    _$Datasource,
    $PersetujuanEntityTable,
    PersetujuanEntityData,
    $$PersetujuanEntityTableFilterComposer,
    $$PersetujuanEntityTableOrderingComposer,
    $$PersetujuanEntityTableAnnotationComposer,
    $$PersetujuanEntityTableCreateCompanionBuilder,
    $$PersetujuanEntityTableUpdateCompanionBuilder,
    (PersetujuanEntityData, $$PersetujuanEntityTableReferences),
    PersetujuanEntityData,
    PrefetchHooks Function({bool idPegawai, bool idTransaksi})>;

class $DatasourceManager {
  final _$Datasource _db;
  $DatasourceManager(this._db);
  $$ClientEntityTableTableManager get clientEntity =>
      $$ClientEntityTableTableManager(_db, _db.clientEntity);
  $$DistributorEntityTableTableManager get distributorEntity =>
      $$DistributorEntityTableTableManager(_db, _db.distributorEntity);
  $$GudangEntityTableTableManager get gudangEntity =>
      $$GudangEntityTableTableManager(_db, _db.gudangEntity);
  $$PabrikEntityTableTableManager get pabrikEntity =>
      $$PabrikEntityTableTableManager(_db, _db.pabrikEntity);
  $$PegawaiEntityTableTableManager get pegawaiEntity =>
      $$PegawaiEntityTableTableManager(_db, _db.pegawaiEntity);
  $$SewaEntityTableTableManager get sewaEntity =>
      $$SewaEntityTableTableManager(_db, _db.sewaEntity);
  $$TagihanEntityTableTableManager get tagihanEntity =>
      $$TagihanEntityTableTableManager(_db, _db.tagihanEntity);
  $$PembayaranEntityTableTableManager get pembayaranEntity =>
      $$PembayaranEntityTableTableManager(_db, _db.pembayaranEntity);
  $$TransaksiEntityTableTableManager get transaksiEntity =>
      $$TransaksiEntityTableTableManager(_db, _db.transaksiEntity);
  $$PersetujuanEntityTableTableManager get persetujuanEntity =>
      $$PersetujuanEntityTableTableManager(_db, _db.persetujuanEntity);
}
