import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import '../models/songs_item_model.dart';import 'package:dhiwise_flutter_music_app/presentation/songs_screen/models/songs_model.dart';part 'songs_event.dart';part 'songs_state.dart';/// A bloc that manages the state of a Songs according to the event that is dispatched to it.
class SongsBloc extends Bloc<SongsEvent, SongsState> {SongsBloc(SongsState initialState) : super(initialState) { on<SongsInitialEvent>(_onInitialize); }

_onInitialize(SongsInitialEvent event, Emitter<SongsState> emit, ) async  { emit(state.copyWith(songsModelObj: state.songsModelObj?.copyWith(songsItemList: fillSongsItemList()))); } 
List<SongsItemModel> fillSongsItemList() { return [SongsItemModel(image: ImageConstant.imgImage61, songTitle: "Starboy Speed Up", details: "Just Lowkey"), SongsItemModel(image: ImageConstant.imgImage63, songTitle: "Blinding Lights", details: "The Weeknd")]; } 
 }
