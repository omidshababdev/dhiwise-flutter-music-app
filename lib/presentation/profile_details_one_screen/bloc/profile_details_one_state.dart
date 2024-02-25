// ignore_for_file: must_be_immutable

part of 'profile_details_one_bloc.dart';

/// Represents the state of ProfileDetailsOne in the application.
class ProfileDetailsOneState extends Equatable {
  ProfileDetailsOneState({this.profileDetailsOneModelObj});

  ProfileDetailsOneModel? profileDetailsOneModelObj;

  @override
  List<Object?> get props => [
        profileDetailsOneModelObj,
      ];

  ProfileDetailsOneState copyWith(
      {ProfileDetailsOneModel? profileDetailsOneModelObj}) {
    return ProfileDetailsOneState(
      profileDetailsOneModelObj:
          profileDetailsOneModelObj ?? this.profileDetailsOneModelObj,
    );
  }
}
