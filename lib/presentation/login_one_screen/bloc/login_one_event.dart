// ignore_for_file: must_be_immutable

part of 'login_one_bloc.dart';

@immutable
abstract class LoginOneEvent extends Equatable {}

class LoginOneInitialEvent extends LoginOneEvent {
  @override
  List<Object?> get props => [];
}

///Event for changing password visibility
class ChangePasswordVisibilityEvent extends LoginOneEvent {
  ChangePasswordVisibilityEvent({required this.value});

  bool value;

  @override
  List<Object?> get props => [
        value,
      ];
}
