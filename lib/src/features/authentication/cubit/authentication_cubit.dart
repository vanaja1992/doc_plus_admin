import 'package:bloc/bloc.dart';
import 'package:doc_plus_admin/src/core/constants/app_string.dart';
import 'package:doc_plus_admin/src/features/authentication/cubit/authentication_repository.dart';
import 'package:equatable/equatable.dart';

import '../../../core/helpers/authentication_helpers.dart';
import '../../../core/models/response_model.dart';
import '../model/user_model.dart';

part 'authentication_state.dart';

class AuthenticationCubit extends Cubit<AuthenticationState> {
  AuthenticationRepository authenticationRepository;
  AuthenticationCubit(this.authenticationRepository)
      : super(AuthenticationInitial());

  loginUser(String email, String password) async {
    emit(AuthenticationLoading());
    ResponseModel responseModel =
        await authenticationRepository.loginUser(email, password);
    if (responseModel.status) {
      UserModel userModel = UserModel.fromJson(responseModel.data);
      AuthenticationHelper().setUserId(userModel.id ?? "");
      AuthenticationHelper().setUserToken(responseModel.token ?? "");
      emit(AuthenticationSuccess(userModel));
    } else {
      emit(AuthenticationError(responseModel.error ?? AppStrings.errorLoading));
    }
  }
}
