// ignore_for_file: must_be_immutable

part of 'compliance_historythree_bloc.dart';

class ComplianceHistorythreeState extends Equatable {
  ComplianceHistorythreeState({this.complianceHistorythreeModelObj});

  ComplianceHistorythreeModel? complianceHistorythreeModelObj;

  @override
  List<Object?> get props => [
        complianceHistorythreeModelObj,
      ];
  ComplianceHistorythreeState copyWith(
      {ComplianceHistorythreeModel? complianceHistorythreeModelObj}) {
    return ComplianceHistorythreeState(
      complianceHistorythreeModelObj:
          complianceHistorythreeModelObj ?? this.complianceHistorythreeModelObj,
    );
  }
}
