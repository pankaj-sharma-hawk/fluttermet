import '../../flutter_flow/flutter_flow_util.dart';

import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

class GetArtPieceCall {
  static Future<ApiCallResponse> call({
    String? objectID = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'Get Art Piece',
      apiUrl:
          'https://collectionapi.metmuseum.org/public/collection/v1/objects/${objectID}',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
    );
  }
}

class GetDepartmentCall {
  static Future<ApiCallResponse> call() {
    return ApiManager.instance.makeApiCall(
      callName: 'Get Department',
      apiUrl:
          'https://collectionapi.metmuseum.org/public/collection/v1/departments',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
    );
  }
}

class SearchArtCall {
  static Future<ApiCallResponse> call({
    String? q = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'Search Art',
      apiUrl: 'https://collectionapi.metmuseum.org/public/collection/v1/search',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'q': q,
      },
      returnBody: true,
    );
  }
}

class DeparmentHighLightCall {
  static Future<ApiCallResponse> call({
    int? departmentId,
    bool? isHighlight = true,
    String? q = '*',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'Deparment HighLight',
      apiUrl: 'https://collectionapi.metmuseum.org/public/collection/v1/search',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'departmentId': departmentId,
        'isHighlight': isHighlight,
        'q': q,
      },
      returnBody: true,
    );
  }
}
