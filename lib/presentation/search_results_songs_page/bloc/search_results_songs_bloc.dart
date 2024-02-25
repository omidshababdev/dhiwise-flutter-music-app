import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import '../models/searchresultssongs_item_model.dart';import 'package:dhiwise_flutter_music_app/presentation/search_results_songs_page/models/search_results_songs_model.dart';part 'search_results_songs_event.dart';part 'search_results_songs_state.dart';/// A bloc that manages the state of a SearchResultsSongs according to the event that is dispatched to it.
class SearchResultsSongsBloc extends Bloc<SearchResultsSongsEvent, SearchResultsSongsState> {SearchResultsSongsBloc(SearchResultsSongsState initialState) : super(initialState) { on<SearchResultsSongsInitialEvent>(_onInitialize); }

_onInitialize(SearchResultsSongsInitialEvent event, Emitter<SearchResultsSongsState> emit, ) async  { emit(state.copyWith(searchResultsSongsModelObj: state.searchResultsSongsModelObj?.copyWith(searchresultssongsItemList: fillSearchresultssongsItemList()))); } 
List<SearchresultssongsItemModel> fillSearchresultssongsItemList() { return [SearchresultssongsItemModel(image: ImageConstant.imgImage54, songTitle: "Starboy", details: "The Weeknd, Daft Punk"), SearchresultssongsItemModel(image: ImageConstant.imgImage58, songTitle: "The Hills", details: "The Weeknd"), SearchresultssongsItemModel(image: ImageConstant.imgImage59, songTitle: "I Feel It Coming", details: "The Weeknd, Daft Punk")]; } 
 }