// ignore_for_file: must_be_immutable

part of 'login_one_bloc.dart';

class LoginOneState extends Equatable {
  LoginOneState({
    this.emailoneController,
    this.passwordoneController,
    this.isShowPassword = true,
    this.loginOneModelObj,
  });

  TextEditingController? emailoneController;

  TextEditingController? passwordoneController;

  LoginOneModel? loginOneModelObj;

  bool isShowPassword;

  @override
  List<Object?> get props => [
        emailoneController,
        passwordoneController,
        isShowPassword,
        loginOneModelObj,
      ];
  LoginOneState copyWith({
    TextEditingController? emailoneController,
    TextEditingController? passwordoneController,
    bool? isShowPassword,
    LoginOneModel? loginOneModelObj,
  }) {
    return LoginOneState(
      emailoneController: emailoneController ?? this.emailoneController,
      passwordoneController:
          passwordoneController ?? this.passwordoneController,
      isShowPassword: isShowPassword ?? this.isShowPassword,
      loginOneModelObj: loginOneModelObj ?? this.loginOneModelObj,
    );
  }
}
