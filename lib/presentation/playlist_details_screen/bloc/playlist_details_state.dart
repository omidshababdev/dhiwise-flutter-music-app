// ignore_for_file: must_be_immutable

part of 'playlist_details_bloc.dart';

/// Represents the state of PlaylistDetails in the application.
class PlaylistDetailsState extends Equatable {
  PlaylistDetailsState({this.playlistDetailsModelObj});

  PlaylistDetailsModel? playlistDetailsModelObj;

  @override
  List<Object?> get props => [
        playlistDetailsModelObj,
      ];

  PlaylistDetailsState copyWith(
      {PlaylistDetailsModel? playlistDetailsModelObj}) {
    return PlaylistDetailsState(
      playlistDetailsModelObj:
          playlistDetailsModelObj ?? this.playlistDetailsModelObj,
    );
  }
}
