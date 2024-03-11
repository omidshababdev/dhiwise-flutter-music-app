// ignore_for_file: must_be_immutable

part of 'new_releases_bloc.dart';

/// Represents the state of NewReleases in the application.
class NewReleasesState extends Equatable {
  NewReleasesState({this.newReleasesModelObj});

  NewReleasesModel? newReleasesModelObj;

  @override
  List<Object?> get props => [
        newReleasesModelObj,
      ];

  NewReleasesState copyWith({NewReleasesModel? newReleasesModelObj}) {
    return NewReleasesState(
      newReleasesModelObj: newReleasesModelObj ?? this.newReleasesModelObj,
    );
  }
}
