import 'package:bloc/bloc.dart';
import 'package:fitt/domain/entities/filters/club_filters.dart';
import 'package:fitt/domain/use_cases/resource/resource_use_case.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'resource_cubit.freezed.dart';
part 'resource_state.dart';

class ResourceCubit extends Cubit<ResourceState> {
  ResourceCubit() : super(const ResourceState.initial());

  final resourceUseCase = ResourceUseCase();

  Future<void> getClubFilters() async {
    try {
      final facilities = await resourceUseCase.getFacilities();
      final price = await resourceUseCase.getPrice();
      emit(
        ResourceState.loaded(
          filters: ClubFilters(
            maxPrice: price.maxPrice,
            minPrice: price.minPrice,
            facilities: facilities,
          ),
        ),
      );
    } on Exception catch (e) {
      emit(ResourceState.error(error: e.toString()));
    }
  }
}
