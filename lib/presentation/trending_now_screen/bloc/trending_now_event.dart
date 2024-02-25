// ignore_for_file: must_be_immutable

part of 'trending_now_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///TrendingNow widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class TrendingNowEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the TrendingNow widget is first created.
class TrendingNowInitialEvent extends TrendingNowEvent {
  @override
  List<Object?> get props => [];
}
