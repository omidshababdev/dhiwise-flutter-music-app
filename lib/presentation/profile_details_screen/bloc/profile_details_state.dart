// ignore_for_file: must_be_immutable

part of 'profile_details_bloc.dart';

/// Represents the state of ProfileDetails in the application.
class ProfileDetailsState extends Equatable {
  ProfileDetailsState({this.profileDetailsModelObj});

  ProfileDetailsModel? profileDetailsModelObj;

  @override
  List<Object?> get props => [
        profileDetailsModelObj,
      ];

  ProfileDetailsState copyWith({ProfileDetailsModel? profileDetailsModelObj}) {
    return ProfileDetailsState(
      profileDetailsModelObj:
          profileDetailsModelObj ?? this.profileDetailsModelObj,
    );
  }
}
