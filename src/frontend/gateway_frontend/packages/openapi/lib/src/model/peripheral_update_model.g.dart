// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'peripheral_update_model.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const PeripheralUpdateModelStatusEnum
    _$peripheralUpdateModelStatusEnum_OFFLINE =
    const PeripheralUpdateModelStatusEnum._('OFFLINE');
const PeripheralUpdateModelStatusEnum _$peripheralUpdateModelStatusEnum_ONLINE =
    const PeripheralUpdateModelStatusEnum._('ONLINE');

PeripheralUpdateModelStatusEnum _$peripheralUpdateModelStatusEnumValueOf(
    String name) {
  switch (name) {
    case 'OFFLINE':
      return _$peripheralUpdateModelStatusEnum_OFFLINE;
    case 'ONLINE':
      return _$peripheralUpdateModelStatusEnum_ONLINE;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<PeripheralUpdateModelStatusEnum>
    _$peripheralUpdateModelStatusEnumValues =
    new BuiltSet<PeripheralUpdateModelStatusEnum>(const <
        PeripheralUpdateModelStatusEnum>[
  _$peripheralUpdateModelStatusEnum_OFFLINE,
  _$peripheralUpdateModelStatusEnum_ONLINE,
]);

Serializer<PeripheralUpdateModelStatusEnum>
    _$peripheralUpdateModelStatusEnumSerializer =
    new _$PeripheralUpdateModelStatusEnumSerializer();

class _$PeripheralUpdateModelStatusEnumSerializer
    implements PrimitiveSerializer<PeripheralUpdateModelStatusEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'OFFLINE': 'OFFLINE',
    'ONLINE': 'ONLINE',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'OFFLINE': 'OFFLINE',
    'ONLINE': 'ONLINE',
  };

  @override
  final Iterable<Type> types = const <Type>[PeripheralUpdateModelStatusEnum];
  @override
  final String wireName = 'PeripheralUpdateModelStatusEnum';

  @override
  Object serialize(
          Serializers serializers, PeripheralUpdateModelStatusEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  PeripheralUpdateModelStatusEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      PeripheralUpdateModelStatusEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$PeripheralUpdateModel extends PeripheralUpdateModel {
  @override
  final int? id;
  @override
  final String vendor;
  @override
  final PeripheralUpdateModelStatusEnum? status;
  @override
  final DateTime? created;
  @override
  final int? gatewayId;

  factory _$PeripheralUpdateModel(
          [void Function(PeripheralUpdateModelBuilder)? updates]) =>
      (new PeripheralUpdateModelBuilder()..update(updates)).build();

  _$PeripheralUpdateModel._(
      {this.id,
      required this.vendor,
      this.status,
      this.created,
      this.gatewayId})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        vendor, 'PeripheralUpdateModel', 'vendor');
  }

  @override
  PeripheralUpdateModel rebuild(
          void Function(PeripheralUpdateModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PeripheralUpdateModelBuilder toBuilder() =>
      new PeripheralUpdateModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PeripheralUpdateModel &&
        id == other.id &&
        vendor == other.vendor &&
        status == other.status &&
        created == other.created &&
        gatewayId == other.gatewayId;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc($jc(0, id.hashCode), vendor.hashCode), status.hashCode),
            created.hashCode),
        gatewayId.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('PeripheralUpdateModel')
          ..add('id', id)
          ..add('vendor', vendor)
          ..add('status', status)
          ..add('created', created)
          ..add('gatewayId', gatewayId))
        .toString();
  }
}

class PeripheralUpdateModelBuilder
    implements Builder<PeripheralUpdateModel, PeripheralUpdateModelBuilder> {
  _$PeripheralUpdateModel? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _vendor;
  String? get vendor => _$this._vendor;
  set vendor(String? vendor) => _$this._vendor = vendor;

  PeripheralUpdateModelStatusEnum? _status;
  PeripheralUpdateModelStatusEnum? get status => _$this._status;
  set status(PeripheralUpdateModelStatusEnum? status) =>
      _$this._status = status;

  DateTime? _created;
  DateTime? get created => _$this._created;
  set created(DateTime? created) => _$this._created = created;

  int? _gatewayId;
  int? get gatewayId => _$this._gatewayId;
  set gatewayId(int? gatewayId) => _$this._gatewayId = gatewayId;

  PeripheralUpdateModelBuilder() {
    PeripheralUpdateModel._defaults(this);
  }

  PeripheralUpdateModelBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _vendor = $v.vendor;
      _status = $v.status;
      _created = $v.created;
      _gatewayId = $v.gatewayId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PeripheralUpdateModel other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$PeripheralUpdateModel;
  }

  @override
  void update(void Function(PeripheralUpdateModelBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$PeripheralUpdateModel build() {
    final _$result = _$v ??
        new _$PeripheralUpdateModel._(
            id: id,
            vendor: BuiltValueNullFieldError.checkNotNull(
                vendor, 'PeripheralUpdateModel', 'vendor'),
            status: status,
            created: created,
            gatewayId: gatewayId);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
