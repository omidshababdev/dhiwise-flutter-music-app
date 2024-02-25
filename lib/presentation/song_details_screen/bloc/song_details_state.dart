// ignore_for_file: must_be_immutable

part of 'song_details_bloc.dart';

/// Represents the state of SongDetails in the application.
class SongDetailsState extends Equatable {
  SongDetailsState({this.songDetailsModelObj});

  SongDetailsModel? songDetailsModelObj;

  @override
  List<Object?> get props => [
        songDetailsModelObj,
      ];

  SongDetailsState copyWith({SongDetailsModel? songDetailsModelObj}) {
    return SongDetailsState(
      songDetailsModelObj: songDetailsModelObj ?? this.songDetailsModelObj,
    );
  }
}
