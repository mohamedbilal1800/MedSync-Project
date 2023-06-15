// ignore_for_file: must_be_immutable

part of 'compliance_historyfour_bloc.dart';

class ComplianceHistoryfourState extends Equatable {
  ComplianceHistoryfourState({this.complianceHistoryfourModelObj});

  ComplianceHistoryfourModel? complianceHistoryfourModelObj;

  @override
  List<Object?> get props => [
        complianceHistoryfourModelObj,
      ];
  ComplianceHistoryfourState copyWith(
      {ComplianceHistoryfourModel? complianceHistoryfourModelObj}) {
    return ComplianceHistoryfourState(
      complianceHistoryfourModelObj:
          complianceHistoryfourModelObj ?? this.complianceHistoryfourModelObj,
    );
  }
}
