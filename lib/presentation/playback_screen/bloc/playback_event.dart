// ignore_for_file: must_be_immutable

part of 'playback_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Playback widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class PlaybackEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the Playback widget is first created.
class PlaybackInitialEvent extends PlaybackEvent {
  @override
  List<Object?> get props => [];
}

class PlaybackItemEvent extends PlaybackEvent {
  PlaybackItemEvent({
    required this.index,
    this.isSelectedSwitch,
  });

  int index;

  bool? isSelectedSwitch;

  @override
  List<Object?> get props => [
        index,
        isSelectedSwitch,
      ];
}
