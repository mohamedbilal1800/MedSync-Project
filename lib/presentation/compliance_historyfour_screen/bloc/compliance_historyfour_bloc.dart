import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/listparacetamol1_item_model.dart';
import 'package:medsync_project/presentation/compliance_historyfour_screen/models/compliance_historyfour_model.dart';
part 'compliance_historyfour_event.dart';
part 'compliance_historyfour_state.dart';

class ComplianceHistoryfourBloc
    extends Bloc<ComplianceHistoryfourEvent, ComplianceHistoryfourState> {
  ComplianceHistoryfourBloc(ComplianceHistoryfourState initialState)
      : super(initialState) {
    on<ComplianceHistoryfourInitialEvent>(_onInitialize);
  }

  _onInitialize(
    ComplianceHistoryfourInitialEvent event,
    Emitter<ComplianceHistoryfourState> emit,
  ) async {
    emit(state.copyWith(
        complianceHistoryfourModelObj: state.complianceHistoryfourModelObj
            ?.copyWith(
                listparacetamol1ItemList: fillListparacetamol1ItemList())));
  }

  List<Listparacetamol1ItemModel> fillListparacetamol1ItemList() {
    return List.generate(3, (index) => Listparacetamol1ItemModel());
  }
}
