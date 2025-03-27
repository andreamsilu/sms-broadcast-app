// auth_repository.dart
import '../datasources/auth_remote_data_source.dart';
import '../models/user_model.dart';

class AuthRepository {
  final AuthRemoteDataSource remoteDataSource;

  AuthRepository({required this.remoteDataSource});

  Future<UserModel> login(String email, String password) async {
    return await remoteDataSource.login(email, password);
  }

  Future<UserModel> register(String name, String email, String password) async {
    return await remoteDataSource.register(name, email, password);
  }
}
