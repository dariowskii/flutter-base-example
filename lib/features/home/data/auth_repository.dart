import 'package:dio/dio.dart';
import 'package:flutter_base_example/features/home/domain/person.dart';
import 'package:retrofit/retrofit.dart';

part 'auth_repository.g.dart';

@RestApi(baseUrl: 'https://api.example.com')
abstract class AuthRepository {
  factory AuthRepository(Dio dio, {String baseUrl}) = _AuthRepository;

  @POST("/auth/users")
  Future<HttpResponse<List<Person>>> getUsers();
}

class MockAuthRepository implements AuthRepository {
  final Dio _dio;

  MockAuthRepository(this._dio);

  @override
  Future<HttpResponse<List<Person>>> getUsers() async {
    await Future.delayed(const Duration(seconds: 1));
    return HttpResponse([
      const Person(firstName: 'John', lastName: 'Doe', age: 30),
      const Person(firstName: 'Jane', lastName: 'Doe', age: 25),
    ], Response(requestOptions: RequestOptions(path: '/auth/users')));
  }
}
