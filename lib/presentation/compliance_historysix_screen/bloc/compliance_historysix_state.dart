// ignore_for_file: must_be_immutable

part of 'compliance_historysix_bloc.dart';

class ComplianceHistorysixState extends Equatable {
  ComplianceHistorysixState({this.complianceHistorysixModelObj});

  ComplianceHistorysixModel? complianceHistorysixModelObj;

  @override
  List<Object?> get props => [
        complianceHistorysixModelObj,
      ];
  ComplianceHistorysixState copyWith(
      {ComplianceHistorysixModel? complianceHistorysixModelObj}) {
    return ComplianceHistorysixState(
      complianceHistorysixModelObj:
          complianceHistorysixModelObj ?? this.complianceHistorysixModelObj,
    );
  }
}
