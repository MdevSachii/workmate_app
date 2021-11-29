part of 'objects.dart';

@JsonSerializable(explicitToJson: true)
class ResponseObject {
  final bool? error;
  final String? message;
  final String? loginstatus;
  final String? email;
  final String? token;
  final Object? data;

  ResponseObject({
    this.error,
    this.message,
    this.loginstatus,
    this.email,
    this.token,
    this.data,
  });

  factory ResponseObject.fromJson(Map<String, dynamic> json) =>
      _$ResponseObjectFromJson(json);

  Map<String, dynamic> toJson() => _$ResponseObjectToJson(this);
}
