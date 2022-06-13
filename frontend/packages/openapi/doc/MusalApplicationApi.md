# openapi.api.MusalApplicationApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *http://localhost:8080/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**status**](MusalApplicationApi.md#status) | **GET** /status | 


# **status**
> String status()



### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getMusalApplicationApi();

try {
    final response = api.status();
    print(response);
} catch on DioError (e) {
    print('Exception when calling MusalApplicationApi->status: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

**String**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

