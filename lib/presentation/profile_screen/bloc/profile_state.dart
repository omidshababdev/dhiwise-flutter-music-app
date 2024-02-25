// ignore_for_file: must_be_immutable

part of 'profile_bloc.dart';

/// Represents the state of Profile in the application.
class ProfileState extends Equatable {
  ProfileState({
    this.fullNameController,
    this.nameController,
    this.dateOfBirthController,
    this.emailController,
    this.phoneNumberController,
    this.selectedCountry,
    this.profileModelObj,
  });

  TextEditingController? fullNameController;

  TextEditingController? nameController;

  TextEditingController? dateOfBirthController;

  TextEditingController? emailController;

  TextEditingController? phoneNumberController;

  ProfileModel? profileModelObj;

  Country? selectedCountry;

  @override
  List<Object?> get props => [
        fullNameController,
        nameController,
        dateOfBirthController,
        emailController,
        phoneNumberController,
        selectedCountry,
        profileModelObj,
      ];

  ProfileState copyWith({
    TextEditingController? fullNameController,
    TextEditingController? nameController,
    TextEditingController? dateOfBirthController,
    TextEditingController? emailController,
    TextEditingController? phoneNumberController,
    Country? selectedCountry,
    ProfileModel? profileModelObj,
  }) {
    return ProfileState(
      fullNameController: fullNameController ?? this.fullNameController,
      nameController: nameController ?? this.nameController,
      dateOfBirthController:
          dateOfBirthController ?? this.dateOfBirthController,
      emailController: emailController ?? this.emailController,
      phoneNumberController:
          phoneNumberController ?? this.phoneNumberController,
      selectedCountry: selectedCountry ?? this.selectedCountry,
      profileModelObj: profileModelObj ?? this.profileModelObj,
    );
  }
}
