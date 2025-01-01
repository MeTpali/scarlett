import 'dart:async';

import 'package:injectable/injectable.dart';

import '../models/meta/meta.dart';
import '../services/meta_service.dart';

@singleton
class MetaRepo {
  final MetaService _metaService;
  final StreamController<Meta> _controller;

  MetaRepo({
    required MetaService metaService,
  })  : _metaService = metaService,
        _controller = StreamController.broadcast();

  Stream<Meta> get stream => _controller.stream;
  Meta _meta = const Meta(meta: []);
  Meta get meta => _meta;

  @postConstruct
  void init() => unawaited(update());

  Future<void> update() async {
    try {
      final meta = await _metaService.getAll();
      _controller.sink.add(meta);
      _meta = meta;
    } catch (e) {
      print(e);
    }
  }
}
