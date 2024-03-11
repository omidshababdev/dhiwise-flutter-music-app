// ignore_for_file: must_be_immutable

part of 'song_details_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///SongDetails widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class SongDetailsEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the SongDetails widget is first created.
class SongDetailsInitialEvent extends SongDetailsEvent {
  @override
  List<Object?> get props => [];
}
