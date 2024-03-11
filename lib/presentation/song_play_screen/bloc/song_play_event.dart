// ignore_for_file: must_be_immutable

part of 'song_play_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///SongPlay widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class SongPlayEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the SongPlay widget is first created.
class SongPlayInitialEvent extends SongPlayEvent {
  @override
  List<Object?> get props => [];
}
