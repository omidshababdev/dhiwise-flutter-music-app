// ignore_for_file: must_be_immutable

part of 'songs_bloc.dart';

/// Represents the state of Songs in the application.
class SongsState extends Equatable {
  SongsState({this.songsModelObj});

  SongsModel? songsModelObj;

  @override
  List<Object?> get props => [
        songsModelObj,
      ];

  SongsState copyWith({SongsModel? songsModelObj}) {
    return SongsState(
      songsModelObj: songsModelObj ?? this.songsModelObj,
    );
  }
}
