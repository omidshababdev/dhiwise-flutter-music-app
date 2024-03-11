// ignore_for_file: must_be_immutable

part of 'podcast_details_bloc.dart';

/// Represents the state of PodcastDetails in the application.
class PodcastDetailsState extends Equatable {
  PodcastDetailsState({this.podcastDetailsModelObj});

  PodcastDetailsModel? podcastDetailsModelObj;

  @override
  List<Object?> get props => [
        podcastDetailsModelObj,
      ];

  PodcastDetailsState copyWith({PodcastDetailsModel? podcastDetailsModelObj}) {
    return PodcastDetailsState(
      podcastDetailsModelObj:
          podcastDetailsModelObj ?? this.podcastDetailsModelObj,
    );
  }
}
