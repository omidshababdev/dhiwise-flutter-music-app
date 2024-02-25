// ignore_for_file: must_be_immutable

part of 'song_play_over_screen_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///SongPlayOverScreen widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class SongPlayOverScreenEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the SongPlayOverScreen widget is first created.
class SongPlayOverScreenInitialEvent extends SongPlayOverScreenEvent {
  @override
  List<Object?> get props => [];
}
