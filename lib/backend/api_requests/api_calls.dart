import 'api_manager.dart';

Future<dynamic> getResultsCall({
  String social = '0',
  String video = '0',
  String gaming = '0',
  String audio = '0',
  String email = '0',
  String internet = '0',
}) =>
    ApiManager.instance.makeApiCall(
      callName: 'get results',
      apiUrl:
          'http://api.mathjs.org/v4/?expr=$social%2B$video%2B$gaming%2B$audio%2B$email%2B$internet%2B',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnResponse: true,
    );
