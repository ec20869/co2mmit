import 'api_manager.dart';

Future<dynamic> getResultsCall({
  String expr = '',
}) =>
    ApiManager.instance.makeApiCall(
      callName: 'getResults',
      apiUrl: 'https://api.mathjs.org/v4?expr=$expr',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnResponse: true,
    );
