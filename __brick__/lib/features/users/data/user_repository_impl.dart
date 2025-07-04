import '../domain/user_entity.dart';
import '../domain/user_repository.dart';

class UserRepositoryImpl implements UserRepository {
  @override
  Future<UserEntity> fetchUser() async {
    return UserEntity("홍길동");
  }
}