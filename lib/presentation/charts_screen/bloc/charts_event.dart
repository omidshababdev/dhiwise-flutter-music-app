// ignore_for_file: must_be_immutable

part of 'charts_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Charts widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class ChartsEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the Charts widget is first created.
class ChartsInitialEvent extends ChartsEvent {
  @override
  List<Object?> get props => [];
}
