// ignore_for_file: must_be_immutable

part of 'search_result_playlist_bloc.dart';

/// Represents the state of SearchResultPlaylist in the application.
class SearchResultPlaylistState extends Equatable {
  SearchResultPlaylistState({this.searchResultPlaylistModelObj});

  SearchResultPlaylistModel? searchResultPlaylistModelObj;

  @override
  List<Object?> get props => [
        searchResultPlaylistModelObj,
      ];

  SearchResultPlaylistState copyWith(
      {SearchResultPlaylistModel? searchResultPlaylistModelObj}) {
    return SearchResultPlaylistState(
      searchResultPlaylistModelObj:
          searchResultPlaylistModelObj ?? this.searchResultPlaylistModelObj,
    );
  }
}
