// ignore_for_file: must_be_immutable

part of 'artists_tab_container_bloc.dart';

/// Represents the state of ArtistsTabContainer in the application.
class ArtistsTabContainerState extends Equatable {
  ArtistsTabContainerState({this.artistsTabContainerModelObj});

  ArtistsTabContainerModel? artistsTabContainerModelObj;

  @override
  List<Object?> get props => [
        artistsTabContainerModelObj,
      ];

  ArtistsTabContainerState copyWith(
      {ArtistsTabContainerModel? artistsTabContainerModelObj}) {
    return ArtistsTabContainerState(
      artistsTabContainerModelObj:
          artistsTabContainerModelObj ?? this.artistsTabContainerModelObj,
    );
  }
}
