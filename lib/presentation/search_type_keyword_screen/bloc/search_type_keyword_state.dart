// ignore_for_file: must_be_immutable

part of 'search_type_keyword_bloc.dart';

/// Represents the state of SearchTypeKeyword in the application.
class SearchTypeKeywordState extends Equatable {
  SearchTypeKeywordState({
    this.searchController,
    this.searchTypeKeywordModelObj,
  });

  TextEditingController? searchController;

  SearchTypeKeywordModel? searchTypeKeywordModelObj;

  @override
  List<Object?> get props => [
        searchController,
        searchTypeKeywordModelObj,
      ];

  SearchTypeKeywordState copyWith({
    TextEditingController? searchController,
    SearchTypeKeywordModel? searchTypeKeywordModelObj,
  }) {
    return SearchTypeKeywordState(
      searchController: searchController ?? this.searchController,
      searchTypeKeywordModelObj:
          searchTypeKeywordModelObj ?? this.searchTypeKeywordModelObj,
    );
  }
}
