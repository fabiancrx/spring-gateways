//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_import

import 'package:built_collection/built_collection.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';
import 'package:built_value/iso_8601_date_time_serializer.dart';
import 'package:openapi/src/date_serializer.dart';
import 'package:openapi/src/model/date.dart';

import 'package:openapi/src/model/gateway.dart';
import 'package:openapi/src/model/pageable.dart';
import 'package:openapi/src/model/pageable_object.dart';
import 'package:openapi/src/model/peripheral.dart';
import 'package:openapi/src/model/peripheral_update_model.dart';
import 'package:openapi/src/model/slice_gateway.dart';
import 'package:openapi/src/model/sort.dart';

part 'serializers.g.dart';

@SerializersFor([
  Gateway,
  Pageable,
  PageableObject,
  Peripheral,
  PeripheralUpdateModel,
  SliceGateway,
  Sort,
])
Serializers serializers = (_$serializers.toBuilder()
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(Peripheral)]),
        () => ListBuilder<Peripheral>(),
      )
      ..add(const DateSerializer())
      ..add(Iso8601DateTimeSerializer()))
    .build();

Serializers standardSerializers =
    (serializers.toBuilder()..addPlugin(StandardJsonPlugin())).build();
