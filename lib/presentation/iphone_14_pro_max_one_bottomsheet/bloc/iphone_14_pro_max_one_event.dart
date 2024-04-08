part of 'iphone_14_pro_max_one_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Iphone14ProMaxOne widget.
///
/// Events must be immutable and implement the [Equatable] interface.
class Iphone14ProMaxOneEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the Iphone14ProMaxOne widget is first created.
class Iphone14ProMaxOneInitialEvent extends Iphone14ProMaxOneEvent {
  @override
  List<Object?> get props => [];
}

///Event for changing ChipView selection

// ignore_for_file: must_be_immutable
class UpdateChipViewEvent extends Iphone14ProMaxOneEvent {
  UpdateChipViewEvent({required this.index, this.isSelected});

  int index;

  bool? isSelected;

  @override
  List<Object?> get props => [index, isSelected];
}

///Event for changing switch

// ignore_for_file: must_be_immutable
class ChangeSwitchEvent extends Iphone14ProMaxOneEvent {
  ChangeSwitchEvent({required this.value});

  bool value;

  @override
  List<Object?> get props => [value];
}

///Event for changing switch

// ignore_for_file: must_be_immutable
class ChangeSwitch1Event extends Iphone14ProMaxOneEvent {
  ChangeSwitch1Event({required this.value});

  bool value;

  @override
  List<Object?> get props => [value];
}

///Event for changing switch

// ignore_for_file: must_be_immutable
class ChangeSwitch2Event extends Iphone14ProMaxOneEvent {
  ChangeSwitch2Event({required this.value});

  bool value;

  @override
  List<Object?> get props => [value];
}

///Event for changing switch

// ignore_for_file: must_be_immutable
class ChangeSwitch3Event extends Iphone14ProMaxOneEvent {
  ChangeSwitch3Event({required this.value});

  bool value;

  @override
  List<Object?> get props => [value];
}

///Event for changing switch

// ignore_for_file: must_be_immutable
class ChangeSwitch4Event extends Iphone14ProMaxOneEvent {
  ChangeSwitch4Event({required this.value});

  bool value;

  @override
  List<Object?> get props => [value];
}

///Event for changing switch

// ignore_for_file: must_be_immutable
class ChangeSwitch5Event extends Iphone14ProMaxOneEvent {
  ChangeSwitch5Event({required this.value});

  bool value;

  @override
  List<Object?> get props => [value];
}

///Event for changing switch

// ignore_for_file: must_be_immutable
class ChangeSwitch6Event extends Iphone14ProMaxOneEvent {
  ChangeSwitch6Event({required this.value});

  bool value;

  @override
  List<Object?> get props => [value];
}

///Event for changing switch

// ignore_for_file: must_be_immutable
class ChangeSwitch7Event extends Iphone14ProMaxOneEvent {
  ChangeSwitch7Event({required this.value});

  bool value;

  @override
  List<Object?> get props => [value];
}

///Event for changing switch

// ignore_for_file: must_be_immutable
class ChangeSwitch8Event extends Iphone14ProMaxOneEvent {
  ChangeSwitch8Event({required this.value});

  bool value;

  @override
  List<Object?> get props => [value];
}

///Event for changing switch

// ignore_for_file: must_be_immutable
class ChangeSwitch9Event extends Iphone14ProMaxOneEvent {
  ChangeSwitch9Event({required this.value});

  bool value;

  @override
  List<Object?> get props => [value];
}

///Event for changing switch

// ignore_for_file: must_be_immutable
class ChangeSwitch10Event extends Iphone14ProMaxOneEvent {
  ChangeSwitch10Event({required this.value});

  bool value;

  @override
  List<Object?> get props => [value];
}

///Event for changing checkbox

// ignore_for_file: must_be_immutable
class ChangeCheckBoxEvent extends Iphone14ProMaxOneEvent {
  ChangeCheckBoxEvent({required this.value});

  bool value;

  @override
  List<Object?> get props => [value];
}
