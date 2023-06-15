// ignore_for_file: must_be_immutable

part of 'med_finder_two_bloc.dart';

class MedFinderTwoState extends Equatable {
  MedFinderTwoState({
    this.descriptionController,
    this.medFinderTwoModelObj,
  });

  TextEditingController? descriptionController;

  MedFinderTwoModel? medFinderTwoModelObj;

  @override
  List<Object?> get props => [
        descriptionController,
        medFinderTwoModelObj,
      ];
  MedFinderTwoState copyWith({
    TextEditingController? descriptionController,
    MedFinderTwoModel? medFinderTwoModelObj,
  }) {
    return MedFinderTwoState(
      descriptionController:
          descriptionController ?? this.descriptionController,
      medFinderTwoModelObj: medFinderTwoModelObj ?? this.medFinderTwoModelObj,
    );
  }
}
