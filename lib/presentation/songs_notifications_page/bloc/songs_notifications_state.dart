// ignore_for_file: must_be_immutable

part of 'songs_notifications_bloc.dart';

/// Represents the state of SongsNotifications in the application.
class SongsNotificationsState extends Equatable {
  SongsNotificationsState({this.songsNotificationsModelObj});

  SongsNotificationsModel? songsNotificationsModelObj;

  @override
  List<Object?> get props => [
        songsNotificationsModelObj,
      ];

  SongsNotificationsState copyWith(
      {SongsNotificationsModel? songsNotificationsModelObj}) {
    return SongsNotificationsState(
      songsNotificationsModelObj:
          songsNotificationsModelObj ?? this.songsNotificationsModelObj,
    );
  }
}
