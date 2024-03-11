// ignore_for_file: must_be_immutable

part of 'data_saver_storage_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///DataSaverStorage widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class DataSaverStorageEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the DataSaverStorage widget is first created.
class DataSaverStorageInitialEvent extends DataSaverStorageEvent {
  @override
  List<Object?> get props => [];
}

///Event for changing switch
class ChangeSwitchEvent extends DataSaverStorageEvent {
  ChangeSwitchEvent({required this.value});

  bool value;

  @override
  List<Object?> get props => [
        value,
      ];
}

///Event for changing switch
class ChangeSwitch1Event extends DataSaverStorageEvent {
  ChangeSwitch1Event({required this.value});

  bool value;

  @override
  List<Object?> get props => [
        value,
      ];
}

///Event for changing switch
class ChangeSwitch2Event extends DataSaverStorageEvent {
  ChangeSwitch2Event({required this.value});

  bool value;

  @override
  List<Object?> get props => [
        value,
      ];
}
