// ignore_for_file: must_be_immutable

part of 'notification_settings_bloc.dart';

@immutable
abstract class NotificationSettingsEvent extends Equatable {}

class NotificationSettingsInitialEvent extends NotificationSettingsEvent {
  @override
  List<Object?> get props => [];
}
