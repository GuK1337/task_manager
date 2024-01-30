import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'short_user_info.freezed.dart';
part 'short_user_info.g.dart';

@freezed
class ShortUserInfo with _$ShortUserInfo {
  const factory ShortUserInfo({
    required int id,
    required String username,
  }) = _ShortUserInfo;

  factory ShortUserInfo.fromJson(Map<String, dynamic> json) =>
      _$ShortUserInfoFromJson(json);
}
