import 'package:fitt/core/locator/service_locator.dart';
import 'package:fitt/domain/entities/facility/facility.dart';
import 'package:fitt/domain/entities/price/price.dart';
import 'package:fitt/domain/repositories/resource/resource_repository.dart';

class ResourceUseCase {
  final resourceRepository = getIt<ResourceRepository>();

  Future<List<Facility>> getFacilities() async {
    final facilities = resourceRepository.getFacilities();
    return facilities;
  }

  Future<Price> getPrice() async {
    final price = await resourceRepository.getPrice();
    return price;
  }
}
