// ignore_for_file: must_be_immutable

part of 'search_result_podcast_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///SearchResultPodcast widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class SearchResultPodcastEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the SearchResultPodcast widget is first created.
class SearchResultPodcastInitialEvent extends SearchResultPodcastEvent {
  @override
  List<Object?> get props => [];
}
