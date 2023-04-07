import 'package:dio/dio.dart';
import 'package:fitt/data/models/request/partner_club/get_partner_clubs_request_body.dart';
import 'package:fitt/data/models/request/user_batches/get_user_batches_request.dart';
import 'package:fitt/data/models/response/partner_club/partner_club_slice.dart';
import 'package:fitt/domain/entities/batch/batch.dart';
import 'package:fitt/domain/entities/batch/user_batch.dart';
import 'package:fitt/domain/entities/calculate_price/calculate_price.dart';
import 'package:fitt/domain/entities/club/partner_club.dart';
import 'package:retrofit/retrofit.dart';

part 'partner_club_api_client.g.dart';

@RestApi()
abstract class PartnerClubApiClient {
  factory PartnerClubApiClient(Dio dio, {String? baseUrl}) =
      _PartnerClubApiClient;

  @GET('user/slots/{slot_id}')
  Future<List<CalculatePrice>> getCalculatedPriceWorkout(
    @Path('slot_id') String slotUuid,
  );

  @POST('user/clubs/{uuid}/favorite/')
  Future<PartnerClub> addClubToFavorites(@Path('uuid') String uuid);

  @DELETE('user/clubs/{uuid}/favorite/')
  Future<PartnerClub> removeClubFromFavorites(@Path('uuid') String uuid);

  @GET('user/clubs/{id}')
  Future<PartnerClub> getPartnerClub(@Path('id') String uuid);

  @GET('user/clubs/{id}/batch-offers/')
  Future<List<Batch>> getClubBatches(@Path('id') String uuid);

  @GET('user/clubs')
  Future<PartnerClubSlice> getPartnerClubs(
    @Header('X-Position') String geolocation,
    @Queries() GetPartnerClubsRequestBody request,
  );

  @GET('user/batches/')
  Future<List<UserBatch>> getUserBatches(
    @Queries() GetUserBatchesRequest request,
  );

  @GET('user/batches/{id}/')
  Future<UserBatch> getUserBatch(@Path('uuid') String uuid);

  @POST('user/batches/{id}/cancel/')
  Future<UserBatch> cancelPurchasedBatch(
    @Path('uuid') String uuid,
    @Body() UserBatch userBatch,
  );
}
