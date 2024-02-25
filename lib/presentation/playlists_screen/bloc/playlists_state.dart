// ignore_for_file: must_be_immutable

part of 'playlists_bloc.dart';

/// Represents the state of Playlists in the application.
class PlaylistsState extends Equatable {
  PlaylistsState({this.playlistsModelObj});

  PlaylistsModel? playlistsModelObj;

  @override
  List<Object?> get props => [
        playlistsModelObj,
      ];

  PlaylistsState copyWith({PlaylistsModel? playlistsModelObj}) {
    return PlaylistsState(
      playlistsModelObj: playlistsModelObj ?? this.playlistsModelObj,
    );
  }
}
