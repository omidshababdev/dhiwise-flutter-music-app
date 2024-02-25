import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/searchtypekeywordlist_item_model.dart';
import 'package:dhiwise_flutter_music_app/presentation/search_type_keyword_screen/models/search_type_keyword_model.dart';
part 'search_type_keyword_event.dart';
part 'search_type_keyword_state.dart';

/// A bloc that manages the state of a SearchTypeKeyword according to the event that is dispatched to it.
class SearchTypeKeywordBloc
    extends Bloc<SearchTypeKeywordEvent, SearchTypeKeywordState> {
  SearchTypeKeywordBloc(SearchTypeKeywordState initialState)
      : super(initialState) {
    on<SearchTypeKeywordInitialEvent>(_onInitialize);
  }

  List<SearchtypekeywordlistItemModel> fillSearchtypekeywordlistItemList() {
    return [
      SearchtypekeywordlistItemModel(arianaGrande: "Ariana Grande"),
      SearchtypekeywordlistItemModel(arianaGrande: "Morgan Wallen"),
      SearchtypekeywordlistItemModel(arianaGrande: "Justin Bieber"),
      SearchtypekeywordlistItemModel(arianaGrande: "Drake"),
      SearchtypekeywordlistItemModel(arianaGrande: "Olivia Rodrigo"),
      SearchtypekeywordlistItemModel(arianaGrande: "The Weeknd"),
      SearchtypekeywordlistItemModel(arianaGrande: "Taylor Swift"),
      SearchtypekeywordlistItemModel(arianaGrande: "Juice Wrld")
    ];
  }

  _onInitialize(
    SearchTypeKeywordInitialEvent event,
    Emitter<SearchTypeKeywordState> emit,
  ) async {
    emit(state.copyWith(
      searchController: TextEditingController(),
    ));
    emit(state.copyWith(
        searchTypeKeywordModelObj: state.searchTypeKeywordModelObj?.copyWith(
      searchtypekeywordlistItemList: fillSearchtypekeywordlistItemList(),
    )));
  }
}
