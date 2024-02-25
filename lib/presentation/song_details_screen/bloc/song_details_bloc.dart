import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import '../models/songdetails_item_model.dart';import 'package:dhiwise_flutter_music_app/presentation/song_details_screen/models/song_details_model.dart';part 'song_details_event.dart';part 'song_details_state.dart';/// A bloc that manages the state of a SongDetails according to the event that is dispatched to it.
class SongDetailsBloc extends Bloc<SongDetailsEvent, SongDetailsState> {SongDetailsBloc(SongDetailsState initialState) : super(initialState) { on<SongDetailsInitialEvent>(_onInitialize); }

_onInitialize(SongDetailsInitialEvent event, Emitter<SongDetailsState> emit, ) async  { emit(state.copyWith(songDetailsModelObj: state.songDetailsModelObj?.copyWith(songdetailsItemList: fillSongdetailsItemList()))); } 
List<SongdetailsItemModel> fillSongdetailsItemList() { return [SongdetailsItemModel(image: ImageConstant.imgImage60, songTitle: "Starboy", details: "The Weeknd, Daft Punk")]; } 
 }
