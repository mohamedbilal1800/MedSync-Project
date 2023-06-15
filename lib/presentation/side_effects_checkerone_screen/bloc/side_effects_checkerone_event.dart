// ignore_for_file: must_be_immutable

part of 'side_effects_checkerone_bloc.dart';

@immutable
abstract class SideEffectsCheckeroneEvent extends Equatable {}

class SideEffectsCheckeroneInitialEvent extends SideEffectsCheckeroneEvent {
  @override
  List<Object?> get props => [];
}
