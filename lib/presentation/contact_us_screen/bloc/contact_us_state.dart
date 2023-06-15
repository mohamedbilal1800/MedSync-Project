// ignore_for_file: must_be_immutable

part of 'contact_us_bloc.dart';

class ContactUsState extends Equatable {
  ContactUsState({
    this.isCheckbox = false,
    this.contactUsModelObj,
  });

  ContactUsModel? contactUsModelObj;

  bool isCheckbox;

  @override
  List<Object?> get props => [
        isCheckbox,
        contactUsModelObj,
      ];
  ContactUsState copyWith({
    bool? isCheckbox,
    ContactUsModel? contactUsModelObj,
  }) {
    return ContactUsState(
      isCheckbox: isCheckbox ?? this.isCheckbox,
      contactUsModelObj: contactUsModelObj ?? this.contactUsModelObj,
    );
  }
}
