// ignore_for_file: must_be_immutable

part of 'song_play_bloc.dart';

/// Represents the state of SongPlay in the application.
class SongPlayState extends Equatable {
  SongPlayState({this.songPlayModelObj});

  SongPlayModel? songPlayModelObj;

  @override
  List<Object?> get props => [
        songPlayModelObj,
      ];

  SongPlayState copyWith({SongPlayModel? songPlayModelObj}) {
    return SongPlayState(
      songPlayModelObj: songPlayModelObj ?? this.songPlayModelObj,
    );
  }
}
