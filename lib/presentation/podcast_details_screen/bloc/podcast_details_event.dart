// ignore_for_file: must_be_immutable

part of 'podcast_details_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///PodcastDetails widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class PodcastDetailsEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the PodcastDetails widget is first created.
class PodcastDetailsInitialEvent extends PodcastDetailsEvent {
  @override
  List<Object?> get props => [];
}
