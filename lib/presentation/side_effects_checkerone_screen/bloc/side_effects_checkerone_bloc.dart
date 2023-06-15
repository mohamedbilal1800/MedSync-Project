import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:medsync_project/presentation/side_effects_checkerone_screen/models/side_effects_checkerone_model.dart';
part 'side_effects_checkerone_event.dart';
part 'side_effects_checkerone_state.dart';

class SideEffectsCheckeroneBloc
    extends Bloc<SideEffectsCheckeroneEvent, SideEffectsCheckeroneState> {
  SideEffectsCheckeroneBloc(SideEffectsCheckeroneState initialState)
      : super(initialState) {
    on<SideEffectsCheckeroneInitialEvent>(_onInitialize);
  }

  _onInitialize(
    SideEffectsCheckeroneInitialEvent event,
    Emitter<SideEffectsCheckeroneState> emit,
  ) async {
    emit(state.copyWith(
        medicineinputController: TextEditingController(),
        typeinputController: TextEditingController()));
  }
}
