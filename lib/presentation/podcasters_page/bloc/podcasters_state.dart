// ignore_for_file: must_be_immutable

part of 'podcasters_bloc.dart';

/// Represents the state of Podcasters in the application.
class PodcastersState extends Equatable {
  PodcastersState({this.podcastersModelObj});

  PodcastersModel? podcastersModelObj;

  @override
  List<Object?> get props => [
        podcastersModelObj,
      ];

  PodcastersState copyWith({PodcastersModel? podcastersModelObj}) {
    return PodcastersState(
      podcastersModelObj: podcastersModelObj ?? this.podcastersModelObj,
    );
  }
}
