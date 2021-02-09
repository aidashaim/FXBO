class RegistrationResponse {
  final String id;

  RegistrationResponse({
    this.id,
  });

  factory RegistrationResponse.fromJson(dynamic json) {
    return RegistrationResponse(
      id: json['id'].toString(),
    );
  }
}
