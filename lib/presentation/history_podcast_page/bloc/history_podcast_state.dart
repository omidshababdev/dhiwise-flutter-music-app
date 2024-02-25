// ignore_for_file: must_be_immutable

part of 'history_podcast_bloc.dart';

/// Represents the state of HistoryPodcast in the application.
class HistoryPodcastState extends Equatable {
  HistoryPodcastState({this.historyPodcastModelObj});

  HistoryPodcastModel? historyPodcastModelObj;

  @override
  List<Object?> get props => [
        historyPodcastModelObj,
      ];

  HistoryPodcastState copyWith({HistoryPodcastModel? historyPodcastModelObj}) {
    return HistoryPodcastState(
      historyPodcastModelObj:
          historyPodcastModelObj ?? this.historyPodcastModelObj,
    );
  }
}
