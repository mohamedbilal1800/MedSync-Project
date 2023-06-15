// ignore_for_file: must_be_immutable

part of 'sign_up_bloc.dart';

class SignUpState extends Equatable {
  SignUpState({
    this.nameController,
    this.emailoneController,
    this.passwordoneController,
    this.isShowPassword = true,
    this.signUpModelObj,
  });

  TextEditingController? nameController;

  TextEditingController? emailoneController;

  TextEditingController? passwordoneController;

  SignUpModel? signUpModelObj;

  bool isShowPassword;

  @override
  List<Object?> get props => [
        nameController,
        emailoneController,
        passwordoneController,
        isShowPassword,
        signUpModelObj,
      ];
  SignUpState copyWith({
    TextEditingController? nameController,
    TextEditingController? emailoneController,
    TextEditingController? passwordoneController,
    bool? isShowPassword,
    SignUpModel? signUpModelObj,
  }) {
    return SignUpState(
      nameController: nameController ?? this.nameController,
      emailoneController: emailoneController ?? this.emailoneController,
      passwordoneController:
          passwordoneController ?? this.passwordoneController,
      isShowPassword: isShowPassword ?? this.isShowPassword,
      signUpModelObj: signUpModelObj ?? this.signUpModelObj,
    );
  }
}
