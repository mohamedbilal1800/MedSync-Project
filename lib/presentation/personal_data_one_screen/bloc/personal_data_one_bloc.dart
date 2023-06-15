import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/list_item_model.dart';
import 'package:medsync_project/presentation/personal_data_one_screen/models/personal_data_one_model.dart';
part 'personal_data_one_event.dart';
part 'personal_data_one_state.dart';

class PersonalDataOneBloc
    extends Bloc<PersonalDataOneEvent, PersonalDataOneState> {
  PersonalDataOneBloc(PersonalDataOneState initialState) : super(initialState) {
    on<PersonalDataOneInitialEvent>(_onInitialize);
  }

  _onInitialize(
    PersonalDataOneInitialEvent event,
    Emitter<PersonalDataOneState> emit,
  ) async {
    emit(state.copyWith(
        personalDataOneModelObj: state.personalDataOneModelObj
            ?.copyWith(listItemList: fillListItemList())));
  }

  List<ListItemModel> fillListItemList() {
    return List.generate(2, (index) => ListItemModel());
  }
}
