// ignore_for_file: must_be_immutable

part of 'search_not_found_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///SearchNotFound widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class SearchNotFoundEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the SearchNotFound widget is first created.
class SearchNotFoundInitialEvent extends SearchNotFoundEvent {
  @override
  List<Object?> get props => [];
}
