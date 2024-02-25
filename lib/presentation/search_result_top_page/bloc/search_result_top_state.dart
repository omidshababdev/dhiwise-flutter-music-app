// ignore_for_file: must_be_immutable

part of 'search_result_top_bloc.dart';

/// Represents the state of SearchResultTop in the application.
class SearchResultTopState extends Equatable {
  SearchResultTopState({this.searchResultTopModelObj});

  SearchResultTopModel? searchResultTopModelObj;

  @override
  List<Object?> get props => [
        searchResultTopModelObj,
      ];

  SearchResultTopState copyWith(
      {SearchResultTopModel? searchResultTopModelObj}) {
    return SearchResultTopState(
      searchResultTopModelObj:
          searchResultTopModelObj ?? this.searchResultTopModelObj,
    );
  }
}
