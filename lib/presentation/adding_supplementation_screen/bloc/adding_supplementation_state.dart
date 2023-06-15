// ignore_for_file: must_be_immutable

part of 'adding_supplementation_bloc.dart';

class AddingSupplementationState extends Equatable {
  AddingSupplementationState({
    this.timeController,
    this.selectedDropDownValue,
    this.selectedDropDownValue1,
    this.addingSupplementationModelObj,
  });

  TextEditingController? timeController;

  SelectionPopupModel? selectedDropDownValue;

  SelectionPopupModel? selectedDropDownValue1;

  AddingSupplementationModel? addingSupplementationModelObj;

  @override
  List<Object?> get props => [
        timeController,
        selectedDropDownValue,
        selectedDropDownValue1,
        addingSupplementationModelObj,
      ];
  AddingSupplementationState copyWith({
    TextEditingController? timeController,
    SelectionPopupModel? selectedDropDownValue,
    SelectionPopupModel? selectedDropDownValue1,
    AddingSupplementationModel? addingSupplementationModelObj,
  }) {
    return AddingSupplementationState(
      timeController: timeController ?? this.timeController,
      selectedDropDownValue:
          selectedDropDownValue ?? this.selectedDropDownValue,
      selectedDropDownValue1:
          selectedDropDownValue1 ?? this.selectedDropDownValue1,
      addingSupplementationModelObj:
          addingSupplementationModelObj ?? this.addingSupplementationModelObj,
    );
  }
}
