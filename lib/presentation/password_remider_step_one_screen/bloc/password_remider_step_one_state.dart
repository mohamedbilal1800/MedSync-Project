// ignore_for_file: must_be_immutable

part of 'password_remider_step_one_bloc.dart';

class PasswordRemiderStepOneState extends Equatable {
  PasswordRemiderStepOneState({
    this.emailoneController,
    this.passwordRemiderStepOneModelObj,
  });

  TextEditingController? emailoneController;

  PasswordRemiderStepOneModel? passwordRemiderStepOneModelObj;

  @override
  List<Object?> get props => [
        emailoneController,
        passwordRemiderStepOneModelObj,
      ];
  PasswordRemiderStepOneState copyWith({
    TextEditingController? emailoneController,
    PasswordRemiderStepOneModel? passwordRemiderStepOneModelObj,
  }) {
    return PasswordRemiderStepOneState(
      emailoneController: emailoneController ?? this.emailoneController,
      passwordRemiderStepOneModelObj:
          passwordRemiderStepOneModelObj ?? this.passwordRemiderStepOneModelObj,
    );
  }
}
