import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/core/value_objects/unique_id.dart';

part 'seom_user.freezed.dart';

@freezed
class SeomUser with _$SeomUser {
  const factory SeomUser({
    required UniqueId id,
  }) = _SeomUser;
}
