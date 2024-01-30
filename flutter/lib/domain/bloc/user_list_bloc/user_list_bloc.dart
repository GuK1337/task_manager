import 'package:bloc/bloc.dart';
import 'package:example_app/data/models/short_user_info/short_user_info.dart';
import 'package:example_app/domain/interactor/user_interactor.dart';
import 'package:example_app/utils/dio_error_handler/dio_error_handler.dart';
import 'package:example_app/utils/event_transformer.dart';
import 'package:example_app/utils/sr_bloc/sr_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'user_list_event.dart';
part 'user_list_state.dart';
part 'user_list_bloc.freezed.dart';

@injectable
class UserListBloc extends SrBloc<UserListEvent, UserListState, UserListSr> {
  UserListBloc({
    required this.userInterator,
  }) : super(const UserListState()) {
    on<_LoadData>(
      _loadData,
      transformer: debounce(
        const Duration(milliseconds: 500),
      ),
    );
  }

  @protected
  final UserInterator userInterator;

  Future<void> _loadData(_LoadData event, Emitter<UserListState> emit) async {
    if (state.status == UserListStatus.init) {
      emit(state.copyWith(status: UserListStatus.loading));
    }
    final response = await userInterator.userList(event.query);
    if (response.hasError) {
      addSr(
        UserListSr.error(
          ErrorMessages.getMessage(response.error),
        ),
      );
      return;
    }
    emit(
      state.copyWith(status: UserListStatus.ready, users: response.result),
    );

    print(state);
  }
}
