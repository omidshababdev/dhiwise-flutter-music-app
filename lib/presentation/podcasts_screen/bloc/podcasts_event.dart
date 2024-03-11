// ignore_for_file: must_be_immutable

part of 'podcasts_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Podcasts widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class PodcastsEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the Podcasts widget is first created.
class PodcastsInitialEvent extends PodcastsEvent {
  @override
  List<Object?> get props => [];
}
