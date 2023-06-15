import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:medsync_project/presentation/settings_container_screen/models/settings_container_model.dart';
part 'settings_container_event.dart';
part 'settings_container_state.dart';

class SettingsContainerBloc
    extends Bloc<SettingsContainerEvent, SettingsContainerState> {
  SettingsContainerBloc(SettingsContainerState initialState)
      : super(initialState) {
    on<SettingsContainerInitialEvent>(_onInitialize);
  }

  _onInitialize(
    SettingsContainerInitialEvent event,
    Emitter<SettingsContainerState> emit,
  ) async {}
}
