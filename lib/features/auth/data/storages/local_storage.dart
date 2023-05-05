import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_flutter/hive_flutter.dart';

class LocalStorage<T> implements Box<T> {
  LocalStorage(this.name) : lazy = true;
  LocalStorage.lazy(this.name) : lazy = true;

  @override
  final String name;

  @override
  final bool lazy;

  late Box<T> _backend;
  Box<T> get backend => _backend;
  @protected
  set backend(Box<T> backend) {
    //assert(!_initialized, 'Can\'t reassign backend');
    _backend = backend;
    _initialized = true;
  }

  bool _initialized = false;
  void _checkInitialized() {
    if (!_initialized) {
      throw Exception(
        'You should call [open] first to initialize $LocalStorage',
      );
    }
  }

  Future<void> open() async {
    backend = await Hive.openBox<T>(name);
  }

  @override
  Future<int> add(T value) {
    _checkInitialized();
    return _backend.add(value);
  }

  @override
  Future<Iterable<int>> addAll(Iterable<T> values) {
    _checkInitialized();
    return _backend.addAll(values);
  }

  @override
  Future<int> clear() {
    _checkInitialized();
    return _backend.clear();
  }

  @override
  Future<void> close() async {
    _checkInitialized();
    await _backend.compact();
    await _backend.close();
  }

  @override
  bool containsKey(dynamic key) {
    _checkInitialized();
    return _backend.containsKey(key);
  }

  @override
  Future<void> delete(dynamic key) {
    _checkInitialized();
    return _backend.delete(key);
  }

  @override
  Future<void> deleteAll(Iterable keys) {
    _checkInitialized();
    return _backend.deleteAll(keys);
  }

  @override
  Future<void> deleteAt(int index) {
    _checkInitialized();
    return _backend.deleteAt(index);
  }

  @override
  Future<void> deleteFromDisk() {
    _checkInitialized();
    return _backend.deleteFromDisk();
  }

  @override
  T? get(dynamic key, {T? defaultValue}) {
    _checkInitialized();
    return _backend.get(key, defaultValue: defaultValue);
  }

  @override
  T? getAt(int index) {
    _checkInitialized();
    return _backend.getAt(index);
  }

  @override
  bool get isEmpty {
    _checkInitialized();
    return _backend.isEmpty;
  }

  @override
  bool get isNotEmpty => !isEmpty;

  @override
  bool get isOpen => _initialized;

  @override
  dynamic keyAt(int index) {
    _checkInitialized();
    return _backend.keyAt(index);
  }

  @override
  Iterable get keys {
    _checkInitialized();
    return _backend.keys;
  }

  @override
  int get length {
    _checkInitialized();
    return _backend.length;
  }

  @override
  String? get path {
    _checkInitialized();
    return _backend.path;
  }

  @override
  Future<void> put(dynamic key, T value) {
    _checkInitialized();
    return _backend.put(key, value);
  }

  @override
  Future<void> putAll(Map<dynamic, T> entries) {
    _checkInitialized();
    return _backend.putAll(entries);
  }

  @override
  Future<void> putAt(int index, T value) {
    _checkInitialized();
    return _backend.putAt(index, value);
  }

  @override
  Map<dynamic, T> toMap() {
    _checkInitialized();
    return _backend.toMap();
  }

  @override
  Iterable<T> get values {
    _checkInitialized();
    return _backend.values;
  }

  @override
  Iterable<T> valuesBetween({dynamic startKey, dynamic endKey}) {
    _checkInitialized();
    return _backend.valuesBetween(startKey: startKey, endKey: endKey);
  }

  @override
  Stream<BoxEvent> watch({dynamic key}) {
    _checkInitialized();
    return _backend.watch(key: key);
  }

  /// No-op storage is automatically compacted before close.
  @override
  Future<void> compact() {
    return Future<void>.sync(() => null);
  }

  @override
  Future<void> flush() {
    // TODO: implement flush
    throw UnimplementedError();
  }
}
