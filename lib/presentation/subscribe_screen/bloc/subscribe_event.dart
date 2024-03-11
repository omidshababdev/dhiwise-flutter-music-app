// ignore_for_file: must_be_immutable

part of 'subscribe_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Subscribe widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class SubscribeEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the Subscribe widget is first created.
class SubscribeInitialEvent extends SubscribeEvent {
  @override
  List<Object?> get props => [];
}
