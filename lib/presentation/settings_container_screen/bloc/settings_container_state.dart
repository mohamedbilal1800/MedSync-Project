// ignore_for_file: must_be_immutable

part of 'settings_container_bloc.dart';

class SettingsContainerState extends Equatable {
  SettingsContainerState({this.settingsContainerModelObj});

  SettingsContainerModel? settingsContainerModelObj;

  @override
  List<Object?> get props => [
        settingsContainerModelObj,
      ];
  SettingsContainerState copyWith(
      {SettingsContainerModel? settingsContainerModelObj}) {
    return SettingsContainerState(
      settingsContainerModelObj:
          settingsContainerModelObj ?? this.settingsContainerModelObj,
    );
  }
}
