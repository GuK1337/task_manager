part of 'user_list_bloc.dart';

@freezed
sealed class UserListEvent with _$UserListEvent {
  const factory UserListEvent.loadData({
    String? query,
  }) = _LoadData;
}
