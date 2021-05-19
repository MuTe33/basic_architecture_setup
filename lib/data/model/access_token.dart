import 'package:json_annotation/json_annotation.dart';

part 'access_token.g.dart';

@JsonSerializable()
class AccessToken {
  @JsonKey(name: 'access_token')
  final String accessToken;

  @JsonKey(name: 'token_type')
  final String tokenType;

  @JsonKey(name: 'expires_in')
  final int expiresIn;

  AccessToken(
    this.accessToken,
    this.tokenType,
    this.expiresIn,
  );

  factory AccessToken.fromJson(Map<String, dynamic> json) =>
      _$AccessTokenFromJson(json);

  Map<String, dynamic> toJson() => _$AccessTokenToJson(this);
}
