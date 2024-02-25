import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import '../models/followartistslist_item_model.dart';import 'package:dhiwise_flutter_music_app/presentation/follow_artists_screen/models/follow_artists_model.dart';part 'follow_artists_event.dart';part 'follow_artists_state.dart';/// A bloc that manages the state of a FollowArtists according to the event that is dispatched to it.
class FollowArtistsBloc extends Bloc<FollowArtistsEvent, FollowArtistsState> {FollowArtistsBloc(FollowArtistsState initialState) : super(initialState) { on<FollowArtistsInitialEvent>(_onInitialize); }

_onInitialize(FollowArtistsInitialEvent event, Emitter<FollowArtistsState> emit, ) async  { emit(state.copyWith(followArtistsModelObj: state.followArtistsModelObj?.copyWith(followartistslistItemList: fillFollowartistslistItemList())));NavigatorService.pushNamed(AppRoutes.homeContainerScreen, );NavigatorService.pushNamed(AppRoutes.homeContainerScreen, ); } 
List<FollowartistslistItemModel> fillFollowartistslistItemList() { return [FollowartistslistItemModel(theWeeknd: ImageConstant.imgEllipse1, artistName: "The Weeknd"), FollowartistslistItemModel(theWeeknd: ImageConstant.imgEllipse4, artistName: "Ryan Jones")]; } 
 }