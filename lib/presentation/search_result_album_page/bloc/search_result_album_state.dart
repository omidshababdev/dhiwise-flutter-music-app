// ignore_for_file: must_be_immutable

part of 'search_result_album_bloc.dart';

/// Represents the state of SearchResultAlbum in the application.
class SearchResultAlbumState extends Equatable {
  SearchResultAlbumState({this.searchResultAlbumModelObj});

  SearchResultAlbumModel? searchResultAlbumModelObj;

  @override
  List<Object?> get props => [
        searchResultAlbumModelObj,
      ];

  SearchResultAlbumState copyWith(
      {SearchResultAlbumModel? searchResultAlbumModelObj}) {
    return SearchResultAlbumState(
      searchResultAlbumModelObj:
          searchResultAlbumModelObj ?? this.searchResultAlbumModelObj,
    );
  }
}
