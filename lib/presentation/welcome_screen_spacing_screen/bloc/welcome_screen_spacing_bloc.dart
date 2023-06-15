import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:medsync_project/presentation/welcome_screen_spacing_screen/models/welcome_screen_spacing_model.dart';
part 'welcome_screen_spacing_event.dart';
part 'welcome_screen_spacing_state.dart';

class WelcomeScreenSpacingBloc
    extends Bloc<WelcomeScreenSpacingEvent, WelcomeScreenSpacingState> {
  WelcomeScreenSpacingBloc(WelcomeScreenSpacingState initialState)
      : super(initialState) {
    on<WelcomeScreenSpacingInitialEvent>(_onInitialize);
  }

  _onInitialize(
    WelcomeScreenSpacingInitialEvent event,
    Emitter<WelcomeScreenSpacingState> emit,
  ) async {}
}
