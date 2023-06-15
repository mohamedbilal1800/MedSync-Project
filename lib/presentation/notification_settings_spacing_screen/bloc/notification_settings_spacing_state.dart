// ignore_for_file: must_be_immutable

part of 'notification_settings_spacing_bloc.dart';

class NotificationSettingsSpacingState extends Equatable {
  NotificationSettingsSpacingState({
    this.isSelectedSwitch = false,
    this.notificationSettingsSpacingModelObj,
  });

  NotificationSettingsSpacingModel? notificationSettingsSpacingModelObj;

  bool isSelectedSwitch;

  @override
  List<Object?> get props => [
        isSelectedSwitch,
        notificationSettingsSpacingModelObj,
      ];
  NotificationSettingsSpacingState copyWith({
    bool? isSelectedSwitch,
    NotificationSettingsSpacingModel? notificationSettingsSpacingModelObj,
  }) {
    return NotificationSettingsSpacingState(
      isSelectedSwitch: isSelectedSwitch ?? this.isSelectedSwitch,
      notificationSettingsSpacingModelObj:
          notificationSettingsSpacingModelObj ??
              this.notificationSettingsSpacingModelObj,
    );
  }
}
