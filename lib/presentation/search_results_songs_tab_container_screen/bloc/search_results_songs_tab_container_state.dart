// ignore_for_file: must_be_immutable

part of 'search_results_songs_tab_container_bloc.dart';

/// Represents the state of SearchResultsSongsTabContainer in the application.
class SearchResultsSongsTabContainerState extends Equatable {
  SearchResultsSongsTabContainerState({
    this.searchController,
    this.searchResultsSongsTabContainerModelObj,
  });

  TextEditingController? searchController;

  SearchResultsSongsTabContainerModel? searchResultsSongsTabContainerModelObj;

  @override
  List<Object?> get props => [
        searchController,
        searchResultsSongsTabContainerModelObj,
      ];

  SearchResultsSongsTabContainerState copyWith({
    TextEditingController? searchController,
    SearchResultsSongsTabContainerModel? searchResultsSongsTabContainerModelObj,
  }) {
    return SearchResultsSongsTabContainerState(
      searchController: searchController ?? this.searchController,
      searchResultsSongsTabContainerModelObj:
          searchResultsSongsTabContainerModelObj ??
              this.searchResultsSongsTabContainerModelObj,
    );
  }
}
