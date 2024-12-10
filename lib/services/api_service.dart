import 'package:http/http.dart' as http;

class ApiService {
  final String base_url = "https://webtoon-crawler.nomadcoders.workers.dev";
  final String today = "today";

  void getTodaysToons() async {
    final url = Uri.parse("$base_url/$today");
    final response = await http.get(url);
    if (response.statusCode == 200) {
      print(response.body);
      return;
    } else {
      throw Error();
    }
  }
}
