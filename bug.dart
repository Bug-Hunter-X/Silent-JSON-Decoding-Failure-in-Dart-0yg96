```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      // Assuming JSON response
      final jsonData = jsonDecode(response.body);
      // Process jsonData here
    } else {
      // Handle non-200 status codes
      throw Exception('Request failed with status: ${response.statusCode}.');
    }
  } catch (e) {
    // Handle exceptions
    print('Error fetching data: $e');
    // Re-throw to allow higher-level handling
    rethrow; 
  }
}
```