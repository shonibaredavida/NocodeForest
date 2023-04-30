// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'nocode_tools_info_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<NocodeToolsInfoRecord> _$nocodeToolsInfoRecordSerializer =
    new _$NocodeToolsInfoRecordSerializer();

class _$NocodeToolsInfoRecordSerializer
    implements StructuredSerializer<NocodeToolsInfoRecord> {
  @override
  final Iterable<Type> types = const [
    NocodeToolsInfoRecord,
    _$NocodeToolsInfoRecord
  ];
  @override
  final String wireName = 'NocodeToolsInfoRecord';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, NocodeToolsInfoRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.title;
    if (value != null) {
      result
        ..add('title')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.desc;
    if (value != null) {
      result
        ..add('desc')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.tags;
    if (value != null) {
      result
        ..add('tags')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(String)])));
    }
    value = object.image;
    if (value != null) {
      result
        ..add('image')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.ffRef;
    if (value != null) {
      result
        ..add('Document__Reference__Field')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    return result;
  }

  @override
  NocodeToolsInfoRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new NocodeToolsInfoRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'title':
          result.title = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'desc':
          result.desc = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'tags':
          result.tags.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(String)]))!
              as BuiltList<Object?>);
          break;
        case 'image':
          result.image = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Document__Reference__Field':
          result.ffRef = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
      }
    }

    return result.build();
  }
}

class _$NocodeToolsInfoRecord extends NocodeToolsInfoRecord {
  @override
  final String? title;
  @override
  final String? desc;
  @override
  final BuiltList<String>? tags;
  @override
  final String? image;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$NocodeToolsInfoRecord(
          [void Function(NocodeToolsInfoRecordBuilder)? updates]) =>
      (new NocodeToolsInfoRecordBuilder()..update(updates))._build();

  _$NocodeToolsInfoRecord._(
      {this.title, this.desc, this.tags, this.image, this.ffRef})
      : super._();

  @override
  NocodeToolsInfoRecord rebuild(
          void Function(NocodeToolsInfoRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  NocodeToolsInfoRecordBuilder toBuilder() =>
      new NocodeToolsInfoRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is NocodeToolsInfoRecord &&
        title == other.title &&
        desc == other.desc &&
        tags == other.tags &&
        image == other.image &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, title.hashCode);
    _$hash = $jc(_$hash, desc.hashCode);
    _$hash = $jc(_$hash, tags.hashCode);
    _$hash = $jc(_$hash, image.hashCode);
    _$hash = $jc(_$hash, ffRef.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'NocodeToolsInfoRecord')
          ..add('title', title)
          ..add('desc', desc)
          ..add('tags', tags)
          ..add('image', image)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class NocodeToolsInfoRecordBuilder
    implements Builder<NocodeToolsInfoRecord, NocodeToolsInfoRecordBuilder> {
  _$NocodeToolsInfoRecord? _$v;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  String? _desc;
  String? get desc => _$this._desc;
  set desc(String? desc) => _$this._desc = desc;

  ListBuilder<String>? _tags;
  ListBuilder<String> get tags => _$this._tags ??= new ListBuilder<String>();
  set tags(ListBuilder<String>? tags) => _$this._tags = tags;

  String? _image;
  String? get image => _$this._image;
  set image(String? image) => _$this._image = image;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  NocodeToolsInfoRecordBuilder() {
    NocodeToolsInfoRecord._initializeBuilder(this);
  }

  NocodeToolsInfoRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _title = $v.title;
      _desc = $v.desc;
      _tags = $v.tags?.toBuilder();
      _image = $v.image;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(NocodeToolsInfoRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$NocodeToolsInfoRecord;
  }

  @override
  void update(void Function(NocodeToolsInfoRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  NocodeToolsInfoRecord build() => _build();

  _$NocodeToolsInfoRecord _build() {
    _$NocodeToolsInfoRecord _$result;
    try {
      _$result = _$v ??
          new _$NocodeToolsInfoRecord._(
              title: title,
              desc: desc,
              tags: _tags?.build(),
              image: image,
              ffRef: ffRef);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'tags';
        _tags?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'NocodeToolsInfoRecord', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
