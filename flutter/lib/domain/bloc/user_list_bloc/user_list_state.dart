part of 'user_list_bloc.dart';

@freezed
class UserListState with _$UserListState {
  @Assert('status != UserListStatus.ready || users != null')
  const factory UserListState({
    @Default(UserListStatus.init) UserListStatus status,
    List<ShortUserInfo>? users,
  }) = _UserListState;
}

enum UserListStatus {
  init,
  loading,
  ready,
}

@freezed
class UserListSr with _$UserListSr {
  const factory UserListSr.error(String error) = ErrorSr;
}
