// ignore_for_file: must_be_immutable

part of 'change_password_success_bloc.dart';

@immutable
abstract class ChangePasswordSuccessEvent extends Equatable {}

class ChangePasswordSuccessInitialEvent extends ChangePasswordSuccessEvent {
  @override
  List<Object?> get props => [];
}
