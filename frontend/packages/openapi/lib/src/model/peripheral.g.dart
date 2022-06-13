// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'peripheral.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const PeripheralStatusEnum _$peripheralStatusEnum_OFFLINE =
    const PeripheralStatusEnum._('OFFLINE');
const PeripheralStatusEnum _$peripheralStatusEnum_ONLINE =
    const PeripheralStatusEnum._('ONLINE');

PeripheralStatusEnum _$peripheralStatusEnumValueOf(String name) {
  switch (name) {
    case 'OFFLINE':
      return _$peripheralStatusEnum_OFFLINE;
    case 'ONLINE':
      return _$peripheralStatusEnum_ONLINE;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<PeripheralStatusEnum> _$peripheralStatusEnumValues =
    new BuiltSet<PeripheralStatusEnum>(const <PeripheralStatusEnum>[
  _$peripheralStatusEnum_OFFLINE,
  _$peripheralStatusEnum_ONLINE,
]);

Serializer<PeripheralStatusEnum> _$peripheralStatusEnumSerializer =
    new _$PeripheralStatusEnumSerializer();

class _$PeripheralStatusEnumSerializer
    implements PrimitiveSerializer<PeripheralStatusEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'OFFLINE': 'OFFLINE',
    'ONLINE': 'ONLINE',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'OFFLINE': 'OFFLINE',
    'ONLINE': 'ONLINE',
  };

  @override
  final Iterable<Type> types = const <Type>[PeripheralStatusEnum];
  @override
  final String wireName = 'PeripheralStatusEnum';

  @override
  Object serialize(Serializers serializers, PeripheralStatusEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  PeripheralStatusEnum deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      PeripheralStatusEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$Peripheral extends Peripheral {
  @override
  final int? id;
  @override
  final String vendor;
  @override
  final PeripheralStatusEnum? status;
  @override
  final DateTime? created;

  factory _$Peripheral([void Function(PeripheralBuilder)? updates]) =>
      (new PeripheralBuilder()..update(updates)).build();

  _$Peripheral._({this.id, required this.vendor, this.status, this.created})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(vendor, 'Peripheral', 'vendor');
  }

  @override
  Peripheral rebuild(void Function(PeripheralBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PeripheralBuilder toBuilder() => new PeripheralBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Peripheral &&
        id == other.id &&
        vendor == other.vendor &&
        status == other.status &&
        created == other.created;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, id.hashCode), vendor.hashCode), status.hashCode),
        created.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Peripheral')
          ..add('id', id)
          ..add('vendor', vendor)
          ..add('status', status)
          ..add('created', created))
        .toString();
  }
}

class PeripheralBuilder implements Builder<Peripheral, PeripheralBuilder> {
  _$Peripheral? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _vendor;
  String? get vendor => _$this._vendor;
  set vendor(String? vendor) => _$this._vendor = vendor;

  PeripheralStatusEnum? _status;
  PeripheralStatusEnum? get status => _$this._status;
  set status(PeripheralStatusEnum? status) => _$this._status = status;

  DateTime? _created;
  DateTime? get created => _$this._created;
  set created(DateTime? created) => _$this._created = created;

  PeripheralBuilder() {
    Peripheral._defaults(this);
  }

  PeripheralBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _vendor = $v.vendor;
      _status = $v.status;
      _created = $v.created;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Peripheral other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Peripheral;
  }

  @override
  void update(void Function(PeripheralBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Peripheral build() {
    final _$result = _$v ??
        new _$Peripheral._(
            id: id,
            vendor: BuiltValueNullFieldError.checkNotNull(
                vendor, 'Peripheral', 'vendor'),
            status: status,
            created: created);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
