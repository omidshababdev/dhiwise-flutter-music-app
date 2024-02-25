// ignore_for_file: must_be_immutable

part of 'audio_video_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///AudioVideo widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class AudioVideoEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the AudioVideo widget is first created.
class AudioVideoInitialEvent extends AudioVideoEvent {
  @override
  List<Object?> get props => [];
}

///Event for changing switch
class ChangeSwitchEvent extends AudioVideoEvent {
  ChangeSwitchEvent({required this.value});

  bool value;

  @override
  List<Object?> get props => [
        value,
      ];
}

///Event for changing switch
class ChangeSwitch1Event extends AudioVideoEvent {
  ChangeSwitch1Event({required this.value});

  bool value;

  @override
  List<Object?> get props => [
        value,
      ];
}
