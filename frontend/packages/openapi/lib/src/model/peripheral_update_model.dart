//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'peripheral_update_model.g.dart';

/// PeripheralUpdateModel
///
/// Properties:
/// * [id] 
/// * [vendor] 
/// * [status] 
/// * [created] 
/// * [gatewayId] 
abstract class PeripheralUpdateModel implements Built<PeripheralUpdateModel, PeripheralUpdateModelBuilder> {
    @BuiltValueField(wireName: r'id')
    int? get id;

    @BuiltValueField(wireName: r'vendor')
    String get vendor;

    @BuiltValueField(wireName: r'status')
    PeripheralUpdateModelStatusEnum? get status;
    // enum statusEnum {  OFFLINE,  ONLINE,  };

    @BuiltValueField(wireName: r'created')
    DateTime? get created;

    @BuiltValueField(wireName: r'gatewayId')
    int? get gatewayId;

    PeripheralUpdateModel._();

    @BuiltValueHook(initializeBuilder: true)
    static void _defaults(PeripheralUpdateModelBuilder b) => b;

    factory PeripheralUpdateModel([void updates(PeripheralUpdateModelBuilder b)]) = _$PeripheralUpdateModel;

    @BuiltValueSerializer(custom: true)
    static Serializer<PeripheralUpdateModel> get serializer => _$PeripheralUpdateModelSerializer();
}

class _$PeripheralUpdateModelSerializer implements StructuredSerializer<PeripheralUpdateModel> {
    @override
    final Iterable<Type> types = const [PeripheralUpdateModel, _$PeripheralUpdateModel];

    @override
    final String wireName = r'PeripheralUpdateModel';

    @override
    Iterable<Object?> serialize(Serializers serializers, PeripheralUpdateModel object,
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
                    specifiedType: const FullType(PeripheralUpdateModelStatusEnum)));
        }
        if (object.created != null) {
            result
                ..add(r'created')
                ..add(serializers.serialize(object.created,
                    specifiedType: const FullType(DateTime)));
        }
        if (object.gatewayId != null) {
            result
                ..add(r'gatewayId')
                ..add(serializers.serialize(object.gatewayId,
                    specifiedType: const FullType(int)));
        }
        return result;
    }

    @override
    PeripheralUpdateModel deserialize(Serializers serializers, Iterable<Object?> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = PeripheralUpdateModelBuilder();

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
                        specifiedType: const FullType(PeripheralUpdateModelStatusEnum)) as PeripheralUpdateModelStatusEnum;
                    result.status = valueDes;
                    break;
                case r'created':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(DateTime)) as DateTime;
                    result.created = valueDes;
                    break;
                case r'gatewayId':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(int)) as int;
                    result.gatewayId = valueDes;
                    break;
            }
        }
        return result.build();
    }
}

class PeripheralUpdateModelStatusEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'OFFLINE')
  static const PeripheralUpdateModelStatusEnum OFFLINE = _$peripheralUpdateModelStatusEnum_OFFLINE;
  @BuiltValueEnumConst(wireName: r'ONLINE')
  static const PeripheralUpdateModelStatusEnum ONLINE = _$peripheralUpdateModelStatusEnum_ONLINE;

  static Serializer<PeripheralUpdateModelStatusEnum> get serializer => _$peripheralUpdateModelStatusEnumSerializer;

  const PeripheralUpdateModelStatusEnum._(String name): super(name);

  static BuiltSet<PeripheralUpdateModelStatusEnum> get values => _$peripheralUpdateModelStatusEnumValues;
  static PeripheralUpdateModelStatusEnum valueOf(String name) => _$peripheralUpdateModelStatusEnumValueOf(name);
}

