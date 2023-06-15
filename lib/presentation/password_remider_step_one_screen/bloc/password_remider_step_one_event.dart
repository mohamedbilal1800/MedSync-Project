// ignore_for_file: must_be_immutable

part of 'password_remider_step_one_bloc.dart';

@immutable
abstract class PasswordRemiderStepOneEvent extends Equatable {}

class PasswordRemiderStepOneInitialEvent extends PasswordRemiderStepOneEvent {
  @override
  List<Object?> get props => [];
}
