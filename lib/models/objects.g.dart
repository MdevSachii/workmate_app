part of objects;

ResponseObject _$ResponseObjectFromJson(Map<String, dynamic> json) {
  return ResponseObject(
    error: json['error'] as bool?,
    message: json['message'] as String?,
    loginstatus: json['loginstatus'] as String?,
    email: json['email'] as String?,
    token: json['token'] as String?,
    data: json['data'],
  );
}

Map<String, dynamic> _$ResponseObjectToJson(ResponseObject instance) =>
    <String, dynamic>{
      'error': instance.error,
      'message': instance.message,
      'loginstatus': instance.loginstatus,
      'email': instance.email,
      'token': instance.token,
      'data': instance.data,
    };
