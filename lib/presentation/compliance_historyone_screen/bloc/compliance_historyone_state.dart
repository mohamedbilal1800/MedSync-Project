// ignore_for_file: must_be_immutable

part of 'compliance_historyone_bloc.dart';

class ComplianceHistoryoneState extends Equatable {
  ComplianceHistoryoneState({this.complianceHistoryoneModelObj});

  ComplianceHistoryoneModel? complianceHistoryoneModelObj;

  @override
  List<Object?> get props => [
        complianceHistoryoneModelObj,
      ];
  ComplianceHistoryoneState copyWith(
      {ComplianceHistoryoneModel? complianceHistoryoneModelObj}) {
    return ComplianceHistoryoneState(
      complianceHistoryoneModelObj:
          complianceHistoryoneModelObj ?? this.complianceHistoryoneModelObj,
    );
  }
}
