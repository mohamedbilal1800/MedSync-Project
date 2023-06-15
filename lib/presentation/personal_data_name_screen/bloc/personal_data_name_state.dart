// ignore_for_file: must_be_immutable

part of 'personal_data_name_bloc.dart';

class PersonalDataNameState extends Equatable {
  PersonalDataNameState({
    this.namevalueController,
    this.personalDataNameModelObj,
  });

  TextEditingController? namevalueController;

  PersonalDataNameModel? personalDataNameModelObj;

  @override
  List<Object?> get props => [
        namevalueController,
        personalDataNameModelObj,
      ];
  PersonalDataNameState copyWith({
    TextEditingController? namevalueController,
    PersonalDataNameModel? personalDataNameModelObj,
  }) {
    return PersonalDataNameState(
      namevalueController: namevalueController ?? this.namevalueController,
      personalDataNameModelObj:
          personalDataNameModelObj ?? this.personalDataNameModelObj,
    );
  }
}
