import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:medsync_project/presentation/med_finder_two_screen/models/med_finder_two_model.dart';
part 'med_finder_two_event.dart';
part 'med_finder_two_state.dart';

class MedFinderTwoBloc extends Bloc<MedFinderTwoEvent, MedFinderTwoState> {
  MedFinderTwoBloc(MedFinderTwoState initialState) : super(initialState) {
    on<MedFinderTwoInitialEvent>(_onInitialize);
  }

  _onInitialize(
    MedFinderTwoInitialEvent event,
    Emitter<MedFinderTwoState> emit,
  ) async {
    emit(state.copyWith(descriptionController: TextEditingController()));
  }
}
