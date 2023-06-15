// ignore_for_file: must_be_immutable

part of 'settings_container_bloc.dart';

@immutable
abstract class SettingsContainerEvent extends Equatable {}

class SettingsContainerInitialEvent extends SettingsContainerEvent {
  @override
  List<Object?> get props => [];
}
