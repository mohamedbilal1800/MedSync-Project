// ignore_for_file: must_be_immutable

part of 'login_two_bloc.dart';

class LoginTwoState extends Equatable {
  LoginTwoState({
    this.emailoneController,
    this.passwordoneController,
    this.isShowPassword = true,
    this.loginTwoModelObj,
  });

  TextEditingController? emailoneController;

  TextEditingController? passwordoneController;

  LoginTwoModel? loginTwoModelObj;

  bool isShowPassword;

  @override
  List<Object?> get props => [
        emailoneController,
        passwordoneController,
        isShowPassword,
        loginTwoModelObj,
      ];
  LoginTwoState copyWith({
    TextEditingController? emailoneController,
    TextEditingController? passwordoneController,
    bool? isShowPassword,
    LoginTwoModel? loginTwoModelObj,
  }) {
    return LoginTwoState(
      emailoneController: emailoneController ?? this.emailoneController,
      passwordoneController:
          passwordoneController ?? this.passwordoneController,
      isShowPassword: isShowPassword ?? this.isShowPassword,
      loginTwoModelObj: loginTwoModelObj ?? this.loginTwoModelObj,
    );
  }
}
