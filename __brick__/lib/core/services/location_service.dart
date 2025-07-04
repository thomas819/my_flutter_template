// import 'package:geolocator/geolocator.dart';
//
// class LocationService {
//   Future<Position?> getCurrentPosition() async {
//     final hasPermission = await _handlePermission();
//     if (!hasPermission) return null;
//
//     return await Geolocator.getCurrentPosition(
//       desiredAccuracy: LocationAccuracy.high,
//     );
//   }
//
//   Future<bool> _handlePermission() async {
//     LocationPermission permission = await Geolocator.checkPermission();
//     if (permission == LocationPermission.deniedForever) return false;
//
//     if (permission == LocationPermission.denied) {
//       permission = await Geolocator.requestPermission();
//       return permission == LocationPermission.always || permission == LocationPermission.whileInUse;
//     }
//
//     return true;
//   }
// }
