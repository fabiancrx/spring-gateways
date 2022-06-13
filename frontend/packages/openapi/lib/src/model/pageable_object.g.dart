// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pageable_object.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PageableObject extends PageableObject {
  @override
  final int? offset;
  @override
  final Sort? sort;
  @override
  final int? pageNumber;
  @override
  final int? pageSize;
  @override
  final bool? paged;
  @override
  final bool? unpaged;

  factory _$PageableObject([void Function(PageableObjectBuilder)? updates]) =>
      (new PageableObjectBuilder()..update(updates)).build();

  _$PageableObject._(
      {this.offset,
      this.sort,
      this.pageNumber,
      this.pageSize,
      this.paged,
      this.unpaged})
      : super._();

  @override
  PageableObject rebuild(void Function(PageableObjectBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PageableObjectBuilder toBuilder() =>
      new PageableObjectBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PageableObject &&
        offset == other.offset &&
        sort == other.sort &&
        pageNumber == other.pageNumber &&
        pageSize == other.pageSize &&
        paged == other.paged &&
        unpaged == other.unpaged;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc($jc($jc(0, offset.hashCode), sort.hashCode),
                    pageNumber.hashCode),
                pageSize.hashCode),
            paged.hashCode),
        unpaged.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('PageableObject')
          ..add('offset', offset)
          ..add('sort', sort)
          ..add('pageNumber', pageNumber)
          ..add('pageSize', pageSize)
          ..add('paged', paged)
          ..add('unpaged', unpaged))
        .toString();
  }
}

class PageableObjectBuilder
    implements Builder<PageableObject, PageableObjectBuilder> {
  _$PageableObject? _$v;

  int? _offset;
  int? get offset => _$this._offset;
  set offset(int? offset) => _$this._offset = offset;

  SortBuilder? _sort;
  SortBuilder get sort => _$this._sort ??= new SortBuilder();
  set sort(SortBuilder? sort) => _$this._sort = sort;

  int? _pageNumber;
  int? get pageNumber => _$this._pageNumber;
  set pageNumber(int? pageNumber) => _$this._pageNumber = pageNumber;

  int? _pageSize;
  int? get pageSize => _$this._pageSize;
  set pageSize(int? pageSize) => _$this._pageSize = pageSize;

  bool? _paged;
  bool? get paged => _$this._paged;
  set paged(bool? paged) => _$this._paged = paged;

  bool? _unpaged;
  bool? get unpaged => _$this._unpaged;
  set unpaged(bool? unpaged) => _$this._unpaged = unpaged;

  PageableObjectBuilder() {
    PageableObject._defaults(this);
  }

  PageableObjectBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _offset = $v.offset;
      _sort = $v.sort?.toBuilder();
      _pageNumber = $v.pageNumber;
      _pageSize = $v.pageSize;
      _paged = $v.paged;
      _unpaged = $v.unpaged;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PageableObject other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$PageableObject;
  }

  @override
  void update(void Function(PageableObjectBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$PageableObject build() {
    _$PageableObject _$result;
    try {
      _$result = _$v ??
          new _$PageableObject._(
              offset: offset,
              sort: _sort?.build(),
              pageNumber: pageNumber,
              pageSize: pageSize,
              paged: paged,
              unpaged: unpaged);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'sort';
        _sort?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'PageableObject', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
