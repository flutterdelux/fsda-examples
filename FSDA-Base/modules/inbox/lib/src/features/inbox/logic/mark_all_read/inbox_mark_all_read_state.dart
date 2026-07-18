import 'package:app_core/app_core.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'inbox_mark_all_read_state.freezed.dart';

@freezed
sealed class InboxMarkAllReadState with _$InboxMarkAllReadState {
  const factory InboxMarkAllReadState.initial() = _Initial;
  const factory InboxMarkAllReadState.loading() = _Loading;
  const factory InboxMarkAllReadState.success() = _Success;
  const factory InboxMarkAllReadState.failure({required Failure failure}) =
      _Failure;
}
