import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import '../models/topalbumsgloballist_item_model.dart';import 'package:dhiwise_flutter_music_app/presentation/top_albums_global_screen/models/top_albums_global_model.dart';part 'top_albums_global_event.dart';part 'top_albums_global_state.dart';/// A bloc that manages the state of a TopAlbumsGlobal according to the event that is dispatched to it.
class TopAlbumsGlobalBloc extends Bloc<TopAlbumsGlobalEvent, TopAlbumsGlobalState> {TopAlbumsGlobalBloc(TopAlbumsGlobalState initialState) : super(initialState) { on<TopAlbumsGlobalInitialEvent>(_onInitialize); }

_onInitialize(TopAlbumsGlobalInitialEvent event, Emitter<TopAlbumsGlobalState> emit, ) async  { emit(state.copyWith(topAlbumsGlobalModelObj: state.topAlbumsGlobalModelObj?.copyWith(topalbumsgloballistItemList: fillTopalbumsgloballistItemList()))); } 
List<TopalbumsgloballistItemModel> fillTopalbumsgloballistItemList() { return [TopalbumsgloballistItemModel(zero: "1", image: ImageConstant.imgImage27, songTitle: "HANDSOME", details: "Warren Hue", overflowMenu: ImageConstant.imgOverflowMenuOnprimarycontainer, image1: ImageConstant.imgCategoriesMore), TopalbumsgloballistItemModel(zero: "2", image: ImageConstant.imgImage28, songTitle: "Sharks", details: "Imagine Dragons", overflowMenu: ImageConstant.imgOverflowMenuOnprimarycontainer, image1: ImageConstant.imgCategoriesMore), TopalbumsgloballistItemModel(zero: "3", image: ImageConstant.imgImage29, songTitle: "Somebody’s Nobody", details: "Alexander 23", overflowMenu: ImageConstant.imgOverflowMenuOnprimarycontainer, image1: ImageConstant.imgCategoriesMore)]; } 
 }
