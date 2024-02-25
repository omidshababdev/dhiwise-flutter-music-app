// ignore_for_file: must_be_immutable

part of 'search_result_podcast_bloc.dart';

/// Represents the state of SearchResultPodcast in the application.
class SearchResultPodcastState extends Equatable {
  SearchResultPodcastState({
    this.searchController,
    this.searchResultPodcastModelObj,
  });

  TextEditingController? searchController;

  SearchResultPodcastModel? searchResultPodcastModelObj;

  @override
  List<Object?> get props => [
        searchController,
        searchResultPodcastModelObj,
      ];

  SearchResultPodcastState copyWith({
    TextEditingController? searchController,
    SearchResultPodcastModel? searchResultPodcastModelObj,
  }) {
    return SearchResultPodcastState(
      searchController: searchController ?? this.searchController,
      searchResultPodcastModelObj:
          searchResultPodcastModelObj ?? this.searchResultPodcastModelObj,
    );
  }
}
