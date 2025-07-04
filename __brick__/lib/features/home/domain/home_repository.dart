import 'home_entity.dart';

abstract class HomeRepository {
  Future<HomeEntity> fetchHomeData();
}