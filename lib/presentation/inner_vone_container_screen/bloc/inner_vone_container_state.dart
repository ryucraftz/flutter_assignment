part of 'inner_vone_container_bloc.dart';

/// Represents the state of InnerVoneContainer in the application.

// ignore_for_file: must_be_immutable
class InnerVoneContainerState extends Equatable {
  InnerVoneContainerState({this.innerVoneContainerModelObj});

  InnerVoneContainerModel? innerVoneContainerModelObj;

  @override
  List<Object?> get props => [innerVoneContainerModelObj];
  InnerVoneContainerState copyWith(
      {InnerVoneContainerModel? innerVoneContainerModelObj}) {
    return InnerVoneContainerState(
      innerVoneContainerModelObj:
          innerVoneContainerModelObj ?? this.innerVoneContainerModelObj,
    );
  }
}
