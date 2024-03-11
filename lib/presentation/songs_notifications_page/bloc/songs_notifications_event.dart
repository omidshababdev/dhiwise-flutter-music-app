// ignore_for_file: must_be_immutable

part of 'songs_notifications_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///SongsNotifications widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class SongsNotificationsEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the SongsNotifications widget is first created.
class SongsNotificationsInitialEvent extends SongsNotificationsEvent {
  @override
  List<Object?> get props => [];
}
