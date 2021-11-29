import 'package:logger/logger.dart';
import 'package:workmate_app/helpers/api_helpers/custom_http.dart';
import 'package:workmate_app/helpers/api_helpers/global_config.dart';
import 'package:workmate_app/models/objects.dart';

class GetChatServicers {
  Future<ResponseObject?> getUName(String username) async {
    try {
      final responce = await CustomHttp.getDio().post(
        GlobalData.BASE_URL + 'get_chats',
        data: {"username": "username"},
      );
      Logger().i(responce.data);
      final ResponseObject responseObject =
          ResponseObject.fromJson(responce.data);

      return responseObject;
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
