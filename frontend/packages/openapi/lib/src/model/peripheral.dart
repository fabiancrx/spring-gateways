//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'peripheral.g.dart';

/// Peripheral
///
/// Properties:
/// * [id] 
/// * [vendor] 
/// * [status] 
/// * [created] 
abstract class Peripheral implements Built<Peripheral, PeripheralBuilder> {
    @BuiltValueField(wireName: r'id')
    int? get id;

    @BuiltValueField(wireName: r'vendor')
    String get vendor;

    @BuiltValueField(wireName: r'status')
    PeripheralStatusEnum? get status;
    // enum statusEnum {  OFFLINE,  ONLINE,  };

    @BuiltValueField(wireName: r'created')
    DateTime? get created;

    Peripheral._();

    @BuiltValueHook(initializeBuilder: true)
    static void _defaults(PeripheralBuilder b) => b;

    factory Peripheral([void updates(PeripheralBuilder b)]) = _$Peripheral;

    @BuiltValueSerializer(custom: true)
    static Serializer<Peripheral> get serializer => _$PeripheralSerializer();
}

class _$PeripheralSerializer implements StructuredSerializer<Peripheral> {
    @override
    final Iterable<Type> types = const [Peripheral, _$Peripheral];

    @override
    final String wireName = r'Peripheral';

    @override
    Iterable<Object?> serialize(Serializers serializers, Peripheral object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object?>[];
        if (object.id != null) {
            result
                ..add(r'id')
                ..add(serializers.serialize(object.id,
                    specifiedType: const FullType(int)));
        }
        result
            ..add(r'vendor')
            ..add(serializers.serialize(object.vendor,
                specifiedType: const FullType(String)));
        if (object.status != null) {
            result
                ..add(r'status')
                ..add(serializers.serialize(object.status,
                    specifiedType: const FullType(PeripheralStatusEnum)));
        }
        if (object.created != null) {
            result
                ..add(r'created')
                ..add(serializers.serialize(object.created,
                    specifiedType: const FullType(DateTime)));
        }
        return result;
    }

    @override
    Peripheral deserialize(Serializers serializers, Iterable<Object?> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = PeripheralBuilder();

        final iterator = serialized.iterator;
        while (iterator.moveNext()) {
            final key = iterator.current as String;
            iterator.moveNext();
            final Object? value = iterator.current;
            
            switch (key) {
                case r'id':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(int)) as int;
                    result.id = valueDes;
                    break;
                case r'vendor':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.vendor = valueDes;
                    break;
                case r'status':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(PeripheralStatusEnum)) as PeripheralStatusEnum;
                    result.status = valueDes;
                    break;
                case r'created':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(DateTime)) as DateTime;
                    result.created = valueDes;
                    break;
            }
        }
        return result.build();
    }
}

class PeripheralStatusEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'OFFLINE')
  static const PeripheralStatusEnum OFFLINE = _$peripheralStatusEnum_OFFLINE;
  @BuiltValueEnumConst(wireName: r'ONLINE')
  static const PeripheralStatusEnum ONLINE = _$peripheralStatusEnum_ONLINE;

  static Serializer<PeripheralStatusEnum> get serializer => _$peripheralStatusEnumSerializer;

  const PeripheralStatusEnum._(String name): super(name);

  static BuiltSet<PeripheralStatusEnum> get values => _$peripheralStatusEnumValues;
  static PeripheralStatusEnum valueOf(String name) => _$peripheralStatusEnumValueOf(name);
}

