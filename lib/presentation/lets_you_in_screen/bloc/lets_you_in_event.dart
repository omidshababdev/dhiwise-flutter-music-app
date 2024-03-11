// ignore_for_file: must_be_immutable

part of 'lets_you_in_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///LetsYouIn widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class LetsYouInEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the LetsYouIn widget is first created.
class LetsYouInInitialEvent extends LetsYouInEvent {
  @override
  List<Object?> get props => [];
}
