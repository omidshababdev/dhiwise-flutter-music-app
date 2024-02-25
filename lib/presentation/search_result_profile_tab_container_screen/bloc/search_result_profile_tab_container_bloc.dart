import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:dhiwise_flutter_music_app/presentation/search_result_profile_tab_container_screen/models/search_result_profile_tab_container_model.dart';
part 'search_result_profile_tab_container_event.dart';
part 'search_result_profile_tab_container_state.dart';

/// A bloc that manages the state of a SearchResultProfileTabContainer according to the event that is dispatched to it.
class SearchResultProfileTabContainerBloc extends Bloc<
    SearchResultProfileTabContainerEvent,
    SearchResultProfileTabContainerState> {
  SearchResultProfileTabContainerBloc(
      SearchResultProfileTabContainerState initialState)
      : super(initialState) {
    on<SearchResultProfileTabContainerInitialEvent>(_onInitialize);
  }

  _onInitialize(
    SearchResultProfileTabContainerInitialEvent event,
    Emitter<SearchResultProfileTabContainerState> emit,
  ) async {
    emit(state.copyWith(
      searchController: TextEditingController(),
    ));
  }
}
