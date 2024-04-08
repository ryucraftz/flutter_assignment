import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';

/// This class is used in the [chipviewfull_item_widget] screen.
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class ChipviewfullItemModel extends Equatable {
  ChipviewfullItemModel({this.full, this.isSelected}) {
    full = full ?? "Full";
    isSelected = isSelected ?? false;
  }

  String? full;

  bool? isSelected;

  ChipviewfullItemModel copyWith({
    String? full,
    bool? isSelected,
  }) {
    return ChipviewfullItemModel(
      full: full ?? this.full,
      isSelected: isSelected ?? this.isSelected,
    );
  }

  @override
  List<Object?> get props => [full, isSelected];
}
