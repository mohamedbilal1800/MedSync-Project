// ignore_for_file: must_be_immutable

part of 'notification_settings_bloc.dart';

class NotificationSettingsState extends Equatable {
  NotificationSettingsState({this.notificationSettingsModelObj});

  NotificationSettingsModel? notificationSettingsModelObj;

  @override
  List<Object?> get props => [
        notificationSettingsModelObj,
      ];
  NotificationSettingsState copyWith(
      {NotificationSettingsModel? notificationSettingsModelObj}) {
    return NotificationSettingsState(
      notificationSettingsModelObj:
          notificationSettingsModelObj ?? this.notificationSettingsModelObj,
    );
  }
}
