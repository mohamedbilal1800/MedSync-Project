// ignore_for_file: must_be_immutable

part of 'password_remider_step_three_bloc.dart';

@immutable
abstract class PasswordRemiderStepThreeEvent extends Equatable {}

class PasswordRemiderStepThreeInitialEvent
    extends PasswordRemiderStepThreeEvent {
  @override
  List<Object?> get props => [];
}
