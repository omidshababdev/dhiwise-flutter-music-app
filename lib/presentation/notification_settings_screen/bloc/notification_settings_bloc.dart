import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:dhiwise_flutter_music_app/presentation/notification_settings_screen/models/notification_settings_model.dart';part 'notification_settings_event.dart';part 'notification_settings_state.dart';/// A bloc that manages the state of a NotificationSettings according to the event that is dispatched to it.
class NotificationSettingsBloc extends Bloc<NotificationSettingsEvent, NotificationSettingsState> {NotificationSettingsBloc(NotificationSettingsState initialState) : super(initialState) { on<NotificationSettingsInitialEvent>(_onInitialize); }

_onInitialize(NotificationSettingsInitialEvent event, Emitter<NotificationSettingsState> emit, ) async  {  } 
 }
