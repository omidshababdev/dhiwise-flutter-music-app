// ignore_for_file: must_be_immutable

part of 'search_result_top_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///SearchResultTop widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class SearchResultTopEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the SearchResultTop widget is first created.
class SearchResultTopInitialEvent extends SearchResultTopEvent {
  @override
  List<Object?> get props => [];
}
