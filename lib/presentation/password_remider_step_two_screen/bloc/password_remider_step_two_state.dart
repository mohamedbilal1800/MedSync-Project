// ignore_for_file: must_be_immutable

part of 'password_remider_step_two_bloc.dart';

class PasswordRemiderStepTwoState extends Equatable {
  PasswordRemiderStepTwoState({
    this.newpasswordController,
    this.isShowPassword = true,
    this.passwordRemiderStepTwoModelObj,
  });

  TextEditingController? newpasswordController;

  PasswordRemiderStepTwoModel? passwordRemiderStepTwoModelObj;

  bool isShowPassword;

  @override
  List<Object?> get props => [
        newpasswordController,
        isShowPassword,
        passwordRemiderStepTwoModelObj,
      ];
  PasswordRemiderStepTwoState copyWith({
    TextEditingController? newpasswordController,
    bool? isShowPassword,
    PasswordRemiderStepTwoModel? passwordRemiderStepTwoModelObj,
  }) {
    return PasswordRemiderStepTwoState(
      newpasswordController:
          newpasswordController ?? this.newpasswordController,
      isShowPassword: isShowPassword ?? this.isShowPassword,
      passwordRemiderStepTwoModelObj:
          passwordRemiderStepTwoModelObj ?? this.passwordRemiderStepTwoModelObj,
    );
  }
}
