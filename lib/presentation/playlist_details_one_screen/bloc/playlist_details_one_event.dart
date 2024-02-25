// ignore_for_file: must_be_immutable

part of 'playlist_details_one_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///PlaylistDetailsOne widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class PlaylistDetailsOneEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the PlaylistDetailsOne widget is first created.
class PlaylistDetailsOneInitialEvent extends PlaylistDetailsOneEvent {
  @override
  List<Object?> get props => [];
}
