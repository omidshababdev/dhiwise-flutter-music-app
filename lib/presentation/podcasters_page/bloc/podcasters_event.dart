// ignore_for_file: must_be_immutable

part of 'podcasters_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Podcasters widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class PodcastersEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the Podcasters widget is first created.
class PodcastersInitialEvent extends PodcastersEvent {
  @override
  List<Object?> get props => [];
}
