import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/formscarousel_item_model.dart';
import '../models/dosage_item_model.dart';
import '../models/chips_item_model.dart';
import 'package:medsync_project/presentation/adding_supplementation_screen/models/adding_supplementation_model.dart';
part 'adding_supplementation_event.dart';
part 'adding_supplementation_state.dart';

class AddingSupplementationBloc
    extends Bloc<AddingSupplementationEvent, AddingSupplementationState> {
  AddingSupplementationBloc(AddingSupplementationState initialState)
      : super(initialState) {
    on<AddingSupplementationInitialEvent>(_onInitialize);
    on<ChangeDropDownEvent>(_changeDropDown);
    on<ChangeDropDown1Event>(_changeDropDown1);
  }

  _changeDropDown(
    ChangeDropDownEvent event,
    Emitter<AddingSupplementationState> emit,
  ) {
    emit(state.copyWith(
      selectedDropDownValue: event.value,
    ));
  }

  _changeDropDown1(
    ChangeDropDown1Event event,
    Emitter<AddingSupplementationState> emit,
  ) {
    emit(state.copyWith(
      selectedDropDownValue1: event.value,
    ));
  }

  List<FormscarouselItemModel> fillFormscarouselItemList() {
    return List.generate(5, (index) => FormscarouselItemModel());
  }

  List<DosageItemModel> fillDosageItemList() {
    return List.generate(6, (index) => DosageItemModel());
  }

  List<SelectionPopupModel> fillDropdownItemList() {
    return [
      SelectionPopupModel(
        id: 1,
        title: "Item One",
        isSelected: true,
      ),
      SelectionPopupModel(
        id: 2,
        title: "Item Two",
      ),
      SelectionPopupModel(
        id: 3,
        title: "Item Three",
      )
    ];
  }

  List<SelectionPopupModel> fillDropdownItemList1() {
    return [
      SelectionPopupModel(
        id: 1,
        title: "Item One",
        isSelected: true,
      ),
      SelectionPopupModel(
        id: 2,
        title: "Item Two",
      ),
      SelectionPopupModel(
        id: 3,
        title: "Item Three",
      )
    ];
  }

  List<ChipsItemModel> fillChipsItemList() {
    return List.generate(3, (index) => ChipsItemModel());
  }

  _onInitialize(
    AddingSupplementationInitialEvent event,
    Emitter<AddingSupplementationState> emit,
  ) async {
    emit(state.copyWith(
      timeController: TextEditingController(),
    ));
    emit(state.copyWith(
        addingSupplementationModelObj:
            state.addingSupplementationModelObj?.copyWith(
      formscarouselItemList: fillFormscarouselItemList(),
      dosageItemList: fillDosageItemList(),
      dropdownItemList: fillDropdownItemList(),
      dropdownItemList1: fillDropdownItemList1(),
      chipsItemList: fillChipsItemList(),
    )));
  }
}
