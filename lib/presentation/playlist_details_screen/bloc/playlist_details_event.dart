// ignore_for_file: must_be_immutable

part of 'playlist_details_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///PlaylistDetails widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class PlaylistDetailsEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the PlaylistDetails widget is first created.
class PlaylistDetailsInitialEvent extends PlaylistDetailsEvent {
  @override
  List<Object?> get props => [];
}
