part of 'iphone_14_pro_max_two_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Iphone14ProMaxTwo widget.
///
/// Events must be immutable and implement the [Equatable] interface.
class Iphone14ProMaxTwoEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the Iphone14ProMaxTwo widget is first created.
class Iphone14ProMaxTwoInitialEvent extends Iphone14ProMaxTwoEvent {
  @override
  List<Object?> get props => [];
}

///Event for changing ChipView selection

// ignore_for_file: must_be_immutable
class UpdateChipViewEvent extends Iphone14ProMaxTwoEvent {
  UpdateChipViewEvent({required this.index, this.isSelected});

  int index;

  bool? isSelected;

  @override
  List<Object?> get props => [index, isSelected];
}

///Event for changing switch

// ignore_for_file: must_be_immutable
class ChangeSwitchEvent extends Iphone14ProMaxTwoEvent {
  ChangeSwitchEvent({required this.value});

  bool value;

  @override
  List<Object?> get props => [value];
}

///Event for changing switch

// ignore_for_file: must_be_immutable
class ChangeSwitch1Event extends Iphone14ProMaxTwoEvent {
  ChangeSwitch1Event({required this.value});

  bool value;

  @override
  List<Object?> get props => [value];
}

///Event for changing switch

// ignore_for_file: must_be_immutable
class ChangeSwitch2Event extends Iphone14ProMaxTwoEvent {
  ChangeSwitch2Event({required this.value});

  bool value;

  @override
  List<Object?> get props => [value];
}

///Event for changing switch

// ignore_for_file: must_be_immutable
class ChangeSwitch3Event extends Iphone14ProMaxTwoEvent {
  ChangeSwitch3Event({required this.value});

  bool value;

  @override
  List<Object?> get props => [value];
}

///Event for changing switch

// ignore_for_file: must_be_immutable
class ChangeSwitch4Event extends Iphone14ProMaxTwoEvent {
  ChangeSwitch4Event({required this.value});

  bool value;

  @override
  List<Object?> get props => [value];
}

///Event for changing switch

// ignore_for_file: must_be_immutable
class ChangeSwitch5Event extends Iphone14ProMaxTwoEvent {
  ChangeSwitch5Event({required this.value});

  bool value;

  @override
  List<Object?> get props => [value];
}

///Event for changing switch

// ignore_for_file: must_be_immutable
class ChangeSwitch6Event extends Iphone14ProMaxTwoEvent {
  ChangeSwitch6Event({required this.value});

  bool value;

  @override
  List<Object?> get props => [value];
}

///Event for changing switch

// ignore_for_file: must_be_immutable
class ChangeSwitch7Event extends Iphone14ProMaxTwoEvent {
  ChangeSwitch7Event({required this.value});

  bool value;

  @override
  List<Object?> get props => [value];
}

///Event for changing switch

// ignore_for_file: must_be_immutable
class ChangeSwitch8Event extends Iphone14ProMaxTwoEvent {
  ChangeSwitch8Event({required this.value});

  bool value;

  @override
  List<Object?> get props => [value];
}

///Event for changing switch

// ignore_for_file: must_be_immutable
class ChangeSwitch9Event extends Iphone14ProMaxTwoEvent {
  ChangeSwitch9Event({required this.value});

  bool value;

  @override
  List<Object?> get props => [value];
}

///Event for changing switch

// ignore_for_file: must_be_immutable
class ChangeSwitch10Event extends Iphone14ProMaxTwoEvent {
  ChangeSwitch10Event({required this.value});

  bool value;

  @override
  List<Object?> get props => [value];
}

///Event for changing checkbox

// ignore_for_file: must_be_immutable
class ChangeCheckBoxEvent extends Iphone14ProMaxTwoEvent {
  ChangeCheckBoxEvent({required this.value});

  bool value;

  @override
  List<Object?> get props => [value];
}
