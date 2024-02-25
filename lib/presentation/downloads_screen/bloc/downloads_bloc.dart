import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import '../models/downloads_item_model.dart';import 'package:dhiwise_flutter_music_app/presentation/downloads_screen/models/downloads_model.dart';part 'downloads_event.dart';part 'downloads_state.dart';/// A bloc that manages the state of a Downloads according to the event that is dispatched to it.
class DownloadsBloc extends Bloc<DownloadsEvent, DownloadsState> {DownloadsBloc(DownloadsState initialState) : super(initialState) { on<DownloadsInitialEvent>(_onInitialize); }

_onInitialize(DownloadsInitialEvent event, Emitter<DownloadsState> emit, ) async  { emit(state.copyWith(downloadsModelObj: state.downloadsModelObj?.copyWith(downloadsItemList: fillDownloadsItemList()))); } 
List<DownloadsItemModel> fillDownloadsItemList() { return [DownloadsItemModel(image: ImageConstant.imgImage61, songTitle: "Starboy Speed Up", details: "Just Lowkey"), DownloadsItemModel(image: ImageConstant.imgImage63, songTitle: "Blinding Lights", details: "The Weeknd")]; } 
 }
