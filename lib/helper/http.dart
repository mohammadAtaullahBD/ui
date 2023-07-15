import 'package:http/http.dart' as http;

// Function to send a GET request
Future<String?> getData(String uri) async {
  final response = await http.get(
      Uri.parse(uri)); // 'https://www.test.minimaxhealthcare.org/api/users'
  if (response.statusCode == 200) {
    return response.body;
  }
  return null;
  // throw response.statusCode;
}

// Function to send a POST request
Future<void> createData(String uri) async {
  final response = await http.post(
    Uri.parse(uri), // 'https://www.test.minimaxhealthcare.org/api/add-users'
    body: {
      'name': 'John Doe',
      'age': '30',
    },
  );

  if (response.statusCode == 201) {
    // Handle successful response
    print('Data created successfully');
  } else {
    // Handle error response
    print('Error: ${response.statusCode}');
  }
}

// Function to send a PUT request
Future<void> updateData(String uri) async {
  final response = await http.put(
    Uri.parse(
        uri), // 'https://www.test.minimaxhealthcare.org/api/update-users/1'
    body: {
      'name': 'Updated Name',
      'age': '35',
    },
  );

  if (response.statusCode == 200) {
    // Handle successful response
    print('Data updated successfully');
  } else {
    // Handle error response
    print('Error: ${response.statusCode}');
  }
}

// Function to send a DELETE request
Future<void> deleteData(String uri) async {
  final response = await http.delete(Uri.parse(
      uri)); //'https://www.test.minimaxhealthcare.org/apidelete-users/1'

  if (response.statusCode == 200) {
    // Handle successful response
    print('Data deleted successfully');
  } else {
    // Handle error response
    print('Error: ${response.statusCode}');
  }
}
