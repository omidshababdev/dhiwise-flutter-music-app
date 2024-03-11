// ignore_for_file: must_be_immutable

part of 'language_bloc.dart';

/// Represents the state of Language in the application.
class LanguageState extends Equatable {
  LanguageState({
    this.suggestedRadioGroup = "",
    this.othersRadioGroup = "",
    this.languageModelObj,
  });

  LanguageModel? languageModelObj;

  String suggestedRadioGroup;

  String othersRadioGroup;

  @override
  List<Object?> get props => [
        suggestedRadioGroup,
        othersRadioGroup,
        languageModelObj,
      ];

  LanguageState copyWith({
    String? suggestedRadioGroup,
    String? othersRadioGroup,
    LanguageModel? languageModelObj,
  }) {
    return LanguageState(
      suggestedRadioGroup: suggestedRadioGroup ?? this.suggestedRadioGroup,
      othersRadioGroup: othersRadioGroup ?? this.othersRadioGroup,
      languageModelObj: languageModelObj ?? this.languageModelObj,
    );
  }
}
