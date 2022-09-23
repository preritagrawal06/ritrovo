import 'package:http/http.dart' as http;
import 'dart:convert';
class DatabaseService{
  String baseUrl="";
  getPosts() async{

    final response= await http.get(Uri.parse('$baseUrl/post'));
    final data = json.decode(response.body);
  }
}