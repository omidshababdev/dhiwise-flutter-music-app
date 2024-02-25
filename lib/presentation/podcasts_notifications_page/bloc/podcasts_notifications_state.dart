// ignore_for_file: must_be_immutable

part of 'podcasts_notifications_bloc.dart';

/// Represents the state of PodcastsNotifications in the application.
class PodcastsNotificationsState extends Equatable {
  PodcastsNotificationsState({this.podcastsNotificationsModelObj});

  PodcastsNotificationsModel? podcastsNotificationsModelObj;

  @override
  List<Object?> get props => [
        podcastsNotificationsModelObj,
      ];

  PodcastsNotificationsState copyWith(
      {PodcastsNotificationsModel? podcastsNotificationsModelObj}) {
    return PodcastsNotificationsState(
      podcastsNotificationsModelObj:
          podcastsNotificationsModelObj ?? this.podcastsNotificationsModelObj,
    );
  }
}
