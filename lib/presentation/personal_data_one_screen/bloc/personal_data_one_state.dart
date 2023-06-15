// ignore_for_file: must_be_immutable

part of 'personal_data_one_bloc.dart';

class PersonalDataOneState extends Equatable {
  PersonalDataOneState({this.personalDataOneModelObj});

  PersonalDataOneModel? personalDataOneModelObj;

  @override
  List<Object?> get props => [
        personalDataOneModelObj,
      ];
  PersonalDataOneState copyWith(
      {PersonalDataOneModel? personalDataOneModelObj}) {
    return PersonalDataOneState(
      personalDataOneModelObj:
          personalDataOneModelObj ?? this.personalDataOneModelObj,
    );
  }
}
