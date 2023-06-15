import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:medsync_project/presentation/med_finder_one_screen/models/med_finder_one_model.dart';
part 'med_finder_one_event.dart';
part 'med_finder_one_state.dart';

class MedFinderOneBloc extends Bloc<MedFinderOneEvent, MedFinderOneState> {
  MedFinderOneBloc(MedFinderOneState initialState) : super(initialState) {
    on<MedFinderOneInitialEvent>(_onInitialize);
  }

  _onInitialize(
    MedFinderOneInitialEvent event,
    Emitter<MedFinderOneState> emit,
  ) async {}
}
