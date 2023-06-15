// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import 'formscarousel_item_model.dart';
import 'dosage_item_model.dart';
import 'package:medsync_project/data/models/selectionPopupModel/selection_popup_model.dart';
import 'chips_item_model.dart';

/// This class defines the variables used in the [adding_supplementation_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class AddingSupplementationModel extends Equatable {
  AddingSupplementationModel({
    this.formscarouselItemList = const [],
    this.dosageItemList = const [],
    this.dropdownItemList = const [],
    this.dropdownItemList1 = const [],
    this.chipsItemList = const [],
  });

  List<FormscarouselItemModel> formscarouselItemList;

  List<DosageItemModel> dosageItemList;

  List<SelectionPopupModel> dropdownItemList;

  List<SelectionPopupModel> dropdownItemList1;

  List<ChipsItemModel> chipsItemList;

  AddingSupplementationModel copyWith({
    List<FormscarouselItemModel>? formscarouselItemList,
    List<DosageItemModel>? dosageItemList,
    List<SelectionPopupModel>? dropdownItemList,
    List<SelectionPopupModel>? dropdownItemList1,
    List<ChipsItemModel>? chipsItemList,
  }) {
    return AddingSupplementationModel(
      formscarouselItemList:
          formscarouselItemList ?? this.formscarouselItemList,
      dosageItemList: dosageItemList ?? this.dosageItemList,
      dropdownItemList: dropdownItemList ?? this.dropdownItemList,
      dropdownItemList1: dropdownItemList1 ?? this.dropdownItemList1,
      chipsItemList: chipsItemList ?? this.chipsItemList,
    );
  }

  @override
  List<Object?> get props => [
        formscarouselItemList,
        dosageItemList,
        dropdownItemList,
        dropdownItemList1,
        chipsItemList
      ];
}
