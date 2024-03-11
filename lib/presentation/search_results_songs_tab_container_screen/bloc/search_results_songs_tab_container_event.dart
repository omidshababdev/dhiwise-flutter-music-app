// ignore_for_file: must_be_immutable

part of 'search_results_songs_tab_container_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///SearchResultsSongsTabContainer widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class SearchResultsSongsTabContainerEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the SearchResultsSongsTabContainer widget is first created.
class SearchResultsSongsTabContainerInitialEvent
    extends SearchResultsSongsTabContainerEvent {
  @override
  List<Object?> get props => [];
}
