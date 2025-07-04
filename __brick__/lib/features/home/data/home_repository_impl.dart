import '../domain/home_entity.dart';
import '../domain/home_repository.dart';

class HomeRepositoryImpl implements HomeRepository {
  @override
  Future<HomeEntity> fetchHomeData() async {
    return HomeEntity("홈 데이터");
  }
}