// ignore_for_file: must_be_immutable

part of 'change_password_success_bloc.dart';

class ChangePasswordSuccessState extends Equatable {
  ChangePasswordSuccessState({this.changePasswordSuccessModelObj});

  ChangePasswordSuccessModel? changePasswordSuccessModelObj;

  @override
  List<Object?> get props => [
        changePasswordSuccessModelObj,
      ];
  ChangePasswordSuccessState copyWith(
      {ChangePasswordSuccessModel? changePasswordSuccessModelObj}) {
    return ChangePasswordSuccessState(
      changePasswordSuccessModelObj:
          changePasswordSuccessModelObj ?? this.changePasswordSuccessModelObj,
    );
  }
}
