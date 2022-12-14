

import 'package:doc_plus_admin/src/core/storage/storage_keys.dart';

import '../storage/storage_service.dart';

class AuthenticationHelper {
  Future<String?> getUserId() async {
    return await StorageService.readData(StorageKeys.userId.name);
  }
  Future<void> setUserId(String userId) async{
    StorageService.writeData(StorageKeys.userId.name, userId);
  }

  Future <String?>getUserTokenId()async {
    return await StorageService.readData(StorageKeys.userTokenId.name);
  }
  Future<void> setUserToken(String userToken) async{
    StorageService.writeData(StorageKeys.userTokenId.name, userToken);
  }
}
