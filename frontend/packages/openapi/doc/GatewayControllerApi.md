# openapi.api.GatewayControllerApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *http://localhost:8080/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**add1**](GatewayControllerApi.md#add1) | **POST** /gateways | 
[**browse**](GatewayControllerApi.md#browse) | **GET** /gateways | 
[**browse1**](GatewayControllerApi.md#browse1) | **GET** /gateways/{id}/peripherals | 
[**delete**](GatewayControllerApi.md#delete) | **DELETE** /gateways/{id} | 
[**edit1**](GatewayControllerApi.md#edit1) | **PUT** /gateways/{id} | 
[**read**](GatewayControllerApi.md#read) | **GET** /gateways/{id} | 


# **add1**
> JsonObject add1(gateway)



### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getGatewayControllerApi();
final Gateway gateway = ; // Gateway | 

try {
    final response = api.add1(gateway);
    print(response);
} catch on DioError (e) {
    print('Exception when calling GatewayControllerApi->add1: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **gateway** | [**Gateway**](Gateway.md)|  | 

### Return type

[**JsonObject**](JsonObject.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **browse**
> SliceGateway browse(pageable)



### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getGatewayControllerApi();
final Pageable pageable = ; // Pageable | 

try {
    final response = api.browse(pageable);
    print(response);
} catch on DioError (e) {
    print('Exception when calling GatewayControllerApi->browse: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pageable** | [**Pageable**](.md)|  | 

### Return type

[**SliceGateway**](SliceGateway.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **browse1**
> BuiltList<Peripheral> browse1(id)



### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getGatewayControllerApi();
final int id = 789; // int | 

try {
    final response = api.browse1(id);
    print(response);
} catch on DioError (e) {
    print('Exception when calling GatewayControllerApi->browse1: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**|  | 

### Return type

[**BuiltList&lt;Peripheral&gt;**](Peripheral.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **delete**
> delete(id)



### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getGatewayControllerApi();
final int id = 789; // int | 

try {
    api.delete(id);
} catch on DioError (e) {
    print('Exception when calling GatewayControllerApi->delete: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**|  | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **edit1**
> JsonObject edit1(id, gateway)



### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getGatewayControllerApi();
final int id = 789; // int | 
final Gateway gateway = ; // Gateway | 

try {
    final response = api.edit1(id, gateway);
    print(response);
} catch on DioError (e) {
    print('Exception when calling GatewayControllerApi->edit1: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**|  | 
 **gateway** | [**Gateway**](Gateway.md)|  | 

### Return type

[**JsonObject**](JsonObject.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **read**
> Gateway read(id)



### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getGatewayControllerApi();
final int id = 789; // int | 

try {
    final response = api.read(id);
    print(response);
} catch on DioError (e) {
    print('Exception when calling GatewayControllerApi->read: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**|  | 

### Return type

[**Gateway**](Gateway.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

