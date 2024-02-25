import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:dhiwise_flutter_music_app/presentation/new_playlist_bottomsheet/models/new_playlist_model.dart';
part 'new_playlist_event.dart';
part 'new_playlist_state.dart';

/// A bloc that manages the state of a NewPlaylist according to the event that is dispatched to it.
class NewPlaylistBloc extends Bloc<NewPlaylistEvent, NewPlaylistState> {
  NewPlaylistBloc(NewPlaylistState initialState) : super(initialState) {
    on<NewPlaylistInitialEvent>(_onInitialize);
    on<ChangeDropDownEvent>(_changeDropDown);
  }

  _changeDropDown(
    ChangeDropDownEvent event,
    Emitter<NewPlaylistState> emit,
  ) {
    emit(state.copyWith(
      selectedDropDownValue: event.value,
    ));
  }

  List<SelectionPopupModel> fillDropdownItemList() {
    return [
      SelectionPopupModel(
        id: 1,
        title: "Item One",
        isSelected: true,
      ),
      SelectionPopupModel(
        id: 2,
        title: "Item Two",
      ),
      SelectionPopupModel(
        id: 3,
        title: "Item Three",
      )
    ];
  }

  _onInitialize(
    NewPlaylistInitialEvent event,
    Emitter<NewPlaylistState> emit,
  ) async {
    emit(state.copyWith(
      labelEditTextController: TextEditingController(),
      dateEditTextController: TextEditingController(),
    ));
    emit(state.copyWith(
        newPlaylistModelObj: state.newPlaylistModelObj?.copyWith(
      dropdownItemList: fillDropdownItemList(),
    )));
  }
}
