// ignore_for_file: must_be_immutable

part of 'compliance_historytwo_bloc.dart';

class ComplianceHistorytwoState extends Equatable {
  ComplianceHistorytwoState({this.complianceHistorytwoModelObj});

  ComplianceHistorytwoModel? complianceHistorytwoModelObj;

  @override
  List<Object?> get props => [
        complianceHistorytwoModelObj,
      ];
  ComplianceHistorytwoState copyWith(
      {ComplianceHistorytwoModel? complianceHistorytwoModelObj}) {
    return ComplianceHistorytwoState(
      complianceHistorytwoModelObj:
          complianceHistorytwoModelObj ?? this.complianceHistorytwoModelObj,
    );
  }
}
