// ignore_for_file: must_be_immutable

part of 'set_fingerprint_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///SetFingerprint widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class SetFingerprintEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the SetFingerprint widget is first created.
class SetFingerprintInitialEvent extends SetFingerprintEvent {
  @override
  List<Object?> get props => [];
}
