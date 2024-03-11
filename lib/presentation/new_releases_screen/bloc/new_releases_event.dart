// ignore_for_file: must_be_immutable

part of 'new_releases_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///NewReleases widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class NewReleasesEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the NewReleases widget is first created.
class NewReleasesInitialEvent extends NewReleasesEvent {
  @override
  List<Object?> get props => [];
}
