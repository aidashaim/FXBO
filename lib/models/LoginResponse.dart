class LoginResponse {
  final String id;

  LoginResponse({this.id});

  factory LoginResponse.fromJson(dynamic json) {
    return LoginResponse(id: json['id']);
  }
}