// ignore_for_file: must_be_immutable

part of 'search_results_songs_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///SearchResultsSongs widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class SearchResultsSongsEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the SearchResultsSongs widget is first created.
class SearchResultsSongsInitialEvent extends SearchResultsSongsEvent {
  @override
  List<Object?> get props => [];
}
