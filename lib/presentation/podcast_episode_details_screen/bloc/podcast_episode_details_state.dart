// ignore_for_file: must_be_immutable

part of 'podcast_episode_details_bloc.dart';

/// Represents the state of PodcastEpisodeDetails in the application.
class PodcastEpisodeDetailsState extends Equatable {
  PodcastEpisodeDetailsState({this.podcastEpisodeDetailsModelObj});

  PodcastEpisodeDetailsModel? podcastEpisodeDetailsModelObj;

  @override
  List<Object?> get props => [
        podcastEpisodeDetailsModelObj,
      ];

  PodcastEpisodeDetailsState copyWith(
      {PodcastEpisodeDetailsModel? podcastEpisodeDetailsModelObj}) {
    return PodcastEpisodeDetailsState(
      podcastEpisodeDetailsModelObj:
          podcastEpisodeDetailsModelObj ?? this.podcastEpisodeDetailsModelObj,
    );
  }
}
