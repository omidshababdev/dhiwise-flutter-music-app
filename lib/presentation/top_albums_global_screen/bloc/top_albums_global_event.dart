// ignore_for_file: must_be_immutable

part of 'top_albums_global_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///TopAlbumsGlobal widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class TopAlbumsGlobalEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the TopAlbumsGlobal widget is first created.
class TopAlbumsGlobalInitialEvent extends TopAlbumsGlobalEvent {
  @override
  List<Object?> get props => [];
}
