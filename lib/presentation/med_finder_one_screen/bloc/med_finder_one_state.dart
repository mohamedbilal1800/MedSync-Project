// ignore_for_file: must_be_immutable

part of 'med_finder_one_bloc.dart';

class MedFinderOneState extends Equatable {
  MedFinderOneState({this.medFinderOneModelObj});

  MedFinderOneModel? medFinderOneModelObj;

  @override
  List<Object?> get props => [
        medFinderOneModelObj,
      ];
  MedFinderOneState copyWith({MedFinderOneModel? medFinderOneModelObj}) {
    return MedFinderOneState(
      medFinderOneModelObj: medFinderOneModelObj ?? this.medFinderOneModelObj,
    );
  }
}
