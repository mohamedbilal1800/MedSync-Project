// ignore_for_file: must_be_immutable

part of 'personal_data_e_mail_bloc.dart';

class PersonalDataEMailState extends Equatable {
  PersonalDataEMailState({
    this.emailoneController,
    this.personalDataEMailModelObj,
  });

  TextEditingController? emailoneController;

  PersonalDataEMailModel? personalDataEMailModelObj;

  @override
  List<Object?> get props => [
        emailoneController,
        personalDataEMailModelObj,
      ];
  PersonalDataEMailState copyWith({
    TextEditingController? emailoneController,
    PersonalDataEMailModel? personalDataEMailModelObj,
  }) {
    return PersonalDataEMailState(
      emailoneController: emailoneController ?? this.emailoneController,
      personalDataEMailModelObj:
          personalDataEMailModelObj ?? this.personalDataEMailModelObj,
    );
  }
}
