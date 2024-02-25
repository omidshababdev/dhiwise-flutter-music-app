import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/searchnotfound_item_model.dart';
import 'package:dhiwise_flutter_music_app/presentation/search_not_found_screen/models/search_not_found_model.dart';
part 'search_not_found_event.dart';
part 'search_not_found_state.dart';

/// A bloc that manages the state of a SearchNotFound according to the event that is dispatched to it.
class SearchNotFoundBloc
    extends Bloc<SearchNotFoundEvent, SearchNotFoundState> {
  SearchNotFoundBloc(SearchNotFoundState initialState) : super(initialState) {
    on<SearchNotFoundInitialEvent>(_onInitialize);
  }

  List<SearchnotfoundItemModel> fillSearchnotfoundItemList() {
    return [
      SearchnotfoundItemModel(pillTab: "Top"),
      SearchnotfoundItemModel(pillTab: "Songs"),
      SearchnotfoundItemModel(pillTab: "Artists"),
      SearchnotfoundItemModel(pillTab: "Albums"),
      SearchnotfoundItemModel(pillTab: "Podcasts"),
      SearchnotfoundItemModel(pillTab: "Playlists"),
      SearchnotfoundItemModel(pillTab: "Profiles")
    ];
  }

  _onInitialize(
    SearchNotFoundInitialEvent event,
    Emitter<SearchNotFoundState> emit,
  ) async {
    emit(state.copyWith(
      searchController: TextEditingController(),
    ));
    emit(state.copyWith(
        searchNotFoundModelObj: state.searchNotFoundModelObj?.copyWith(
      searchnotfoundItemList: fillSearchnotfoundItemList(),
    )));
  }
}
