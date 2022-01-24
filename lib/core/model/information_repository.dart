import 'dart:convert';
import 'package:crm/core/model/information_model.dart';
import 'package:http/http.dart' as http;

abstract class InformationRepository {
  Future<List<Informations>> getDataFromApi();
}

class SampleInformationRepository implements InformationRepository {
  final baseUrl = Uri.parse('https://jsonplaceholder.typicode.com/posts');

  @override
  Future<List<Informations>> getDataFromApi() async {
    final response = await http.get(baseUrl);
    return (jsonDecode(response.body) as List)
        .map((e) => Informations.fromJson(e))
        .toList();
  }
}
