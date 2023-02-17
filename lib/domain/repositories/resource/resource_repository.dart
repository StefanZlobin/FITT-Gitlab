import 'package:fitt/domain/entities/facility/facility.dart';
import 'package:fitt/domain/entities/price/price.dart';

/// Pulls resources from the backend to implement filtering
abstract class ResourceRepository {
  /// Get list of [Facility] for filtering partner Club or Map points
  Future<List<Facility>> getFacilities();

  /// Get [Price] for filtering partner Club or Map points
  Future<Price> getPrice();
}
