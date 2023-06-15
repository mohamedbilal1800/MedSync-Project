// ignore_for_file: must_be_immutable

part of 'profile_edit_form_bloc.dart';

class ProfileEditFormState extends Equatable {
  ProfileEditFormState({
    this.fullnameController,
    this.emailoneController,
    this.languageController,
    this.phoneoneController,
    this.dateofbirthoneController,
    this.ageoneController,
    this.profileEditFormModelObj,
  });

  TextEditingController? fullnameController;

  TextEditingController? emailoneController;

  TextEditingController? languageController;

  TextEditingController? phoneoneController;

  TextEditingController? dateofbirthoneController;

  TextEditingController? ageoneController;

  ProfileEditFormModel? profileEditFormModelObj;

  @override
  List<Object?> get props => [
        fullnameController,
        emailoneController,
        languageController,
        phoneoneController,
        dateofbirthoneController,
        ageoneController,
        profileEditFormModelObj,
      ];
  ProfileEditFormState copyWith({
    TextEditingController? fullnameController,
    TextEditingController? emailoneController,
    TextEditingController? languageController,
    TextEditingController? phoneoneController,
    TextEditingController? dateofbirthoneController,
    TextEditingController? ageoneController,
    ProfileEditFormModel? profileEditFormModelObj,
  }) {
    return ProfileEditFormState(
      fullnameController: fullnameController ?? this.fullnameController,
      emailoneController: emailoneController ?? this.emailoneController,
      languageController: languageController ?? this.languageController,
      phoneoneController: phoneoneController ?? this.phoneoneController,
      dateofbirthoneController:
          dateofbirthoneController ?? this.dateofbirthoneController,
      ageoneController: ageoneController ?? this.ageoneController,
      profileEditFormModelObj:
          profileEditFormModelObj ?? this.profileEditFormModelObj,
    );
  }
}
