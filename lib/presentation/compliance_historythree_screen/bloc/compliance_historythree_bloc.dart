import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/listparacetamol_item_model.dart';
import 'package:medsync_project/presentation/compliance_historythree_screen/models/compliance_historythree_model.dart';
part 'compliance_historythree_event.dart';
part 'compliance_historythree_state.dart';

class ComplianceHistorythreeBloc
    extends Bloc<ComplianceHistorythreeEvent, ComplianceHistorythreeState> {
  ComplianceHistorythreeBloc(ComplianceHistorythreeState initialState)
      : super(initialState) {
    on<ComplianceHistorythreeInitialEvent>(_onInitialize);
  }

  _onInitialize(
    ComplianceHistorythreeInitialEvent event,
    Emitter<ComplianceHistorythreeState> emit,
  ) async {
    emit(state.copyWith(
        complianceHistorythreeModelObj: state.complianceHistorythreeModelObj
            ?.copyWith(
                listparacetamolItemList: fillListparacetamolItemList())));
  }

  List<ListparacetamolItemModel> fillListparacetamolItemList() {
    return List.generate(3, (index) => ListparacetamolItemModel());
  }
}
