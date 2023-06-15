// ignore_for_file: must_be_immutable

part of 'side_effects_checkertwo_bloc.dart';

@immutable
abstract class SideEffectsCheckertwoEvent extends Equatable {}

class SideEffectsCheckertwoInitialEvent extends SideEffectsCheckertwoEvent {
  @override
  List<Object?> get props => [];
}
