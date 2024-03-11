// ignore_for_file: must_be_immutable

part of 'artist_search_result_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///ArtistSearchResult widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class ArtistSearchResultEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the ArtistSearchResult widget is first created.
class ArtistSearchResultInitialEvent extends ArtistSearchResultEvent {
  @override
  List<Object?> get props => [];
}
