// ignore_for_file: must_be_immutable

part of 'songs_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Songs widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class SongsEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the Songs widget is first created.
class SongsInitialEvent extends SongsEvent {
  @override
  List<Object?> get props => [];
}
