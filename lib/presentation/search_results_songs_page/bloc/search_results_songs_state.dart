// ignore_for_file: must_be_immutable

part of 'search_results_songs_bloc.dart';

/// Represents the state of SearchResultsSongs in the application.
class SearchResultsSongsState extends Equatable {
  SearchResultsSongsState({this.searchResultsSongsModelObj});

  SearchResultsSongsModel? searchResultsSongsModelObj;

  @override
  List<Object?> get props => [
        searchResultsSongsModelObj,
      ];

  SearchResultsSongsState copyWith(
      {SearchResultsSongsModel? searchResultsSongsModelObj}) {
    return SearchResultsSongsState(
      searchResultsSongsModelObj:
          searchResultsSongsModelObj ?? this.searchResultsSongsModelObj,
    );
  }
}
