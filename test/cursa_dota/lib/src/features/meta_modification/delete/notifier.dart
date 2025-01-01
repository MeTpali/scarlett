import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../models/meta_modification/delete_meta_model/delete_meta_model.dart';
import '../../../repositories/meta_repo.dart';
import '../../../services/meta_service.dart';

class DeleteMetaNotifier extends StateNotifier<DeleteMetaModel> {
  final MetaService _metaService;
  final MetaRepo _metaRepo;
  DeleteMetaNotifier({
    required MetaService metaService,
    required MetaRepo metaRepo,
  })  : _metaService = metaService,
        _metaRepo = metaRepo,
        super(const DeleteMetaModel());

  void updateId(String value) {
    final id = value.isEmpty ? 0 : int.parse(value);
    final newState = state.copyWith(id: id);
    state = newState;
  }

  Future<void> delete([int? id]) async {
    await _metaService.deleteById(id ?? state.id);
    await _metaRepo.update();
  }
}
