import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:dhiwise_flutter_music_app/presentation/your_likes_tab_container_screen/models/your_likes_tab_container_model.dart';
part 'your_likes_tab_container_event.dart';
part 'your_likes_tab_container_state.dart';

/// A bloc that manages the state of a YourLikesTabContainer according to the event that is dispatched to it.
class YourLikesTabContainerBloc
    extends Bloc<YourLikesTabContainerEvent, YourLikesTabContainerState> {
  YourLikesTabContainerBloc(YourLikesTabContainerState initialState)
      : super(initialState) {
    on<YourLikesTabContainerInitialEvent>(_onInitialize);
  }

  _onInitialize(
    YourLikesTabContainerInitialEvent event,
    Emitter<YourLikesTabContainerState> emit,
  ) async {}
}
