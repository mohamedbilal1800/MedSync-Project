// ignore_for_file: must_be_immutable

part of 'password_remider_step_two_bloc.dart';

@immutable
abstract class PasswordRemiderStepTwoEvent extends Equatable {}

class PasswordRemiderStepTwoInitialEvent extends PasswordRemiderStepTwoEvent {
  @override
  List<Object?> get props => [];
}

///Event for changing password visibility
class ChangePasswordVisibilityEvent extends PasswordRemiderStepTwoEvent {
  ChangePasswordVisibilityEvent({required this.value});

  bool value;

  @override
  List<Object?> get props => [
        value,
      ];
}
