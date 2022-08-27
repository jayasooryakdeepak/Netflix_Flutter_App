// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'downloads.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Downloads _$DownloadsFromJson(Map<String, dynamic> json) {
  return _Downloads.fromJson(json);
}

/// @nodoc
class _$DownloadsTearOff {
  const _$DownloadsTearOff();

  _Downloads call(
      {@JsonKey(name: "poster_path") required String? posterPath,
      @JsonKey(name: "backdrop_path") required String? backdrop_path,
      @JsonKey(name: "title") required String? title,
      @JsonKey(name: "name") required String? name}) {
    return _Downloads(
      posterPath: posterPath,
      backdrop_path: backdrop_path,
      title: title,
      name: name,
    );
  }

  Downloads fromJson(Map<String, Object?> json) {
    return Downloads.fromJson(json);
  }
}

/// @nodoc
const $Downloads = _$DownloadsTearOff();

/// @nodoc
mixin _$Downloads {
  @JsonKey(name: "poster_path")
  String? get posterPath => throw _privateConstructorUsedError;
  @JsonKey(name: "backdrop_path")
  String? get backdrop_path => throw _privateConstructorUsedError;
  @JsonKey(name: "title")
  String? get title => throw _privateConstructorUsedError;
  @JsonKey(name: "name")
  String? get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DownloadsCopyWith<Downloads> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DownloadsCopyWith<$Res> {
  factory $DownloadsCopyWith(Downloads value, $Res Function(Downloads) then) =
      _$DownloadsCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: "poster_path") String? posterPath,
      @JsonKey(name: "backdrop_path") String? backdrop_path,
      @JsonKey(name: "title") String? title,
      @JsonKey(name: "name") String? name});
}

/// @nodoc
class _$DownloadsCopyWithImpl<$Res> implements $DownloadsCopyWith<$Res> {
  _$DownloadsCopyWithImpl(this._value, this._then);

  final Downloads _value;
  // ignore: unused_field
  final $Res Function(Downloads) _then;

  @override
  $Res call({
    Object? posterPath = freezed,
    Object? backdrop_path = freezed,
    Object? title = freezed,
    Object? name = freezed,
  }) {
    return _then(_value.copyWith(
      posterPath: posterPath == freezed
          ? _value.posterPath
          : posterPath // ignore: cast_nullable_to_non_nullable
              as String?,
      backdrop_path: backdrop_path == freezed
          ? _value.backdrop_path
          : backdrop_path // ignore: cast_nullable_to_non_nullable
              as String?,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$DownloadsCopyWith<$Res> implements $DownloadsCopyWith<$Res> {
  factory _$DownloadsCopyWith(
          _Downloads value, $Res Function(_Downloads) then) =
      __$DownloadsCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: "poster_path") String? posterPath,
      @JsonKey(name: "backdrop_path") String? backdrop_path,
      @JsonKey(name: "title") String? title,
      @JsonKey(name: "name") String? name});
}

/// @nodoc
class __$DownloadsCopyWithImpl<$Res> extends _$DownloadsCopyWithImpl<$Res>
    implements _$DownloadsCopyWith<$Res> {
  __$DownloadsCopyWithImpl(_Downloads _value, $Res Function(_Downloads) _then)
      : super(_value, (v) => _then(v as _Downloads));

  @override
  _Downloads get _value => super._value as _Downloads;

  @override
  $Res call({
    Object? posterPath = freezed,
    Object? backdrop_path = freezed,
    Object? title = freezed,
    Object? name = freezed,
  }) {
    return _then(_Downloads(
      posterPath: posterPath == freezed
          ? _value.posterPath
          : posterPath // ignore: cast_nullable_to_non_nullable
              as String?,
      backdrop_path: backdrop_path == freezed
          ? _value.backdrop_path
          : backdrop_path // ignore: cast_nullable_to_non_nullable
              as String?,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Downloads implements _Downloads {
  const _$_Downloads(
      {@JsonKey(name: "poster_path") required this.posterPath,
      @JsonKey(name: "backdrop_path") required this.backdrop_path,
      @JsonKey(name: "title") required this.title,
      @JsonKey(name: "name") required this.name});

  factory _$_Downloads.fromJson(Map<String, dynamic> json) =>
      _$$_DownloadsFromJson(json);

  @override
  @JsonKey(name: "poster_path")
  final String? posterPath;
  @override
  @JsonKey(name: "backdrop_path")
  final String? backdrop_path;
  @override
  @JsonKey(name: "title")
  final String? title;
  @override
  @JsonKey(name: "name")
  final String? name;

  @override
  String toString() {
    return 'Downloads(posterPath: $posterPath, backdrop_path: $backdrop_path, title: $title, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Downloads &&
            const DeepCollectionEquality()
                .equals(other.posterPath, posterPath) &&
            const DeepCollectionEquality()
                .equals(other.backdrop_path, backdrop_path) &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality().equals(other.name, name));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(posterPath),
      const DeepCollectionEquality().hash(backdrop_path),
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(name));

  @JsonKey(ignore: true)
  @override
  _$DownloadsCopyWith<_Downloads> get copyWith =>
      __$DownloadsCopyWithImpl<_Downloads>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DownloadsToJson(this);
  }
}

abstract class _Downloads implements Downloads {
  const factory _Downloads(
      {@JsonKey(name: "poster_path") required String? posterPath,
      @JsonKey(name: "backdrop_path") required String? backdrop_path,
      @JsonKey(name: "title") required String? title,
      @JsonKey(name: "name") required String? name}) = _$_Downloads;

  factory _Downloads.fromJson(Map<String, dynamic> json) =
      _$_Downloads.fromJson;

  @override
  @JsonKey(name: "poster_path")
  String? get posterPath;
  @override
  @JsonKey(name: "backdrop_path")
  String? get backdrop_path;
  @override
  @JsonKey(name: "title")
  String? get title;
  @override
  @JsonKey(name: "name")
  String? get name;
  @override
  @JsonKey(ignore: true)
  _$DownloadsCopyWith<_Downloads> get copyWith =>
      throw _privateConstructorUsedError;
}
