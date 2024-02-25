// ignore_for_file: must_be_immutable

part of 'playback_bloc.dart';

/// Represents the state of Playback in the application.
class PlaybackState extends Equatable {
  PlaybackState({this.playbackModelObj});

  PlaybackModel? playbackModelObj;

  @override
  List<Object?> get props => [
        playbackModelObj,
      ];

  PlaybackState copyWith({PlaybackModel? playbackModelObj}) {
    return PlaybackState(
      playbackModelObj: playbackModelObj ?? this.playbackModelObj,
    );
  }
}
