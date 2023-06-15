import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:medsync_project/presentation/side_effects_checkertwo_screen/models/side_effects_checkertwo_model.dart';
part 'side_effects_checkertwo_event.dart';
part 'side_effects_checkertwo_state.dart';

class SideEffectsCheckertwoBloc
    extends Bloc<SideEffectsCheckertwoEvent, SideEffectsCheckertwoState> {
  SideEffectsCheckertwoBloc(SideEffectsCheckertwoState initialState)
      : super(initialState) {
    on<SideEffectsCheckertwoInitialEvent>(_onInitialize);
  }

  _onInitialize(
    SideEffectsCheckertwoInitialEvent event,
    Emitter<SideEffectsCheckertwoState> emit,
  ) async {
    emit(state.copyWith(resultsshownController: TextEditingController()));
  }
}
