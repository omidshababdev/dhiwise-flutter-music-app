// ignore_for_file: must_be_immutable

part of 'edit_profile_bloc.dart';

/// Represents the state of EditProfile in the application.
class EditProfileState extends Equatable {
  EditProfileState({
    this.inputFields1Controller,
    this.inputFields2Controller,
    this.dateController,
    this.emailController,
    this.phoneNumberController,
    this.selectedDropDownValue,
    this.selectedCountry,
    this.editProfileModelObj,
  });

  TextEditingController? inputFields1Controller;

  TextEditingController? inputFields2Controller;

  TextEditingController? dateController;

  TextEditingController? emailController;

  TextEditingController? phoneNumberController;

  SelectionPopupModel? selectedDropDownValue;

  EditProfileModel? editProfileModelObj;

  Country? selectedCountry;

  @override
  List<Object?> get props => [
        inputFields1Controller,
        inputFields2Controller,
        dateController,
        emailController,
        phoneNumberController,
        selectedDropDownValue,
        selectedCountry,
        editProfileModelObj,
      ];

  EditProfileState copyWith({
    TextEditingController? inputFields1Controller,
    TextEditingController? inputFields2Controller,
    TextEditingController? dateController,
    TextEditingController? emailController,
    TextEditingController? phoneNumberController,
    SelectionPopupModel? selectedDropDownValue,
    Country? selectedCountry,
    EditProfileModel? editProfileModelObj,
  }) {
    return EditProfileState(
      inputFields1Controller:
          inputFields1Controller ?? this.inputFields1Controller,
      inputFields2Controller:
          inputFields2Controller ?? this.inputFields2Controller,
      dateController: dateController ?? this.dateController,
      emailController: emailController ?? this.emailController,
      phoneNumberController:
          phoneNumberController ?? this.phoneNumberController,
      selectedDropDownValue:
          selectedDropDownValue ?? this.selectedDropDownValue,
      selectedCountry: selectedCountry ?? this.selectedCountry,
      editProfileModelObj: editProfileModelObj ?? this.editProfileModelObj,
    );
  }
}
