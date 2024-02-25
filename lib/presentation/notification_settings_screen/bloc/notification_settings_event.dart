// ignore_for_file: must_be_immutable

part of 'notification_settings_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///NotificationSettings widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class NotificationSettingsEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the NotificationSettings widget is first created.
class NotificationSettingsInitialEvent extends NotificationSettingsEvent {
  @override
  List<Object?> get props => [];
}
