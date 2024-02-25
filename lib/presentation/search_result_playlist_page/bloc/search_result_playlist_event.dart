// ignore_for_file: must_be_immutable

part of 'search_result_playlist_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///SearchResultPlaylist widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class SearchResultPlaylistEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the SearchResultPlaylist widget is first created.
class SearchResultPlaylistInitialEvent extends SearchResultPlaylistEvent {
  @override
  List<Object?> get props => [];
}
