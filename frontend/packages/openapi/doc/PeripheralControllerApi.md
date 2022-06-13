# openapi.api.PeripheralControllerApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *http://localhost:8080/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**add**](PeripheralControllerApi.md#add) | **POST** / | 
[**deletePeripheral**](PeripheralControllerApi.md#deleteperipheral) | **DELETE** /{id} | 
[**edit**](PeripheralControllerApi.md#edit) | **PUT** /{id} | 


# **add**
> JsonObject add(peripheralUpdateModel)



### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getPeripheralControllerApi();
final PeripheralUpdateModel peripheralUpdateModel = ; // PeripheralUpdateModel | 

try {
    final response = api.add(peripheralUpdateModel);
    print(response);
} catch on DioError (e) {
    print('Exception when calling PeripheralControllerApi->add: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **peripheralUpdateModel** | [**PeripheralUpdateModel**](PeripheralUpdateModel.md)|  | 

### Return type

[**JsonObject**](JsonObject.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deletePeripheral**
> JsonObject deletePeripheral(id)



### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getPeripheralControllerApi();
final int id = 789; // int | 

try {
    final response = api.deletePeripheral(id);
    print(response);
} catch on DioError (e) {
    print('Exception when calling PeripheralControllerApi->deletePeripheral: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**|  | 

### Return type

[**JsonObject**](JsonObject.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **edit**
> JsonObject edit(id, peripheral)



### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getPeripheralControllerApi();
final int id = 789; // int | 
final Peripheral peripheral = ; // Peripheral | 

try {
    final response = api.edit(id, peripheral);
    print(response);
} catch on DioError (e) {
    print('Exception when calling PeripheralControllerApi->edit: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**|  | 
 **peripheral** | [**Peripheral**](Peripheral.md)|  | 

### Return type

[**JsonObject**](JsonObject.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

