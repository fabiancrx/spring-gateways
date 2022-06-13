// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'slice_gateway.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SliceGateway extends SliceGateway {
  @override
  final int? size;
  @override
  final BuiltList<Gateway>? content;
  @override
  final int? number;
  @override
  final Sort? sort;
  @override
  final PageableObject? pageable;
  @override
  final bool? first;
  @override
  final bool? last;
  @override
  final int? numberOfElements;
  @override
  final bool? empty;

  factory _$SliceGateway([void Function(SliceGatewayBuilder)? updates]) =>
      (new SliceGatewayBuilder()..update(updates)).build();

  _$SliceGateway._(
      {this.size,
      this.content,
      this.number,
      this.sort,
      this.pageable,
      this.first,
      this.last,
      this.numberOfElements,
      this.empty})
      : super._();

  @override
  SliceGateway rebuild(void Function(SliceGatewayBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SliceGatewayBuilder toBuilder() => new SliceGatewayBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SliceGateway &&
        size == other.size &&
        content == other.content &&
        number == other.number &&
        sort == other.sort &&
        pageable == other.pageable &&
        first == other.first &&
        last == other.last &&
        numberOfElements == other.numberOfElements &&
        empty == other.empty;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc($jc($jc(0, size.hashCode), content.hashCode),
                                number.hashCode),
                            sort.hashCode),
                        pageable.hashCode),
                    first.hashCode),
                last.hashCode),
            numberOfElements.hashCode),
        empty.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('SliceGateway')
          ..add('size', size)
          ..add('content', content)
          ..add('number', number)
          ..add('sort', sort)
          ..add('pageable', pageable)
          ..add('first', first)
          ..add('last', last)
          ..add('numberOfElements', numberOfElements)
          ..add('empty', empty))
        .toString();
  }
}

class SliceGatewayBuilder
    implements Builder<SliceGateway, SliceGatewayBuilder> {
  _$SliceGateway? _$v;

  int? _size;
  int? get size => _$this._size;
  set size(int? size) => _$this._size = size;

  ListBuilder<Gateway>? _content;
  ListBuilder<Gateway> get content =>
      _$this._content ??= new ListBuilder<Gateway>();
  set content(ListBuilder<Gateway>? content) => _$this._content = content;

  int? _number;
  int? get number => _$this._number;
  set number(int? number) => _$this._number = number;

  SortBuilder? _sort;
  SortBuilder get sort => _$this._sort ??= new SortBuilder();
  set sort(SortBuilder? sort) => _$this._sort = sort;

  PageableObjectBuilder? _pageable;
  PageableObjectBuilder get pageable =>
      _$this._pageable ??= new PageableObjectBuilder();
  set pageable(PageableObjectBuilder? pageable) => _$this._pageable = pageable;

  bool? _first;
  bool? get first => _$this._first;
  set first(bool? first) => _$this._first = first;

  bool? _last;
  bool? get last => _$this._last;
  set last(bool? last) => _$this._last = last;

  int? _numberOfElements;
  int? get numberOfElements => _$this._numberOfElements;
  set numberOfElements(int? numberOfElements) =>
      _$this._numberOfElements = numberOfElements;

  bool? _empty;
  bool? get empty => _$this._empty;
  set empty(bool? empty) => _$this._empty = empty;

  SliceGatewayBuilder() {
    SliceGateway._defaults(this);
  }

  SliceGatewayBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _size = $v.size;
      _content = $v.content?.toBuilder();
      _number = $v.number;
      _sort = $v.sort?.toBuilder();
      _pageable = $v.pageable?.toBuilder();
      _first = $v.first;
      _last = $v.last;
      _numberOfElements = $v.numberOfElements;
      _empty = $v.empty;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SliceGateway other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$SliceGateway;
  }

  @override
  void update(void Function(SliceGatewayBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$SliceGateway build() {
    _$SliceGateway _$result;
    try {
      _$result = _$v ??
          new _$SliceGateway._(
              size: size,
              content: _content?.build(),
              number: number,
              sort: _sort?.build(),
              pageable: _pageable?.build(),
              first: first,
              last: last,
              numberOfElements: numberOfElements,
              empty: empty);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'content';
        _content?.build();

        _$failedField = 'sort';
        _sort?.build();
        _$failedField = 'pageable';
        _pageable?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'SliceGateway', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
