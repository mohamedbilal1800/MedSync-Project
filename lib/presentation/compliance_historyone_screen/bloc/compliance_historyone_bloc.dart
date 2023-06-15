import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/listsun_item_model.dart';
import 'package:medsync_project/presentation/compliance_historyone_screen/models/compliance_historyone_model.dart';
part 'compliance_historyone_event.dart';
part 'compliance_historyone_state.dart';

class ComplianceHistoryoneBloc
    extends Bloc<ComplianceHistoryoneEvent, ComplianceHistoryoneState> {
  ComplianceHistoryoneBloc(ComplianceHistoryoneState initialState)
      : super(initialState) {
    on<ComplianceHistoryoneInitialEvent>(_onInitialize);
  }

  _onInitialize(
    ComplianceHistoryoneInitialEvent event,
    Emitter<ComplianceHistoryoneState> emit,
  ) async {
    emit(state.copyWith(
        complianceHistoryoneModelObj: state.complianceHistoryoneModelObj
            ?.copyWith(listsunItemList: fillListsunItemList())));
  }

  List<ListsunItemModel> fillListsunItemList() {
    return List.generate(7, (index) => ListsunItemModel());
  }
}
