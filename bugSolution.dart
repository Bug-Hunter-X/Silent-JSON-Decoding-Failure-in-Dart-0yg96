```dart
import 'dart:convert';
import 'package:http/http.dart' as http;

Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      try {
        final jsonData = jsonDecode(response.body);
        // Process jsonData here
      } on FormatException catch (e) {
        print('Invalid JSON format: $e');
        print('Response body: ${response.body}'); // Helpful debugging info
        rethrow; // Re-throw for higher level handling
      } catch (e) {
        print('Error decoding JSON: $e');
        print('Response body: ${response.body}'); // Helpful debugging info
        rethrow; // Re-throw for higher level handling
      }
    } else {
      throw Exception('Request failed with status: ${response.statusCode}.');
    }
  } catch (e) {
    print('Error fetching or processing data: $e');
    rethrow; 
  }
}
```