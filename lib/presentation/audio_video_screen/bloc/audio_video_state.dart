// ignore_for_file: must_be_immutable

part of 'audio_video_bloc.dart';

/// Represents the state of AudioVideo in the application.
class AudioVideoState extends Equatable {
  AudioVideoState({
    this.isSelectedSwitch = false,
    this.isSelectedSwitch1 = false,
    this.audioVideoModelObj,
  });

  AudioVideoModel? audioVideoModelObj;

  bool isSelectedSwitch;

  bool isSelectedSwitch1;

  @override
  List<Object?> get props => [
        isSelectedSwitch,
        isSelectedSwitch1,
        audioVideoModelObj,
      ];

  AudioVideoState copyWith({
    bool? isSelectedSwitch,
    bool? isSelectedSwitch1,
    AudioVideoModel? audioVideoModelObj,
  }) {
    return AudioVideoState(
      isSelectedSwitch: isSelectedSwitch ?? this.isSelectedSwitch,
      isSelectedSwitch1: isSelectedSwitch1 ?? this.isSelectedSwitch1,
      audioVideoModelObj: audioVideoModelObj ?? this.audioVideoModelObj,
    );
  }
}
