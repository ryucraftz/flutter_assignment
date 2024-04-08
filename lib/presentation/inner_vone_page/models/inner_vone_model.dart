import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import 'userprofile_item_model.dart';

/// This class defines the variables used in the [inner_vone_page],
/// and is typically used to hold data that is passed between different parts of the application.
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class InnerVoneModel extends Equatable {
  InnerVoneModel({this.userprofileItemList = const []});

  List<UserprofileItemModel> userprofileItemList;

  InnerVoneModel copyWith({List<UserprofileItemModel>? userprofileItemList}) {
    return InnerVoneModel(
      userprofileItemList: userprofileItemList ?? this.userprofileItemList,
    );
  }

  @override
  List<Object?> get props => [userprofileItemList];
}
