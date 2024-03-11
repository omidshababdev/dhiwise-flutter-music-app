// ignore_for_file: must_be_immutable

part of 'search_result_profile_tab_container_bloc.dart';

/// Represents the state of SearchResultProfileTabContainer in the application.
class SearchResultProfileTabContainerState extends Equatable {
  SearchResultProfileTabContainerState({
    this.searchController,
    this.searchResultProfileTabContainerModelObj,
  });

  TextEditingController? searchController;

  SearchResultProfileTabContainerModel? searchResultProfileTabContainerModelObj;

  @override
  List<Object?> get props => [
        searchController,
        searchResultProfileTabContainerModelObj,
      ];

  SearchResultProfileTabContainerState copyWith({
    TextEditingController? searchController,
    SearchResultProfileTabContainerModel?
        searchResultProfileTabContainerModelObj,
  }) {
    return SearchResultProfileTabContainerState(
      searchController: searchController ?? this.searchController,
      searchResultProfileTabContainerModelObj:
          searchResultProfileTabContainerModelObj ??
              this.searchResultProfileTabContainerModelObj,
    );
  }
}
