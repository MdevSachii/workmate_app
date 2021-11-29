import 'package:logger/logger.dart';
import 'package:workmate_app/helpers/api_helpers/custom_http.dart';
import 'package:workmate_app/helpers/api_helpers/global_config.dart';
import 'package:workmate_app/models/objects.dart';

class LogInServicers {
  Future<ResponseObject?> checkUserName(String username) async {
    try {
      final responce = await CustomHttp.getDio().post(
        GlobalData.BASE_URL + 'login_welcome',
        data: {"username": "username"},
      );
      Logger().i(responce.data);
      final ResponseObject responseObject =
          ResponseObject.fromJson(responce.data);
      if (responce.statusCode == 200) {
        return responseObject;
      } else {
        return ResponseObject(
          error: true,
          message: 'something went wrong',
          data: {},
        );
      }
    } catch (e) {
      Logger().e(e);
      return ResponseObject(
        error: true,
        message: 'something went wrong',
        data: {},
      );
    }
  }
}
