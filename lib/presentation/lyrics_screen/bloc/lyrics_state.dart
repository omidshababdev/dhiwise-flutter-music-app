// ignore_for_file: must_be_immutable

part of 'lyrics_bloc.dart';

/// Represents the state of Lyrics in the application.
class LyricsState extends Equatable {
  LyricsState({this.lyricsModelObj});

  LyricsModel? lyricsModelObj;

  @override
  List<Object?> get props => [
        lyricsModelObj,
      ];

  LyricsState copyWith({LyricsModel? lyricsModelObj}) {
    return LyricsState(
      lyricsModelObj: lyricsModelObj ?? this.lyricsModelObj,
    );
  }
}
