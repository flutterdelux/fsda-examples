import 'package:app_core/app_core.dart';

import '../repositories/inbox_repository.dart';

class InboxMarkAllReadUseCase extends NoParamUseCase<void> {
  final InboxRepository _repository;

  const InboxMarkAllReadUseCase({required InboxRepository inboxRepository})
    : _repository = inboxRepository;

  @override
  AsyncResult<void> call() => _repository.markAllInboxRead();
}
