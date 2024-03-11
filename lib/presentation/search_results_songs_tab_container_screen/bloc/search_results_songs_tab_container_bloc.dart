import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:dhiwise_flutter_music_app/presentation/search_results_songs_tab_container_screen/models/search_results_songs_tab_container_model.dart';
part 'search_results_songs_tab_container_event.dart';
part 'search_results_songs_tab_container_state.dart';

/// A bloc that manages the state of a SearchResultsSongsTabContainer according to the event that is dispatched to it.
class SearchResultsSongsTabContainerBloc extends Bloc<
    SearchResultsSongsTabContainerEvent, SearchResultsSongsTabContainerState> {
  SearchResultsSongsTabContainerBloc(
      SearchResultsSongsTabContainerState initialState)
      : super(initialState) {
    on<SearchResultsSongsTabContainerInitialEvent>(_onInitialize);
  }

  _onInitialize(
    SearchResultsSongsTabContainerInitialEvent event,
    Emitter<SearchResultsSongsTabContainerState> emit,
  ) async {
    emit(state.copyWith(
      searchController: TextEditingController(),
    ));
  }
}
