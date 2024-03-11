// ignore_for_file: must_be_immutable

part of 'search_result_album_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///SearchResultAlbum widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class SearchResultAlbumEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the SearchResultAlbum widget is first created.
class SearchResultAlbumInitialEvent extends SearchResultAlbumEvent {
  @override
  List<Object?> get props => [];
}
