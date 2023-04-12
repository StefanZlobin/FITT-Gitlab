import 'package:json_annotation/json_annotation.dart';

part 'get_user_batches_request.g.dart';

@JsonSerializable()
class GetUserBatchesRequest {
  GetUserBatchesRequest({
    //this.limit = -1,
    //this.offset = 0,
    this.statusIn = 'ACTIVE, PREACTIVE',
    this.clubIdIn,
    this.expireAtGte,
    this.expireAtLte,
  });

  //@JsonKey(name: 'limit')
  //final int limit;
  //@JsonKey(name: 'offset')
  //final int offset;
  @JsonKey(name: 'status__in')
  final String statusIn;
  @JsonKey(name: 'club_id__in')
  final String? clubIdIn;
  @JsonKey(name: 'expire_at__gte')
  final String? expireAtGte;
  @JsonKey(name: 'expire_at__lte')
  final String? expireAtLte;

  Map<String, dynamic> toJson() => _$GetUserBatchesRequestToJson(this);
}
