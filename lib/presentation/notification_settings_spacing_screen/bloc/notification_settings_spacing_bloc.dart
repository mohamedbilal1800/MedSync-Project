import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:medsync_project/presentation/notification_settings_spacing_screen/models/notification_settings_spacing_model.dart';
part 'notification_settings_spacing_event.dart';
part 'notification_settings_spacing_state.dart';

class NotificationSettingsSpacingBloc extends Bloc<
    NotificationSettingsSpacingEvent, NotificationSettingsSpacingState> {
  NotificationSettingsSpacingBloc(NotificationSettingsSpacingState initialState)
      : super(initialState) {
    on<NotificationSettingsSpacingInitialEvent>(_onInitialize);
    on<ChangeSwitchEvent>(_changeSwitch);
  }

  _changeSwitch(
    ChangeSwitchEvent event,
    Emitter<NotificationSettingsSpacingState> emit,
  ) {
    emit(state.copyWith(isSelectedSwitch: event.value));
  }

  _onInitialize(
    NotificationSettingsSpacingInitialEvent event,
    Emitter<NotificationSettingsSpacingState> emit,
  ) async {
    emit(state.copyWith(isSelectedSwitch: false));
  }
}
