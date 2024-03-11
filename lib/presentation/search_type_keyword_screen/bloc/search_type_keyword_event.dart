// ignore_for_file: must_be_immutable

part of 'search_type_keyword_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///SearchTypeKeyword widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class SearchTypeKeywordEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the SearchTypeKeyword widget is first created.
class SearchTypeKeywordInitialEvent extends SearchTypeKeywordEvent {
  @override
  List<Object?> get props => [];
}
