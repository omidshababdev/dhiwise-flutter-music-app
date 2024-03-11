// ignore_for_file: must_be_immutable

part of 'queue_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Queue widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class QueueEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the Queue widget is first created.
class QueueInitialEvent extends QueueEvent {
  @override
  List<Object?> get props => [];
}
