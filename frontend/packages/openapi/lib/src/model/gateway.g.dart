// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'gateway.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Gateway extends Gateway {
  @override
  final int? id;
  @override
  final String serialNumber;
  @override
  final String name;
  @override
  final String? ipv4;
  @override
  final BuiltList<Peripheral>? peripherals;

  factory _$Gateway([void Function(GatewayBuilder)? updates]) =>
      (new GatewayBuilder()..update(updates)).build();

  _$Gateway._(
      {this.id,
      required this.serialNumber,
      required this.name,
      this.ipv4,
      this.peripherals})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        serialNumber, 'Gateway', 'serialNumber');
    BuiltValueNullFieldError.checkNotNull(name, 'Gateway', 'name');
  }

  @override
  Gateway rebuild(void Function(GatewayBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GatewayBuilder toBuilder() => new GatewayBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gateway &&
        id == other.id &&
        serialNumber == other.serialNumber &&
        name == other.name &&
        ipv4 == other.ipv4 &&
        peripherals == other.peripherals;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc($jc(0, id.hashCode), serialNumber.hashCode), name.hashCode),
            ipv4.hashCode),
        peripherals.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Gateway')
          ..add('id', id)
          ..add('serialNumber', serialNumber)
          ..add('name', name)
          ..add('ipv4', ipv4)
          ..add('peripherals', peripherals))
        .toString();
  }
}

class GatewayBuilder implements Builder<Gateway, GatewayBuilder> {
  _$Gateway? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _serialNumber;
  String? get serialNumber => _$this._serialNumber;
  set serialNumber(String? serialNumber) => _$this._serialNumber = serialNumber;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _ipv4;
  String? get ipv4 => _$this._ipv4;
  set ipv4(String? ipv4) => _$this._ipv4 = ipv4;

  ListBuilder<Peripheral>? _peripherals;
  ListBuilder<Peripheral> get peripherals =>
      _$this._peripherals ??= new ListBuilder<Peripheral>();
  set peripherals(ListBuilder<Peripheral>? peripherals) =>
      _$this._peripherals = peripherals;

  GatewayBuilder() {
    Gateway._defaults(this);
  }

  GatewayBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _serialNumber = $v.serialNumber;
      _name = $v.name;
      _ipv4 = $v.ipv4;
      _peripherals = $v.peripherals?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gateway other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gateway;
  }

  @override
  void update(void Function(GatewayBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Gateway build() {
    _$Gateway _$result;
    try {
      _$result = _$v ??
          new _$Gateway._(
              id: id,
              serialNumber: BuiltValueNullFieldError.checkNotNull(
                  serialNumber, 'Gateway', 'serialNumber'),
              name: BuiltValueNullFieldError.checkNotNull(
                  name, 'Gateway', 'name'),
              ipv4: ipv4,
              peripherals: _peripherals?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'peripherals';
        _peripherals?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'Gateway', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
