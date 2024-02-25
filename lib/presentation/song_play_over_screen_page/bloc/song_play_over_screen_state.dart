// ignore_for_file: must_be_immutable

part of 'song_play_over_screen_bloc.dart';

/// Represents the state of SongPlayOverScreen in the application.
class SongPlayOverScreenState extends Equatable {
  SongPlayOverScreenState({this.songPlayOverScreenModelObj});

  SongPlayOverScreenModel? songPlayOverScreenModelObj;

  @override
  List<Object?> get props => [
        songPlayOverScreenModelObj,
      ];

  SongPlayOverScreenState copyWith(
      {SongPlayOverScreenModel? songPlayOverScreenModelObj}) {
    return SongPlayOverScreenState(
      songPlayOverScreenModelObj:
          songPlayOverScreenModelObj ?? this.songPlayOverScreenModelObj,
    );
  }
}
