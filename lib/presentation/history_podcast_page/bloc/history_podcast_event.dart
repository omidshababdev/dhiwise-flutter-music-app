// ignore_for_file: must_be_immutable

part of 'history_podcast_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///HistoryPodcast widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class HistoryPodcastEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the HistoryPodcast widget is first created.
class HistoryPodcastInitialEvent extends HistoryPodcastEvent {
  @override
  List<Object?> get props => [];
}
