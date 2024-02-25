// ignore_for_file: must_be_immutable

part of 'podcasts_notifications_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///PodcastsNotifications widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class PodcastsNotificationsEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the PodcastsNotifications widget is first created.
class PodcastsNotificationsInitialEvent extends PodcastsNotificationsEvent {
  @override
  List<Object?> get props => [];
}
