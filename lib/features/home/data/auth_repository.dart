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
