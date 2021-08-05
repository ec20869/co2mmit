import 'api_manager.dart';

Future<dynamic> chartsCall() => ApiManager.instance.makeApiCall(
      callName: 'charts',
      apiDomain: 'quickchart.io',
      apiEndpoint: 'chart/render/zm-75a9e81c-de2d-4904-9413-22e37de6381d',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnResponse: true,
    );
