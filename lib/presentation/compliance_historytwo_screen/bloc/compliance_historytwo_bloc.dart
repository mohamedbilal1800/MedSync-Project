import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/listcut_item_model.dart';
import 'package:medsync_project/presentation/compliance_historytwo_screen/models/compliance_historytwo_model.dart';
part 'compliance_historytwo_event.dart';
part 'compliance_historytwo_state.dart';

class ComplianceHistorytwoBloc
    extends Bloc<ComplianceHistorytwoEvent, ComplianceHistorytwoState> {
  ComplianceHistorytwoBloc(ComplianceHistorytwoState initialState)
      : super(initialState) {
    on<ComplianceHistorytwoInitialEvent>(_onInitialize);
  }

  _onInitialize(
    ComplianceHistorytwoInitialEvent event,
    Emitter<ComplianceHistorytwoState> emit,
  ) async {
    emit(state.copyWith(
        complianceHistorytwoModelObj: state.complianceHistorytwoModelObj
            ?.copyWith(listcutItemList: fillListcutItemList())));
  }

  List<ListcutItemModel> fillListcutItemList() {
    return List.generate(4, (index) => ListcutItemModel());
  }
}
