// ignore_for_file: must_be_immutable

part of 'playlists_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Playlists widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class PlaylistsEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the Playlists widget is first created.
class PlaylistsInitialEvent extends PlaylistsEvent {
  @override
  List<Object?> get props => [];
}
