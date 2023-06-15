import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/listparacetamol3_item_model.dart';
import 'package:medsync_project/presentation/compliance_historysix_screen/models/compliance_historysix_model.dart';
part 'compliance_historysix_event.dart';
part 'compliance_historysix_state.dart';

class ComplianceHistorysixBloc
    extends Bloc<ComplianceHistorysixEvent, ComplianceHistorysixState> {
  ComplianceHistorysixBloc(ComplianceHistorysixState initialState)
      : super(initialState) {
    on<ComplianceHistorysixInitialEvent>(_onInitialize);
  }

  _onInitialize(
    ComplianceHistorysixInitialEvent event,
    Emitter<ComplianceHistorysixState> emit,
  ) async {
    emit(state.copyWith(
        complianceHistorysixModelObj: state.complianceHistorysixModelObj
            ?.copyWith(
                listparacetamol3ItemList: fillListparacetamol3ItemList())));
  }

  List<Listparacetamol3ItemModel> fillListparacetamol3ItemList() {
    return List.generate(3, (index) => Listparacetamol3ItemModel());
  }
}
