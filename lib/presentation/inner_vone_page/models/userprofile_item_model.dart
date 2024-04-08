/// This class is used in the [userprofile_item_widget] screen.

// ignore_for_file: must_be_immutable
class UserprofileItemModel {
  UserprofileItemModel(
      {this.username,
      this.coffeeDescripti,
      this.rating,
      this.ratingCount,
      this.id}) {
    username = username ?? "Hot Cappuccino";
    coffeeDescripti = coffeeDescripti ?? "Espresso, Steamed Milk";
    rating = rating ?? "4.9";
    ratingCount = ratingCount ?? "(458)";
    id = id ?? "";
  }

  String? username;

  String? coffeeDescripti;

  String? rating;

  String? ratingCount;

  String? id;
}
