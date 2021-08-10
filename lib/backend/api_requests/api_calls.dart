import 'api_manager.dart';

Future<dynamic> getResultsCall({
  int results,
}) =>
    ApiManager.instance.makeApiCall(
      callName: 'get results',
      apiDomain: 'api.mathjs.org',
      apiEndpoint: 'v4/?expr=100',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'results': results,
      },
      returnResponse: true,
    );
