// ignore_for_file: must_be_immutable

part of 'podcast_episode_details_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///PodcastEpisodeDetails widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class PodcastEpisodeDetailsEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the PodcastEpisodeDetails widget is first created.
class PodcastEpisodeDetailsInitialEvent extends PodcastEpisodeDetailsEvent {
  @override
  List<Object?> get props => [];
}
