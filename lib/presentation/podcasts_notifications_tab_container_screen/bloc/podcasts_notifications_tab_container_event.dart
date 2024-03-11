// ignore_for_file: must_be_immutable

part of 'podcasts_notifications_tab_container_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///PodcastsNotificationsTabContainer widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class PodcastsNotificationsTabContainerEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the PodcastsNotificationsTabContainer widget is first created.
class PodcastsNotificationsTabContainerInitialEvent
    extends PodcastsNotificationsTabContainerEvent {
  @override
  List<Object?> get props => [];
}
