import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';

/// This class is used in the [chipviewfull2_item_widget] screen.
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class Chipviewfull2ItemModel extends Equatable {
  Chipviewfull2ItemModel({this.full, this.isSelected}) {
    full = full ?? "Full";
    isSelected = isSelected ?? false;
  }

  String? full;

  bool? isSelected;

  Chipviewfull2ItemModel copyWith({
    String? full,
    bool? isSelected,
  }) {
    return Chipviewfull2ItemModel(
      full: full ?? this.full,
      isSelected: isSelected ?? this.isSelected,
    );
  }

  @override
  List<Object?> get props => [full, isSelected];
}
