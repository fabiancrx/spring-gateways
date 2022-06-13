import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:openapi/openapi.dart';

final apiProvider = Provider<Openapi>((ref) {
  return Openapi();
});
