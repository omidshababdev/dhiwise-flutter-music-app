// ignore_for_file: must_be_immutable

part of 'history_podcast_tab_container_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///HistoryPodcastTabContainer widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class HistoryPodcastTabContainerEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the HistoryPodcastTabContainer widget is first created.
class HistoryPodcastTabContainerInitialEvent
    extends HistoryPodcastTabContainerEvent {
  @override
  List<Object?> get props => [];
}
