// ignore_for_file: must_be_immutable

part of 'search_result_profile_bloc.dart';

/// Represents the state of SearchResultProfile in the application.
class SearchResultProfileState extends Equatable {
  SearchResultProfileState({this.searchResultProfileModelObj});

  SearchResultProfileModel? searchResultProfileModelObj;

  @override
  List<Object?> get props => [
        searchResultProfileModelObj,
      ];

  SearchResultProfileState copyWith(
      {SearchResultProfileModel? searchResultProfileModelObj}) {
    return SearchResultProfileState(
      searchResultProfileModelObj:
          searchResultProfileModelObj ?? this.searchResultProfileModelObj,
    );
  }
}
