import 'package:http/http.dart' as http;

// import 'posts_bloc_test.mocks.dart';

void main() async {
  final Map<String, String> requestHeaders = {
    'Content-type': 'application/json',
    'Accept': 'application/json',
    'app-id': '628ab4219cc9917b1952123e',
    'Authorization': 'TOKEN KEY'
  };
  final response = await http.get(
      Uri.parse('https://dummyapi.io/data/v1/user/60d0fe4f5311236168a109f6'),
      headers: requestHeaders);

  print('response>>> ${response.body}');
}
