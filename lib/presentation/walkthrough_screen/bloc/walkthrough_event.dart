// ignore_for_file: must_be_immutable

part of 'walkthrough_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Walkthrough widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class WalkthroughEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the Walkthrough widget is first created.
class WalkthroughInitialEvent extends WalkthroughEvent {
  @override
  List<Object?> get props => [];
}
