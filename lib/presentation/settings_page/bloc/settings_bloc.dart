import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/settings_item_model.dart';
import 'package:medsync_project/presentation/settings_page/models/settings_model.dart';
part 'settings_event.dart';
part 'settings_state.dart';

class SettingsBloc extends Bloc<SettingsEvent, SettingsState> {
  SettingsBloc(SettingsState initialState) : super(initialState) {
    on<SettingsInitialEvent>(_onInitialize);
  }

  _onInitialize(
    SettingsInitialEvent event,
    Emitter<SettingsState> emit,
  ) async {
    emit(state.copyWith(
        settingsModelObj: state.settingsModelObj
            ?.copyWith(settingsItemList: fillSettingsItemList())));
  }

  List<SettingsItemModel> fillSettingsItemList() {
    return List.generate(5, (index) => SettingsItemModel());
  }
}
