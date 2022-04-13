// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'request_body.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$NetworkRequestBodyTearOff {
  const _$NetworkRequestBodyTearOff();

  Empty empty() {
    return const Empty();
  }

  Json json(Map<String, dynamic> data) {
    return Json(
      data,
    );
  }

  JsonArray jsonArray(List<dynamic> listData) {
    return JsonArray(
      listData,
    );
  }

  Text text(String data) {
    return Text(
      data,
    );
  }
}

/// @nodoc
const $NetworkRequestBody = _$NetworkRequestBodyTearOff();

/// @nodoc
mixin _$NetworkRequestBody {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() empty,
    required TResult Function(Map<String, dynamic> data) json,
    required TResult Function(List<dynamic> listData) jsonArray,
    required TResult Function(String data) text,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function(Map<String, dynamic> data)? json,
    TResult Function(List<dynamic> listData)? jsonArray,
    TResult Function(String data)? text,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function(Map<String, dynamic> data)? json,
    TResult Function(List<dynamic> listData)? jsonArray,
    TResult Function(String data)? text,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Empty value) empty,
    required TResult Function(Json value) json,
    required TResult Function(JsonArray value) jsonArray,
    required TResult Function(Text value) text,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Empty value)? empty,
    TResult Function(Json value)? json,
    TResult Function(JsonArray value)? jsonArray,
    TResult Function(Text value)? text,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Empty value)? empty,
    TResult Function(Json value)? json,
    TResult Function(JsonArray value)? jsonArray,
    TResult Function(Text value)? text,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NetworkRequestBodyCopyWith<$Res> {
  factory $NetworkRequestBodyCopyWith(
          NetworkRequestBody value, $Res Function(NetworkRequestBody) then) =
      _$NetworkRequestBodyCopyWithImpl<$Res>;
}

/// @nodoc
class _$NetworkRequestBodyCopyWithImpl<$Res>
    implements $NetworkRequestBodyCopyWith<$Res> {
  _$NetworkRequestBodyCopyWithImpl(this._value, this._then);

  final NetworkRequestBody _value;
  // ignore: unused_field
  final $Res Function(NetworkRequestBody) _then;
}

/// @nodoc
abstract class $EmptyCopyWith<$Res> {
  factory $EmptyCopyWith(Empty value, $Res Function(Empty) then) =
      _$EmptyCopyWithImpl<$Res>;
}

/// @nodoc
class _$EmptyCopyWithImpl<$Res> extends _$NetworkRequestBodyCopyWithImpl<$Res>
    implements $EmptyCopyWith<$Res> {
  _$EmptyCopyWithImpl(Empty _value, $Res Function(Empty) _then)
      : super(_value, (v) => _then(v as Empty));

  @override
  Empty get _value => super._value as Empty;
}

/// @nodoc

class _$Empty implements Empty {
  const _$Empty();

  @override
  String toString() {
    return 'NetworkRequestBody.empty()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is Empty);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() empty,
    required TResult Function(Map<String, dynamic> data) json,
    required TResult Function(List<dynamic> listData) jsonArray,
    required TResult Function(String data) text,
  }) {
    return empty();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function(Map<String, dynamic> data)? json,
    TResult Function(List<dynamic> listData)? jsonArray,
    TResult Function(String data)? text,
  }) {
    return empty?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function(Map<String, dynamic> data)? json,
    TResult Function(List<dynamic> listData)? jsonArray,
    TResult Function(String data)? text,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Empty value) empty,
    required TResult Function(Json value) json,
    required TResult Function(JsonArray value) jsonArray,
    required TResult Function(Text value) text,
  }) {
    return empty(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Empty value)? empty,
    TResult Function(Json value)? json,
    TResult Function(JsonArray value)? jsonArray,
    TResult Function(Text value)? text,
  }) {
    return empty?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Empty value)? empty,
    TResult Function(Json value)? json,
    TResult Function(JsonArray value)? jsonArray,
    TResult Function(Text value)? text,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(this);
    }
    return orElse();
  }
}

abstract class Empty implements NetworkRequestBody {
  const factory Empty() = _$Empty;
}

/// @nodoc
abstract class $JsonCopyWith<$Res> {
  factory $JsonCopyWith(Json value, $Res Function(Json) then) =
      _$JsonCopyWithImpl<$Res>;
  $Res call({Map<String, dynamic> data});
}

/// @nodoc
class _$JsonCopyWithImpl<$Res> extends _$NetworkRequestBodyCopyWithImpl<$Res>
    implements $JsonCopyWith<$Res> {
  _$JsonCopyWithImpl(Json _value, $Res Function(Json) _then)
      : super(_value, (v) => _then(v as Json));

  @override
  Json get _value => super._value as Json;

  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(Json(
      data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
    ));
  }
}

/// @nodoc

class _$Json implements Json {
  const _$Json(this.data);

  @override
  final Map<String, dynamic> data;

  @override
  String toString() {
    return 'NetworkRequestBody.json(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Json &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(data));

  @JsonKey(ignore: true)
  @override
  $JsonCopyWith<Json> get copyWith =>
      _$JsonCopyWithImpl<Json>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() empty,
    required TResult Function(Map<String, dynamic> data) json,
    required TResult Function(List<dynamic> listData) jsonArray,
    required TResult Function(String data) text,
  }) {
    return json(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function(Map<String, dynamic> data)? json,
    TResult Function(List<dynamic> listData)? jsonArray,
    TResult Function(String data)? text,
  }) {
    return json?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function(Map<String, dynamic> data)? json,
    TResult Function(List<dynamic> listData)? jsonArray,
    TResult Function(String data)? text,
    required TResult orElse(),
  }) {
    if (json != null) {
      return json(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Empty value) empty,
    required TResult Function(Json value) json,
    required TResult Function(JsonArray value) jsonArray,
    required TResult Function(Text value) text,
  }) {
    return json(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Empty value)? empty,
    TResult Function(Json value)? json,
    TResult Function(JsonArray value)? jsonArray,
    TResult Function(Text value)? text,
  }) {
    return json?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Empty value)? empty,
    TResult Function(Json value)? json,
    TResult Function(JsonArray value)? jsonArray,
    TResult Function(Text value)? text,
    required TResult orElse(),
  }) {
    if (json != null) {
      return json(this);
    }
    return orElse();
  }
}

abstract class Json implements NetworkRequestBody {
  const factory Json(Map<String, dynamic> data) = _$Json;

  Map<String, dynamic> get data;
  @JsonKey(ignore: true)
  $JsonCopyWith<Json> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $JsonArrayCopyWith<$Res> {
  factory $JsonArrayCopyWith(JsonArray value, $Res Function(JsonArray) then) =
      _$JsonArrayCopyWithImpl<$Res>;
  $Res call({List<dynamic> listData});
}

/// @nodoc
class _$JsonArrayCopyWithImpl<$Res>
    extends _$NetworkRequestBodyCopyWithImpl<$Res>
    implements $JsonArrayCopyWith<$Res> {
  _$JsonArrayCopyWithImpl(JsonArray _value, $Res Function(JsonArray) _then)
      : super(_value, (v) => _then(v as JsonArray));

  @override
  JsonArray get _value => super._value as JsonArray;

  @override
  $Res call({
    Object? listData = freezed,
  }) {
    return _then(JsonArray(
      listData == freezed
          ? _value.listData
          : listData // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
    ));
  }
}

/// @nodoc

class _$JsonArray implements JsonArray {
  const _$JsonArray(this.listData);

  @override
  final List<dynamic> listData;

  @override
  String toString() {
    return 'NetworkRequestBody.jsonArray(listData: $listData)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is JsonArray &&
            const DeepCollectionEquality().equals(other.listData, listData));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(listData));

  @JsonKey(ignore: true)
  @override
  $JsonArrayCopyWith<JsonArray> get copyWith =>
      _$JsonArrayCopyWithImpl<JsonArray>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() empty,
    required TResult Function(Map<String, dynamic> data) json,
    required TResult Function(List<dynamic> listData) jsonArray,
    required TResult Function(String data) text,
  }) {
    return jsonArray(listData);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function(Map<String, dynamic> data)? json,
    TResult Function(List<dynamic> listData)? jsonArray,
    TResult Function(String data)? text,
  }) {
    return jsonArray?.call(listData);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function(Map<String, dynamic> data)? json,
    TResult Function(List<dynamic> listData)? jsonArray,
    TResult Function(String data)? text,
    required TResult orElse(),
  }) {
    if (jsonArray != null) {
      return jsonArray(listData);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Empty value) empty,
    required TResult Function(Json value) json,
    required TResult Function(JsonArray value) jsonArray,
    required TResult Function(Text value) text,
  }) {
    return jsonArray(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Empty value)? empty,
    TResult Function(Json value)? json,
    TResult Function(JsonArray value)? jsonArray,
    TResult Function(Text value)? text,
  }) {
    return jsonArray?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Empty value)? empty,
    TResult Function(Json value)? json,
    TResult Function(JsonArray value)? jsonArray,
    TResult Function(Text value)? text,
    required TResult orElse(),
  }) {
    if (jsonArray != null) {
      return jsonArray(this);
    }
    return orElse();
  }
}

abstract class JsonArray implements NetworkRequestBody {
  const factory JsonArray(List<dynamic> listData) = _$JsonArray;

  List<dynamic> get listData;
  @JsonKey(ignore: true)
  $JsonArrayCopyWith<JsonArray> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TextCopyWith<$Res> {
  factory $TextCopyWith(Text value, $Res Function(Text) then) =
      _$TextCopyWithImpl<$Res>;
  $Res call({String data});
}

/// @nodoc
class _$TextCopyWithImpl<$Res> extends _$NetworkRequestBodyCopyWithImpl<$Res>
    implements $TextCopyWith<$Res> {
  _$TextCopyWithImpl(Text _value, $Res Function(Text) _then)
      : super(_value, (v) => _then(v as Text));

  @override
  Text get _value => super._value as Text;

  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(Text(
      data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$Text implements Text {
  const _$Text(this.data);

  @override
  final String data;

  @override
  String toString() {
    return 'NetworkRequestBody.text(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Text &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(data));

  @JsonKey(ignore: true)
  @override
  $TextCopyWith<Text> get copyWith =>
      _$TextCopyWithImpl<Text>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() empty,
    required TResult Function(Map<String, dynamic> data) json,
    required TResult Function(List<dynamic> listData) jsonArray,
    required TResult Function(String data) text,
  }) {
    return text(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function(Map<String, dynamic> data)? json,
    TResult Function(List<dynamic> listData)? jsonArray,
    TResult Function(String data)? text,
  }) {
    return text?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function(Map<String, dynamic> data)? json,
    TResult Function(List<dynamic> listData)? jsonArray,
    TResult Function(String data)? text,
    required TResult orElse(),
  }) {
    if (text != null) {
      return text(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Empty value) empty,
    required TResult Function(Json value) json,
    required TResult Function(JsonArray value) jsonArray,
    required TResult Function(Text value) text,
  }) {
    return text(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Empty value)? empty,
    TResult Function(Json value)? json,
    TResult Function(JsonArray value)? jsonArray,
    TResult Function(Text value)? text,
  }) {
    return text?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Empty value)? empty,
    TResult Function(Json value)? json,
    TResult Function(JsonArray value)? jsonArray,
    TResult Function(Text value)? text,
    required TResult orElse(),
  }) {
    if (text != null) {
      return text(this);
    }
    return orElse();
  }
}

abstract class Text implements NetworkRequestBody {
  const factory Text(String data) = _$Text;

  String get data;
  @JsonKey(ignore: true)
  $TextCopyWith<Text> get copyWith => throw _privateConstructorUsedError;
}
