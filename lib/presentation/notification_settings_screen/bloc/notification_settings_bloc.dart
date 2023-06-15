import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:medsync_project/presentation/notification_settings_screen/models/notification_settings_model.dart';
part 'notification_settings_event.dart';
part 'notification_settings_state.dart';

class NotificationSettingsBloc
    extends Bloc<NotificationSettingsEvent, NotificationSettingsState> {
  NotificationSettingsBloc(NotificationSettingsState initialState)
      : super(initialState) {
    on<NotificationSettingsInitialEvent>(_onInitialize);
  }

  _onInitialize(
    NotificationSettingsInitialEvent event,
    Emitter<NotificationSettingsState> emit,
  ) async {}
}
