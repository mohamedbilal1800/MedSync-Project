// ignore_for_file: must_be_immutable

part of 'notification_settings_spacing_bloc.dart';

@immutable
abstract class NotificationSettingsSpacingEvent extends Equatable {}

class NotificationSettingsSpacingInitialEvent
    extends NotificationSettingsSpacingEvent {
  @override
  List<Object?> get props => [];
}

///Event for changing switch
class ChangeSwitchEvent extends NotificationSettingsSpacingEvent {
  ChangeSwitchEvent({required this.value});

  bool value;

  @override
  List<Object?> get props => [
        value,
      ];
}
