// ignore_for_file: must_be_immutable

part of 'home_container_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///HomeContainer widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class HomeContainerEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the HomeContainer widget is first created.
class HomeContainerInitialEvent extends HomeContainerEvent {
  @override
  List<Object?> get props => [];
}
