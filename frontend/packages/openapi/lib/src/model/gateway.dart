//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'package:built_collection/built_collection.dart';
import 'package:openapi/src/model/peripheral.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'gateway.g.dart';

/// Master devices that control multiple peripheral devices
///
/// Properties:
/// * [id] 
/// * [serialNumber] 
/// * [name] 
/// * [ipv4] - Must be a valid IPv4 address
/// * [peripherals] 
abstract class Gateway implements Built<Gateway, GatewayBuilder> {
    @BuiltValueField(wireName: r'id')
    int? get id;

    @BuiltValueField(wireName: r'serialNumber')
    String get serialNumber;

    @BuiltValueField(wireName: r'name')
    String get name;

    /// Must be a valid IPv4 address
    @BuiltValueField(wireName: r'ipv4')
    String? get ipv4;

    @BuiltValueField(wireName: r'peripherals')
    BuiltList<Peripheral>? get peripherals;

    Gateway._();

    @BuiltValueHook(initializeBuilder: true)
    static void _defaults(GatewayBuilder b) => b;

    factory Gateway([void updates(GatewayBuilder b)]) = _$Gateway;

    @BuiltValueSerializer(custom: true)
    static Serializer<Gateway> get serializer => _$GatewaySerializer();
}

class _$GatewaySerializer implements StructuredSerializer<Gateway> {
    @override
    final Iterable<Type> types = const [Gateway, _$Gateway];

    @override
    final String wireName = r'Gateway';

    @override
    Iterable<Object?> serialize(Serializers serializers, Gateway object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object?>[];
        if (object.id != null) {
            result
                ..add(r'id')
                ..add(serializers.serialize(object.id,
                    specifiedType: const FullType(int)));
        }
        result
            ..add(r'serialNumber')
            ..add(serializers.serialize(object.serialNumber,
                specifiedType: const FullType(String)));
        result
            ..add(r'name')
            ..add(serializers.serialize(object.name,
                specifiedType: const FullType(String)));
        if (object.ipv4 != null) {
            result
                ..add(r'ipv4')
                ..add(serializers.serialize(object.ipv4,
                    specifiedType: const FullType(String)));
        }
        if (object.peripherals != null) {
            result
                ..add(r'peripherals')
                ..add(serializers.serialize(object.peripherals,
                    specifiedType: const FullType(BuiltList, [FullType(Peripheral)])));
        }
        return result;
    }

    @override
    Gateway deserialize(Serializers serializers, Iterable<Object?> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = GatewayBuilder();

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
                case r'serialNumber':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.serialNumber = valueDes;
                    break;
                case r'name':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.name = valueDes;
                    break;
                case r'ipv4':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.ipv4 = valueDes;
                    break;
                case r'peripherals':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(BuiltList, [FullType(Peripheral)])) as BuiltList<Peripheral>;
                    result.peripherals.replace(valueDes);
                    break;
            }
        }
        return result.build();
    }
}

