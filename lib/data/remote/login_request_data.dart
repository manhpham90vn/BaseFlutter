import 'package:dio/dio.dart';
import '../../networking/request_data.dart';

class LoginRequestData implements RequestData {
  LoginRequestData({required this.email, required this.password});

  final String email;
  final String password;

  @override
  get body => {"email": email, "password": password};

  @override
  Map<String, dynamic> get header =>
      {Headers.acceptHeader: Headers.jsonContentType};

  @override
  String get path => "login";

  @override
  Map<String, dynamic>? get queryParameters => null;
}
