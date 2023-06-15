// ignore_for_file: must_be_immutable

part of 'change_password_bloc.dart';

class ChangePasswordState extends Equatable {
  ChangePasswordState({
    this.newpasswordController,
    this.isShowPassword = true,
    this.changePasswordModelObj,
  });

  TextEditingController? newpasswordController;

  ChangePasswordModel? changePasswordModelObj;

  bool isShowPassword;

  @override
  List<Object?> get props => [
        newpasswordController,
        isShowPassword,
        changePasswordModelObj,
      ];
  ChangePasswordState copyWith({
    TextEditingController? newpasswordController,
    bool? isShowPassword,
    ChangePasswordModel? changePasswordModelObj,
  }) {
    return ChangePasswordState(
      newpasswordController:
          newpasswordController ?? this.newpasswordController,
      isShowPassword: isShowPassword ?? this.isShowPassword,
      changePasswordModelObj:
          changePasswordModelObj ?? this.changePasswordModelObj,
    );
  }
}
