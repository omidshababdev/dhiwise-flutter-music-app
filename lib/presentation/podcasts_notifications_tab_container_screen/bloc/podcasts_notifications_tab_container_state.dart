// ignore_for_file: must_be_immutable

part of 'podcasts_notifications_tab_container_bloc.dart';

/// Represents the state of PodcastsNotificationsTabContainer in the application.
class PodcastsNotificationsTabContainerState extends Equatable {
  PodcastsNotificationsTabContainerState(
      {this.podcastsNotificationsTabContainerModelObj});

  PodcastsNotificationsTabContainerModel?
      podcastsNotificationsTabContainerModelObj;

  @override
  List<Object?> get props => [
        podcastsNotificationsTabContainerModelObj,
      ];

  PodcastsNotificationsTabContainerState copyWith(
      {PodcastsNotificationsTabContainerModel?
          podcastsNotificationsTabContainerModelObj}) {
    return PodcastsNotificationsTabContainerState(
      podcastsNotificationsTabContainerModelObj:
          podcastsNotificationsTabContainerModelObj ??
              this.podcastsNotificationsTabContainerModelObj,
    );
  }
}
