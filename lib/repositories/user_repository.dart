import 'package:http/http.dart' as http;
import 'dart:convert';

class UserRepository {
  // Function to send a GET request
  Future<String?> getUsers() async {
    // Example: Fetch data from an API using the http package
    final response = await http
        .get(Uri.parse('https://www.test.minimaxhealthcare.org/api/users'));
    if (response.statusCode == 200) {
      return response.body;
    }
    return null;
  }

  Future<String> getUser(int id) async {
    // Example: Fetch data from an API using the http package
    final response = await http
        .get(Uri.parse('https://www.test.minimaxhealthcare.org/api/user/$id'));
    if (response.statusCode == 200) {
      return response.body;
    } else {
      throw Exception('Failed to fetch data');
    }
  }

// Function to send a POST request
  Future<void> createUser(Map user) async {
    final response = await http.post(
      Uri.parse('https://www.test.minimaxhealthcare.org/api/add-users'),
      headers: {'Content-Type': 'application/json'},
      body: jsonEncode({
        "name": "Rifat",
        "number": "1234567",
        "status": "1",
        "email": "rifat001@gamil.com",
        "password": "kafdamil122"
      }),
      // {
      //       "id": 1,
      //       "name": "Ataullah",
      //       "number": "1234567",
      //       "password": "kafdamil122"
      //       "status": "1",
      //       "email": "Ataullah@gamil.com",
      // }
    );

    if (response.statusCode == 200) {
      // Handle successful response
      print('Data created successfully');
    } else {
      // Handle error response
      print('Error: ${response.statusCode}');
    }
  }

// Function to send a PUT request
  Future<void> updateData() async {
    final response = await http.put(
      Uri.parse('https://www.test.minimaxhealthcare.org/api/update-users/1'),
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
  Future<void> deleteData(int id) async {
    final response = await http.delete(
        Uri.parse('https://www.test.minimaxhealthcare.org/apidelete-users/$id'));

    if (response.statusCode == 200) {
      // Handle successful response
      print('Data deleted successfully');
    } else {
      // Handle error response
      print('Error: ${response.statusCode}');
    }
  }
}
