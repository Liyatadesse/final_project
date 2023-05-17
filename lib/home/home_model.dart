// ignore: depend_on_referenced_packages
import 'package:equatable/equatable.dart';

class HomeModel extends Equatable {
  const HomeModel({
    required this.name,
  });
  final String name;

  @override
  List<Object> get props => [ name];

  Map<dynamic, dynamic> toMap() {
    return {
      'name': name,
    };
  }

  static HomeModel? fromMap(Map<dynamic, dynamic>? map) {
    if (map == null) {
      return null;
    }

    return HomeModel(
      name: map['name']!.toString(),
    );
  }

}

class HomeViewModel extends Equatable {
  const HomeViewModel({
    // TODO(all): add all required constructor parameters
    required this.items,
  });

  // TODO(all): declare your fields here
  final List<HomeModel>? items;

  @override
  List<Object?> get props => [items /*TODO(all): List all fields here*/];

  // TODO(all): implement copyWith
  HomeViewModel copyWith({
    List<HomeModel>? items,
  }) {
    return  HomeViewModel(
        items: items ?? this.items,
      );
  }
}
