import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import '../models/topalbumsglobal_item_model.dart';import '../models/charts_item_model.dart';import 'package:dhiwise_flutter_music_app/presentation/charts_screen/models/charts_model.dart';part 'charts_event.dart';part 'charts_state.dart';/// A bloc that manages the state of a Charts according to the event that is dispatched to it.
class ChartsBloc extends Bloc<ChartsEvent, ChartsState> {ChartsBloc(ChartsState initialState) : super(initialState) { on<ChartsInitialEvent>(_onInitialize); }

_onInitialize(ChartsInitialEvent event, Emitter<ChartsState> emit, ) async  { emit(state.copyWith(chartsModelObj: state.chartsModelObj?.copyWith(topalbumsglobalItemList: fillTopalbumsglobalItemList(), chartsItemList: fillChartsItemList()))); } 
List<TopalbumsglobalItemModel> fillTopalbumsglobalItemList() { return [TopalbumsglobalItemModel(price: "TOP\nALBUMS\nGLOBAL", loremIpsumDolor: "Top Albums Global"), TopalbumsglobalItemModel(price: "TOP\nALBUMS\nGLOBAL", loremIpsumDolor: "Top Albums United..")]; } 
List<ChartsItemModel> fillChartsItemList() { return [ChartsItemModel(price: "TOP\nALBUMS\nGLOBAL", loremIpsumDolor: "Top Albums Global"), ChartsItemModel(price: "TOP\nALBUMS\nGLOBAL", loremIpsumDolor: "Top Albums United..")]; } 
 }
