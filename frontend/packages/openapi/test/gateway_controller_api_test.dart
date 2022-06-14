import 'package:test/test.dart';
import 'package:openapi/openapi.dart';


/// tests for GatewayControllerApi
void main() {
  final instance = Openapi().getGatewayControllerApi();

  group(GatewayControllerApi, () {
    //Future<JsonObject> add1(Gateway gateway) async
    test('test add1', () async {
      // TODO
    });

    //Future<SliceGateway> browse(Pageable pageable) async
    test('test browse', () async {
      // TODO
    });

    //Future<BuiltList<Peripheral>> browse1(int id) async
    test('test browse1', () async {
      // TODO
    });

    //Future delete(int id) async
    test('test delete', () async {
      // TODO
    });

    //Future<JsonObject> edit1(int id, Gateway gateway) async
    test('test edit1', () async {
      // TODO
    });

    //Future<Gateway> read(int id) async
    test('test read', () async {
      // TODO
    });

  });
}
