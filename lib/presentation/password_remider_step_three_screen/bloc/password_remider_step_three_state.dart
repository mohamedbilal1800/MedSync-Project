// ignore_for_file: must_be_immutable

part of 'password_remider_step_three_bloc.dart';

class PasswordRemiderStepThreeState extends Equatable {
  PasswordRemiderStepThreeState({this.passwordRemiderStepThreeModelObj});

  PasswordRemiderStepThreeModel? passwordRemiderStepThreeModelObj;

  @override
  List<Object?> get props => [
        passwordRemiderStepThreeModelObj,
      ];
  PasswordRemiderStepThreeState copyWith(
      {PasswordRemiderStepThreeModel? passwordRemiderStepThreeModelObj}) {
    return PasswordRemiderStepThreeState(
      passwordRemiderStepThreeModelObj: passwordRemiderStepThreeModelObj ??
          this.passwordRemiderStepThreeModelObj,
    );
  }
}
