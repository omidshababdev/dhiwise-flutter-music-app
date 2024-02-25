// ignore_for_file: must_be_immutable

part of 'follow_artists_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///FollowArtists widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class FollowArtistsEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the FollowArtists widget is first created.
class FollowArtistsInitialEvent extends FollowArtistsEvent {
  @override
  List<Object?> get props => [];
}
