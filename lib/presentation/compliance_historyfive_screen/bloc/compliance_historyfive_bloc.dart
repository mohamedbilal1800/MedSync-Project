import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/listparacetamol2_item_model.dart';
import 'package:medsync_project/presentation/compliance_historyfive_screen/models/compliance_historyfive_model.dart';
part 'compliance_historyfive_event.dart';
part 'compliance_historyfive_state.dart';

class ComplianceHistoryfiveBloc
    extends Bloc<ComplianceHistoryfiveEvent, ComplianceHistoryfiveState> {
  ComplianceHistoryfiveBloc(ComplianceHistoryfiveState initialState)
      : super(initialState) {
    on<ComplianceHistoryfiveInitialEvent>(_onInitialize);
  }

  _onInitialize(
    ComplianceHistoryfiveInitialEvent event,
    Emitter<ComplianceHistoryfiveState> emit,
  ) async {
    emit(state.copyWith(
        complianceHistoryfiveModelObj: state.complianceHistoryfiveModelObj
            ?.copyWith(
                listparacetamol2ItemList: fillListparacetamol2ItemList())));
  }

  List<Listparacetamol2ItemModel> fillListparacetamol2ItemList() {
    return List.generate(3, (index) => Listparacetamol2ItemModel());
  }
}
