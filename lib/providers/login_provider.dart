import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';
import 'package:logger/logger.dart';
import 'package:workmate_app/servisers/get_chat_servicers.dart';
import 'package:workmate_app/servisers/login_servisers.dart';
import 'package:workmate_app/utils/other_utils/dialogs.dart';

class LogInProvider extends ChangeNotifier {
  LogInServicers logInServicers = LogInServicers();
  GetChatServicers getChatServicers = GetChatServicers();
  final TextEditingController _userName = TextEditingController();
  String _un = 'Tara Lowery';
  bool _isSendingReq = false;

  TextEditingController get controllUn => _userName;
  String get getUn => _un;
  bool get isloding => _isSendingReq;
  Future<void> checkUserName(BuildContext context) async {
    try {
      if (_userName.text.isNotEmpty) {
        setIsLoading(true);
        await logInServicers.checkUserName(_userName.text).then((value) {
          if (value!.error!) {
            setIsLoading(false);
            DialogBoxes.dialogBox(
                context, 'Error', value.message!, DialogType.ERROR);
          } else {
            setIsLoading(false);
            DialogBoxes.dialogBox(
                context, 'Success', value.loginstatus!, DialogType.SUCCES);
          }
        });
      } else {
        DialogBoxes.dialogBox(
            context, 'Error', 'Enter User Name', DialogType.ERROR);
      }
    } catch (e) {
      Logger().e(e);
    }
  }

  Future<void> checkUName(BuildContext context) async {
    try {
      await getChatServicers.getUName(_userName.text).then((value) {
        if (value!.error!) {
          setIsLoading(false);
          DialogBoxes.dialogBox(
              context, 'Error', value.message!, DialogType.ERROR);
        } else {
          setIsLoading(false);
          DialogBoxes.dialogBox(
              context, 'Success', value.loginstatus!, DialogType.SUCCES);
        }
      });
    } catch (e) {
      Logger().e(e);
    }
  }

  void setUName(String val) {
    _un = val;
    notifyListeners();
  }

  String uName() {
    return _un;
  }

  void setIsLoading(bool val) {
    _isSendingReq = val;
    notifyListeners();
  }
}
