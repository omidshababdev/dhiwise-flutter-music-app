// ignore_for_file: must_be_immutable

part of 'search_not_found_bloc.dart';

/// Represents the state of SearchNotFound in the application.
class SearchNotFoundState extends Equatable {
  SearchNotFoundState({
    this.searchController,
    this.searchNotFoundModelObj,
  });

  TextEditingController? searchController;

  SearchNotFoundModel? searchNotFoundModelObj;

  @override
  List<Object?> get props => [
        searchController,
        searchNotFoundModelObj,
      ];

  SearchNotFoundState copyWith({
    TextEditingController? searchController,
    SearchNotFoundModel? searchNotFoundModelObj,
  }) {
    return SearchNotFoundState(
      searchController: searchController ?? this.searchController,
      searchNotFoundModelObj:
          searchNotFoundModelObj ?? this.searchNotFoundModelObj,
    );
  }
}
