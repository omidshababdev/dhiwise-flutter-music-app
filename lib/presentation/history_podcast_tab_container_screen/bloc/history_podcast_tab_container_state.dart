// ignore_for_file: must_be_immutable

part of 'history_podcast_tab_container_bloc.dart';

/// Represents the state of HistoryPodcastTabContainer in the application.
class HistoryPodcastTabContainerState extends Equatable {
  HistoryPodcastTabContainerState({this.historyPodcastTabContainerModelObj});

  HistoryPodcastTabContainerModel? historyPodcastTabContainerModelObj;

  @override
  List<Object?> get props => [
        historyPodcastTabContainerModelObj,
      ];

  HistoryPodcastTabContainerState copyWith(
      {HistoryPodcastTabContainerModel? historyPodcastTabContainerModelObj}) {
    return HistoryPodcastTabContainerState(
      historyPodcastTabContainerModelObj: historyPodcastTabContainerModelObj ??
          this.historyPodcastTabContainerModelObj,
    );
  }
}
