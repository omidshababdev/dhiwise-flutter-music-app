import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import '../models/artistdetails_item_model.dart';import 'package:dhiwise_flutter_music_app/presentation/artist_details_screen/models/artist_details_model.dart';part 'artist_details_event.dart';part 'artist_details_state.dart';/// A bloc that manages the state of a ArtistDetails according to the event that is dispatched to it.
class ArtistDetailsBloc extends Bloc<ArtistDetailsEvent, ArtistDetailsState> {ArtistDetailsBloc(ArtistDetailsState initialState) : super(initialState) { on<ArtistDetailsInitialEvent>(_onInitialize); }

_onInitialize(ArtistDetailsInitialEvent event, Emitter<ArtistDetailsState> emit, ) async  { emit(state.copyWith(artistDetailsModelObj: state.artistDetailsModelObj?.copyWith(artistdetailsItemList: fillArtistdetailsItemList()))); } 
List<ArtistdetailsItemModel> fillArtistdetailsItemList() { return [ArtistdetailsItemModel(image: ImageConstant.imgImage60, songTitle: "Starboy", details: "The Weeknd, Daft Punk")]; } 
 }
