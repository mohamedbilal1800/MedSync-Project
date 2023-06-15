// ignore_for_file: must_be_immutable

part of 'compliance_historyfive_bloc.dart';

class ComplianceHistoryfiveState extends Equatable {
  ComplianceHistoryfiveState({this.complianceHistoryfiveModelObj});

  ComplianceHistoryfiveModel? complianceHistoryfiveModelObj;

  @override
  List<Object?> get props => [
        complianceHistoryfiveModelObj,
      ];
  ComplianceHistoryfiveState copyWith(
      {ComplianceHistoryfiveModel? complianceHistoryfiveModelObj}) {
    return ComplianceHistoryfiveState(
      complianceHistoryfiveModelObj:
          complianceHistoryfiveModelObj ?? this.complianceHistoryfiveModelObj,
    );
  }
}
