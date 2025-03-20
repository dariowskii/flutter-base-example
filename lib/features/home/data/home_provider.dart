import 'package:flutter_base_example/features/home/data/auth_repository.dart';
import 'package:flutter_base_example/features/home/domain/person.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'home_provider.g.dart';
part 'home_provider.freezed.dart';

@freezed
abstract class HomeWrapper with _$HomeWrapper {
  const factory HomeWrapper({required List<Person> people}) = _HomeWrapper;
}

@riverpod
class Home extends _$Home {
  @override
  Future<HomeWrapper> build() async {
    final response = await ref.read(authProvider).getUsers();
    return HomeWrapper(people: response.data);
  }
}
