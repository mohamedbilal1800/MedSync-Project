// ignore_for_file: must_be_immutable

part of 'login_two_bloc.dart';

@immutable
abstract class LoginTwoEvent extends Equatable {}

class LoginTwoInitialEvent extends LoginTwoEvent {
  @override
  List<Object?> get props => [];
}

///Event for changing password visibility
class ChangePasswordVisibilityEvent extends LoginTwoEvent {
  ChangePasswordVisibilityEvent({required this.value});

  bool value;

  @override
  List<Object?> get props => [
        value,
      ];
}
