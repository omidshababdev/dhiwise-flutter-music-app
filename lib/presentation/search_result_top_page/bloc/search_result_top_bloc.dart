import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import '../models/songlist_item_model.dart';import '../models/teenagedreamlist_item_model.dart';import 'package:dhiwise_flutter_music_app/presentation/search_result_top_page/models/search_result_top_model.dart';part 'search_result_top_event.dart';part 'search_result_top_state.dart';/// A bloc that manages the state of a SearchResultTop according to the event that is dispatched to it.
class SearchResultTopBloc extends Bloc<SearchResultTopEvent, SearchResultTopState> {SearchResultTopBloc(SearchResultTopState initialState) : super(initialState) { on<SearchResultTopInitialEvent>(_onInitialize); }

_onInitialize(SearchResultTopInitialEvent event, Emitter<SearchResultTopState> emit, ) async  { emit(state.copyWith(searchResultTopModelObj: state.searchResultTopModelObj?.copyWith(songlistItemList: fillSonglistItemList(), teenagedreamlistItemList: fillTeenagedreamlistItemList()))); } 
List<SonglistItemModel> fillSonglistItemList() { return [SonglistItemModel(handsome: ImageConstant.imgImage27, songTitle: "HANDSOME", details: "Warren Hue", overflowMenu: ImageConstant.imgOverflowMenuOnprimarycontainer, handsome1: ImageConstant.imgCategoriesMore), SonglistItemModel(handsome: ImageConstant.imgImage52, songTitle: "Firework Cover", details: "The Sappear", overflowMenu: ImageConstant.imgOverflowMenuOnprimarycontainer, handsome1: ImageConstant.imgVectorGray90001)]; } 
List<TeenagedreamlistItemModel> fillTeenagedreamlistItemList() { return List.generate(1, (index) => TeenagedreamlistItemModel()); } 
 }
