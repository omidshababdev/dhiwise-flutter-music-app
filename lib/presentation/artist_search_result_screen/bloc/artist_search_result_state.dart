// ignore_for_file: must_be_immutable

part of 'artist_search_result_bloc.dart';

/// Represents the state of ArtistSearchResult in the application.
class ArtistSearchResultState extends Equatable {
  ArtistSearchResultState({
    this.searchController,
    this.artistSearchResultModelObj,
  });

  TextEditingController? searchController;

  ArtistSearchResultModel? artistSearchResultModelObj;

  @override
  List<Object?> get props => [
        searchController,
        artistSearchResultModelObj,
      ];

  ArtistSearchResultState copyWith({
    TextEditingController? searchController,
    ArtistSearchResultModel? artistSearchResultModelObj,
  }) {
    return ArtistSearchResultState(
      searchController: searchController ?? this.searchController,
      artistSearchResultModelObj:
          artistSearchResultModelObj ?? this.artistSearchResultModelObj,
    );
  }
}
