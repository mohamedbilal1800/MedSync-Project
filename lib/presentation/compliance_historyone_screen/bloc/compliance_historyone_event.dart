// ignore_for_file: must_be_immutable

part of 'compliance_historyone_bloc.dart';

@immutable
abstract class ComplianceHistoryoneEvent extends Equatable {}

class ComplianceHistoryoneInitialEvent extends ComplianceHistoryoneEvent {
  @override
  List<Object?> get props => [];
}
