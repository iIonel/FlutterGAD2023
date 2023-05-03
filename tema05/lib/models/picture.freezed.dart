// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'picture.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Picture _$PictureFromJson(Map<String, dynamic> json) {
  return Picture$.fromJson(json);
}

/// @nodoc
mixin _$Picture {
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  DateTime get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  DateTime get updatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'promoted_at')
  DateTime? get promotedAt => throw _privateConstructorUsedError;
  int get width => throw _privateConstructorUsedError;
  int get height => throw _privateConstructorUsedError;
  String get color => throw _privateConstructorUsedError;
  @JsonKey(name: 'blur_hash')
  String? get blurHash => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  @JsonKey(name: 'alt_description')
  String? get altDescription => throw _privateConstructorUsedError;
  Urls get urls => throw _privateConstructorUsedError;
  Links get links => throw _privateConstructorUsedError;
  int get likes => throw _privateConstructorUsedError;
  @JsonKey(name: 'liked_by_user')
  bool get likedByUser => throw _privateConstructorUsedError;
  User get user => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PictureCopyWith<Picture> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PictureCopyWith<$Res> {
  factory $PictureCopyWith(Picture value, $Res Function(Picture) then) = _$PictureCopyWithImpl<$Res, Picture>;
  @useResult
  $Res call(
      {String id,
      @JsonKey(name: 'created_at') DateTime createdAt,
      @JsonKey(name: 'updated_at') DateTime updatedAt,
      @JsonKey(name: 'promoted_at') DateTime? promotedAt,
      int width,
      int height,
      String color,
      @JsonKey(name: 'blur_hash') String? blurHash,
      String? description,
      @JsonKey(name: 'alt_description') String? altDescription,
      Urls urls,
      Links links,
      int likes,
      @JsonKey(name: 'liked_by_user') bool likedByUser,
      User user});

  $UrlsCopyWith<$Res> get urls;
  $LinksCopyWith<$Res> get links;
  $UserCopyWith<$Res> get user;
}

/// @nodoc
class _$PictureCopyWithImpl<$Res, $Val extends Picture> implements $PictureCopyWith<$Res> {
  _$PictureCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? promotedAt = freezed,
    Object? width = null,
    Object? height = null,
    Object? color = null,
    Object? blurHash = freezed,
    Object? description = freezed,
    Object? altDescription = freezed,
    Object? urls = null,
    Object? links = null,
    Object? likes = null,
    Object? likedByUser = null,
    Object? user = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      promotedAt: freezed == promotedAt
          ? _value.promotedAt
          : promotedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      width: null == width
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as int,
      height: null == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as int,
      color: null == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as String,
      blurHash: freezed == blurHash
          ? _value.blurHash
          : blurHash // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      altDescription: freezed == altDescription
          ? _value.altDescription
          : altDescription // ignore: cast_nullable_to_non_nullable
              as String?,
      urls: null == urls
          ? _value.urls
          : urls // ignore: cast_nullable_to_non_nullable
              as Urls,
      links: null == links
          ? _value.links
          : links // ignore: cast_nullable_to_non_nullable
              as Links,
      likes: null == likes
          ? _value.likes
          : likes // ignore: cast_nullable_to_non_nullable
              as int,
      likedByUser: null == likedByUser
          ? _value.likedByUser
          : likedByUser // ignore: cast_nullable_to_non_nullable
              as bool,
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UrlsCopyWith<$Res> get urls {
    return $UrlsCopyWith<$Res>(_value.urls, (value) {
      return _then(_value.copyWith(urls: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $LinksCopyWith<$Res> get links {
    return $LinksCopyWith<$Res>(_value.links, (value) {
      return _then(_value.copyWith(links: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res> get user {
    return $UserCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$Picture$CopyWith<$Res> implements $PictureCopyWith<$Res> {
  factory _$$Picture$CopyWith(_$Picture$ value, $Res Function(_$Picture$) then) = __$$Picture$CopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      @JsonKey(name: 'created_at') DateTime createdAt,
      @JsonKey(name: 'updated_at') DateTime updatedAt,
      @JsonKey(name: 'promoted_at') DateTime? promotedAt,
      int width,
      int height,
      String color,
      @JsonKey(name: 'blur_hash') String? blurHash,
      String? description,
      @JsonKey(name: 'alt_description') String? altDescription,
      Urls urls,
      Links links,
      int likes,
      @JsonKey(name: 'liked_by_user') bool likedByUser,
      User user});

  @override
  $UrlsCopyWith<$Res> get urls;
  @override
  $LinksCopyWith<$Res> get links;
  @override
  $UserCopyWith<$Res> get user;
}

/// @nodoc
class __$$Picture$CopyWithImpl<$Res> extends _$PictureCopyWithImpl<$Res, _$Picture$>
    implements _$$Picture$CopyWith<$Res> {
  __$$Picture$CopyWithImpl(_$Picture$ _value, $Res Function(_$Picture$) _then) : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? promotedAt = freezed,
    Object? width = null,
    Object? height = null,
    Object? color = null,
    Object? blurHash = freezed,
    Object? description = freezed,
    Object? altDescription = freezed,
    Object? urls = null,
    Object? links = null,
    Object? likes = null,
    Object? likedByUser = null,
    Object? user = null,
  }) {
    return _then(_$Picture$(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      promotedAt: freezed == promotedAt
          ? _value.promotedAt
          : promotedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      width: null == width
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as int,
      height: null == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as int,
      color: null == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as String,
      blurHash: freezed == blurHash
          ? _value.blurHash
          : blurHash // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      altDescription: freezed == altDescription
          ? _value.altDescription
          : altDescription // ignore: cast_nullable_to_non_nullable
              as String?,
      urls: null == urls
          ? _value.urls
          : urls // ignore: cast_nullable_to_non_nullable
              as Urls,
      links: null == links
          ? _value.links
          : links // ignore: cast_nullable_to_non_nullable
              as Links,
      likes: null == likes
          ? _value.likes
          : likes // ignore: cast_nullable_to_non_nullable
              as int,
      likedByUser: null == likedByUser
          ? _value.likedByUser
          : likedByUser // ignore: cast_nullable_to_non_nullable
              as bool,
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$Picture$ implements Picture$ {
  const _$Picture$(
      {required this.id,
      @JsonKey(name: 'created_at') required this.createdAt,
      @JsonKey(name: 'updated_at') required this.updatedAt,
      @JsonKey(name: 'promoted_at') this.promotedAt,
      required this.width,
      required this.height,
      required this.color,
      @JsonKey(name: 'blur_hash') this.blurHash,
      this.description,
      @JsonKey(name: 'alt_description') this.altDescription,
      required this.urls,
      required this.links,
      required this.likes,
      @JsonKey(name: 'liked_by_user') required this.likedByUser,
      required this.user});

  factory _$Picture$.fromJson(Map<String, dynamic> json) => _$$Picture$FromJson(json);

  @override
  final String id;
  @override
  @JsonKey(name: 'created_at')
  final DateTime createdAt;
  @override
  @JsonKey(name: 'updated_at')
  final DateTime updatedAt;
  @override
  @JsonKey(name: 'promoted_at')
  final DateTime? promotedAt;
  @override
  final int width;
  @override
  final int height;
  @override
  final String color;
  @override
  @JsonKey(name: 'blur_hash')
  final String? blurHash;
  @override
  final String? description;
  @override
  @JsonKey(name: 'alt_description')
  final String? altDescription;
  @override
  final Urls urls;
  @override
  final Links links;
  @override
  final int likes;
  @override
  @JsonKey(name: 'liked_by_user')
  final bool likedByUser;
  @override
  final User user;

  @override
  String toString() {
    return 'Picture(id: $id, createdAt: $createdAt, updatedAt: $updatedAt, promotedAt: $promotedAt, width: $width, height: $height, color: $color, blurHash: $blurHash, description: $description, altDescription: $altDescription, urls: $urls, links: $links, likes: $likes, likedByUser: $likedByUser, user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Picture$ &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.createdAt, createdAt) || other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt) &&
            (identical(other.promotedAt, promotedAt) || other.promotedAt == promotedAt) &&
            (identical(other.width, width) || other.width == width) &&
            (identical(other.height, height) || other.height == height) &&
            (identical(other.color, color) || other.color == color) &&
            (identical(other.blurHash, blurHash) || other.blurHash == blurHash) &&
            (identical(other.description, description) || other.description == description) &&
            (identical(other.altDescription, altDescription) || other.altDescription == altDescription) &&
            (identical(other.urls, urls) || other.urls == urls) &&
            (identical(other.links, links) || other.links == links) &&
            (identical(other.likes, likes) || other.likes == likes) &&
            (identical(other.likedByUser, likedByUser) || other.likedByUser == likedByUser) &&
            (identical(other.user, user) || other.user == user));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, createdAt, updatedAt, promotedAt, width, height, color, blurHash,
      description, altDescription, urls, links, likes, likedByUser, user);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$Picture$CopyWith<_$Picture$> get copyWith => __$$Picture$CopyWithImpl<_$Picture$>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$Picture$ToJson(
      this,
    );
  }
}

abstract class Picture$ implements Picture {
  const factory Picture$(
      {required final String id,
      @JsonKey(name: 'created_at') required final DateTime createdAt,
      @JsonKey(name: 'updated_at') required final DateTime updatedAt,
      @JsonKey(name: 'promoted_at') final DateTime? promotedAt,
      required final int width,
      required final int height,
      required final String color,
      @JsonKey(name: 'blur_hash') final String? blurHash,
      final String? description,
      @JsonKey(name: 'alt_description') final String? altDescription,
      required final Urls urls,
      required final Links links,
      required final int likes,
      @JsonKey(name: 'liked_by_user') required final bool likedByUser,
      required final User user}) = _$Picture$;

  factory Picture$.fromJson(Map<String, dynamic> json) = _$Picture$.fromJson;

  @override
  String get id;
  @override
  @JsonKey(name: 'created_at')
  DateTime get createdAt;
  @override
  @JsonKey(name: 'updated_at')
  DateTime get updatedAt;
  @override
  @JsonKey(name: 'promoted_at')
  DateTime? get promotedAt;
  @override
  int get width;
  @override
  int get height;
  @override
  String get color;
  @override
  @JsonKey(name: 'blur_hash')
  String? get blurHash;
  @override
  String? get description;
  @override
  @JsonKey(name: 'alt_description')
  String? get altDescription;
  @override
  Urls get urls;
  @override
  Links get links;
  @override
  int get likes;
  @override
  @JsonKey(name: 'liked_by_user')
  bool get likedByUser;
  @override
  User get user;
  @override
  @JsonKey(ignore: true)
  _$$Picture$CopyWith<_$Picture$> get copyWith => throw _privateConstructorUsedError;
}

Urls _$UrlsFromJson(Map<String, dynamic> json) {
  return Urls$.fromJson(json);
}

/// @nodoc
mixin _$Urls {
  String? get row => throw _privateConstructorUsedError;
  String get full => throw _privateConstructorUsedError;
  String get regular => throw _privateConstructorUsedError;
  String get small => throw _privateConstructorUsedError;
  String get thumb => throw _privateConstructorUsedError;
  @JsonKey(name: 'small_s3')
  String get smallS3 => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UrlsCopyWith<Urls> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UrlsCopyWith<$Res> {
  factory $UrlsCopyWith(Urls value, $Res Function(Urls) then) = _$UrlsCopyWithImpl<$Res, Urls>;
  @useResult
  $Res call(
      {String? row,
      String full,
      String regular,
      String small,
      String thumb,
      @JsonKey(name: 'small_s3') String smallS3});
}

/// @nodoc
class _$UrlsCopyWithImpl<$Res, $Val extends Urls> implements $UrlsCopyWith<$Res> {
  _$UrlsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? row = freezed,
    Object? full = null,
    Object? regular = null,
    Object? small = null,
    Object? thumb = null,
    Object? smallS3 = null,
  }) {
    return _then(_value.copyWith(
      row: freezed == row
          ? _value.row
          : row // ignore: cast_nullable_to_non_nullable
              as String?,
      full: null == full
          ? _value.full
          : full // ignore: cast_nullable_to_non_nullable
              as String,
      regular: null == regular
          ? _value.regular
          : regular // ignore: cast_nullable_to_non_nullable
              as String,
      small: null == small
          ? _value.small
          : small // ignore: cast_nullable_to_non_nullable
              as String,
      thumb: null == thumb
          ? _value.thumb
          : thumb // ignore: cast_nullable_to_non_nullable
              as String,
      smallS3: null == smallS3
          ? _value.smallS3
          : smallS3 // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$Urls$CopyWith<$Res> implements $UrlsCopyWith<$Res> {
  factory _$$Urls$CopyWith(_$Urls$ value, $Res Function(_$Urls$) then) = __$$Urls$CopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? row,
      String full,
      String regular,
      String small,
      String thumb,
      @JsonKey(name: 'small_s3') String smallS3});
}

/// @nodoc
class __$$Urls$CopyWithImpl<$Res> extends _$UrlsCopyWithImpl<$Res, _$Urls$> implements _$$Urls$CopyWith<$Res> {
  __$$Urls$CopyWithImpl(_$Urls$ _value, $Res Function(_$Urls$) _then) : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? row = freezed,
    Object? full = null,
    Object? regular = null,
    Object? small = null,
    Object? thumb = null,
    Object? smallS3 = null,
  }) {
    return _then(_$Urls$(
      row: freezed == row
          ? _value.row
          : row // ignore: cast_nullable_to_non_nullable
              as String?,
      full: null == full
          ? _value.full
          : full // ignore: cast_nullable_to_non_nullable
              as String,
      regular: null == regular
          ? _value.regular
          : regular // ignore: cast_nullable_to_non_nullable
              as String,
      small: null == small
          ? _value.small
          : small // ignore: cast_nullable_to_non_nullable
              as String,
      thumb: null == thumb
          ? _value.thumb
          : thumb // ignore: cast_nullable_to_non_nullable
              as String,
      smallS3: null == smallS3
          ? _value.smallS3
          : smallS3 // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$Urls$ implements Urls$ {
  const _$Urls$(
      {this.row,
      required this.full,
      required this.regular,
      required this.small,
      required this.thumb,
      @JsonKey(name: 'small_s3') required this.smallS3});

  factory _$Urls$.fromJson(Map<String, dynamic> json) => _$$Urls$FromJson(json);

  @override
  final String? row;
  @override
  final String full;
  @override
  final String regular;
  @override
  final String small;
  @override
  final String thumb;
  @override
  @JsonKey(name: 'small_s3')
  final String smallS3;

  @override
  String toString() {
    return 'Urls(row: $row, full: $full, regular: $regular, small: $small, thumb: $thumb, smallS3: $smallS3)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Urls$ &&
            (identical(other.row, row) || other.row == row) &&
            (identical(other.full, full) || other.full == full) &&
            (identical(other.regular, regular) || other.regular == regular) &&
            (identical(other.small, small) || other.small == small) &&
            (identical(other.thumb, thumb) || other.thumb == thumb) &&
            (identical(other.smallS3, smallS3) || other.smallS3 == smallS3));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, row, full, regular, small, thumb, smallS3);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$Urls$CopyWith<_$Urls$> get copyWith => __$$Urls$CopyWithImpl<_$Urls$>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$Urls$ToJson(
      this,
    );
  }
}

abstract class Urls$ implements Urls {
  const factory Urls$(
      {final String? row,
      required final String full,
      required final String regular,
      required final String small,
      required final String thumb,
      @JsonKey(name: 'small_s3') required final String smallS3}) = _$Urls$;

  factory Urls$.fromJson(Map<String, dynamic> json) = _$Urls$.fromJson;

  @override
  String? get row;
  @override
  String get full;
  @override
  String get regular;
  @override
  String get small;
  @override
  String get thumb;
  @override
  @JsonKey(name: 'small_s3')
  String get smallS3;
  @override
  @JsonKey(ignore: true)
  _$$Urls$CopyWith<_$Urls$> get copyWith => throw _privateConstructorUsedError;
}

Links _$LinksFromJson(Map<String, dynamic> json) {
  return Links$.fromJson(json);
}

/// @nodoc
mixin _$Links {
  String get self => throw _privateConstructorUsedError;
  String get html => throw _privateConstructorUsedError;
  String get download => throw _privateConstructorUsedError;
  @JsonKey(name: 'download_location')
  String get downloadLocation => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LinksCopyWith<Links> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LinksCopyWith<$Res> {
  factory $LinksCopyWith(Links value, $Res Function(Links) then) = _$LinksCopyWithImpl<$Res, Links>;
  @useResult
  $Res call({String self, String html, String download, @JsonKey(name: 'download_location') String downloadLocation});
}

/// @nodoc
class _$LinksCopyWithImpl<$Res, $Val extends Links> implements $LinksCopyWith<$Res> {
  _$LinksCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? self = null,
    Object? html = null,
    Object? download = null,
    Object? downloadLocation = null,
  }) {
    return _then(_value.copyWith(
      self: null == self
          ? _value.self
          : self // ignore: cast_nullable_to_non_nullable
              as String,
      html: null == html
          ? _value.html
          : html // ignore: cast_nullable_to_non_nullable
              as String,
      download: null == download
          ? _value.download
          : download // ignore: cast_nullable_to_non_nullable
              as String,
      downloadLocation: null == downloadLocation
          ? _value.downloadLocation
          : downloadLocation // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$Links$CopyWith<$Res> implements $LinksCopyWith<$Res> {
  factory _$$Links$CopyWith(_$Links$ value, $Res Function(_$Links$) then) = __$$Links$CopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String self, String html, String download, @JsonKey(name: 'download_location') String downloadLocation});
}

/// @nodoc
class __$$Links$CopyWithImpl<$Res> extends _$LinksCopyWithImpl<$Res, _$Links$> implements _$$Links$CopyWith<$Res> {
  __$$Links$CopyWithImpl(_$Links$ _value, $Res Function(_$Links$) _then) : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? self = null,
    Object? html = null,
    Object? download = null,
    Object? downloadLocation = null,
  }) {
    return _then(_$Links$(
      self: null == self
          ? _value.self
          : self // ignore: cast_nullable_to_non_nullable
              as String,
      html: null == html
          ? _value.html
          : html // ignore: cast_nullable_to_non_nullable
              as String,
      download: null == download
          ? _value.download
          : download // ignore: cast_nullable_to_non_nullable
              as String,
      downloadLocation: null == downloadLocation
          ? _value.downloadLocation
          : downloadLocation // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$Links$ implements Links$ {
  const _$Links$(
      {required this.self,
      required this.html,
      required this.download,
      @JsonKey(name: 'download_location') required this.downloadLocation});

  factory _$Links$.fromJson(Map<String, dynamic> json) => _$$Links$FromJson(json);

  @override
  final String self;
  @override
  final String html;
  @override
  final String download;
  @override
  @JsonKey(name: 'download_location')
  final String downloadLocation;

  @override
  String toString() {
    return 'Links(self: $self, html: $html, download: $download, downloadLocation: $downloadLocation)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Links$ &&
            (identical(other.self, self) || other.self == self) &&
            (identical(other.html, html) || other.html == html) &&
            (identical(other.download, download) || other.download == download) &&
            (identical(other.downloadLocation, downloadLocation) || other.downloadLocation == downloadLocation));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, self, html, download, downloadLocation);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$Links$CopyWith<_$Links$> get copyWith => __$$Links$CopyWithImpl<_$Links$>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$Links$ToJson(
      this,
    );
  }
}

abstract class Links$ implements Links {
  const factory Links$(
      {required final String self,
      required final String html,
      required final String download,
      @JsonKey(name: 'download_location') required final String downloadLocation}) = _$Links$;

  factory Links$.fromJson(Map<String, dynamic> json) = _$Links$.fromJson;

  @override
  String get self;
  @override
  String get html;
  @override
  String get download;
  @override
  @JsonKey(name: 'download_location')
  String get downloadLocation;
  @override
  @JsonKey(ignore: true)
  _$$Links$CopyWith<_$Links$> get copyWith => throw _privateConstructorUsedError;
}

User _$UserFromJson(Map<String, dynamic> json) {
  return User$.fromJson(json);
}

/// @nodoc
mixin _$User {
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  DateTime get updatedAt => throw _privateConstructorUsedError;
  String get username => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'first_name')
  String get firstName => throw _privateConstructorUsedError;
  @JsonKey(name: 'last_name')
  String? get lastName => throw _privateConstructorUsedError;
  @JsonKey(name: 'twitter_username')
  String? get twitterUsername => throw _privateConstructorUsedError;
  @JsonKey(name: 'portofolio_url')
  String? get portfolioUrl => throw _privateConstructorUsedError;
  String? get bio => throw _privateConstructorUsedError;
  String? get location => throw _privateConstructorUsedError;
  UserLinks get links => throw _privateConstructorUsedError;
  @JsonKey(name: 'profile_image')
  UserProfileImages get profileImages => throw _privateConstructorUsedError;
  @JsonKey(name: 'instagram_username')
  String? get instagramUsername => throw _privateConstructorUsedError;
  @JsonKey(name: 'total_collections')
  int get totalCollections => throw _privateConstructorUsedError;
  @JsonKey(name: 'total_likes')
  int get totalLikes => throw _privateConstructorUsedError;
  @JsonKey(name: 'total_photos')
  int get totalPhotos => throw _privateConstructorUsedError;
  @JsonKey(name: 'accepted_tos')
  bool get acceptedTos => throw _privateConstructorUsedError;
  @JsonKey(name: 'for_hire')
  bool get forHire => throw _privateConstructorUsedError;
  UserSocial get social => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserCopyWith<User> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserCopyWith<$Res> {
  factory $UserCopyWith(User value, $Res Function(User) then) = _$UserCopyWithImpl<$Res, User>;
  @useResult
  $Res call(
      {String id,
      @JsonKey(name: 'updated_at') DateTime updatedAt,
      String username,
      String name,
      @JsonKey(name: 'first_name') String firstName,
      @JsonKey(name: 'last_name') String? lastName,
      @JsonKey(name: 'twitter_username') String? twitterUsername,
      @JsonKey(name: 'portofolio_url') String? portfolioUrl,
      String? bio,
      String? location,
      UserLinks links,
      @JsonKey(name: 'profile_image') UserProfileImages profileImages,
      @JsonKey(name: 'instagram_username') String? instagramUsername,
      @JsonKey(name: 'total_collections') int totalCollections,
      @JsonKey(name: 'total_likes') int totalLikes,
      @JsonKey(name: 'total_photos') int totalPhotos,
      @JsonKey(name: 'accepted_tos') bool acceptedTos,
      @JsonKey(name: 'for_hire') bool forHire,
      UserSocial social});

  $UserLinksCopyWith<$Res> get links;
  $UserProfileImagesCopyWith<$Res> get profileImages;
  $UserSocialCopyWith<$Res> get social;
}

/// @nodoc
class _$UserCopyWithImpl<$Res, $Val extends User> implements $UserCopyWith<$Res> {
  _$UserCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? updatedAt = null,
    Object? username = null,
    Object? name = null,
    Object? firstName = null,
    Object? lastName = freezed,
    Object? twitterUsername = freezed,
    Object? portfolioUrl = freezed,
    Object? bio = freezed,
    Object? location = freezed,
    Object? links = null,
    Object? profileImages = null,
    Object? instagramUsername = freezed,
    Object? totalCollections = null,
    Object? totalLikes = null,
    Object? totalPhotos = null,
    Object? acceptedTos = null,
    Object? forHire = null,
    Object? social = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      firstName: null == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: freezed == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String?,
      twitterUsername: freezed == twitterUsername
          ? _value.twitterUsername
          : twitterUsername // ignore: cast_nullable_to_non_nullable
              as String?,
      portfolioUrl: freezed == portfolioUrl
          ? _value.portfolioUrl
          : portfolioUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      bio: freezed == bio
          ? _value.bio
          : bio // ignore: cast_nullable_to_non_nullable
              as String?,
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String?,
      links: null == links
          ? _value.links
          : links // ignore: cast_nullable_to_non_nullable
              as UserLinks,
      profileImages: null == profileImages
          ? _value.profileImages
          : profileImages // ignore: cast_nullable_to_non_nullable
              as UserProfileImages,
      instagramUsername: freezed == instagramUsername
          ? _value.instagramUsername
          : instagramUsername // ignore: cast_nullable_to_non_nullable
              as String?,
      totalCollections: null == totalCollections
          ? _value.totalCollections
          : totalCollections // ignore: cast_nullable_to_non_nullable
              as int,
      totalLikes: null == totalLikes
          ? _value.totalLikes
          : totalLikes // ignore: cast_nullable_to_non_nullable
              as int,
      totalPhotos: null == totalPhotos
          ? _value.totalPhotos
          : totalPhotos // ignore: cast_nullable_to_non_nullable
              as int,
      acceptedTos: null == acceptedTos
          ? _value.acceptedTos
          : acceptedTos // ignore: cast_nullable_to_non_nullable
              as bool,
      forHire: null == forHire
          ? _value.forHire
          : forHire // ignore: cast_nullable_to_non_nullable
              as bool,
      social: null == social
          ? _value.social
          : social // ignore: cast_nullable_to_non_nullable
              as UserSocial,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UserLinksCopyWith<$Res> get links {
    return $UserLinksCopyWith<$Res>(_value.links, (value) {
      return _then(_value.copyWith(links: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $UserProfileImagesCopyWith<$Res> get profileImages {
    return $UserProfileImagesCopyWith<$Res>(_value.profileImages, (value) {
      return _then(_value.copyWith(profileImages: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $UserSocialCopyWith<$Res> get social {
    return $UserSocialCopyWith<$Res>(_value.social, (value) {
      return _then(_value.copyWith(social: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$User$CopyWith<$Res> implements $UserCopyWith<$Res> {
  factory _$$User$CopyWith(_$User$ value, $Res Function(_$User$) then) = __$$User$CopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      @JsonKey(name: 'updated_at') DateTime updatedAt,
      String username,
      String name,
      @JsonKey(name: 'first_name') String firstName,
      @JsonKey(name: 'last_name') String? lastName,
      @JsonKey(name: 'twitter_username') String? twitterUsername,
      @JsonKey(name: 'portofolio_url') String? portfolioUrl,
      String? bio,
      String? location,
      UserLinks links,
      @JsonKey(name: 'profile_image') UserProfileImages profileImages,
      @JsonKey(name: 'instagram_username') String? instagramUsername,
      @JsonKey(name: 'total_collections') int totalCollections,
      @JsonKey(name: 'total_likes') int totalLikes,
      @JsonKey(name: 'total_photos') int totalPhotos,
      @JsonKey(name: 'accepted_tos') bool acceptedTos,
      @JsonKey(name: 'for_hire') bool forHire,
      UserSocial social});

  @override
  $UserLinksCopyWith<$Res> get links;
  @override
  $UserProfileImagesCopyWith<$Res> get profileImages;
  @override
  $UserSocialCopyWith<$Res> get social;
}

/// @nodoc
class __$$User$CopyWithImpl<$Res> extends _$UserCopyWithImpl<$Res, _$User$> implements _$$User$CopyWith<$Res> {
  __$$User$CopyWithImpl(_$User$ _value, $Res Function(_$User$) _then) : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? updatedAt = null,
    Object? username = null,
    Object? name = null,
    Object? firstName = null,
    Object? lastName = freezed,
    Object? twitterUsername = freezed,
    Object? portfolioUrl = freezed,
    Object? bio = freezed,
    Object? location = freezed,
    Object? links = null,
    Object? profileImages = null,
    Object? instagramUsername = freezed,
    Object? totalCollections = null,
    Object? totalLikes = null,
    Object? totalPhotos = null,
    Object? acceptedTos = null,
    Object? forHire = null,
    Object? social = null,
  }) {
    return _then(_$User$(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      firstName: null == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: freezed == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String?,
      twitterUsername: freezed == twitterUsername
          ? _value.twitterUsername
          : twitterUsername // ignore: cast_nullable_to_non_nullable
              as String?,
      portfolioUrl: freezed == portfolioUrl
          ? _value.portfolioUrl
          : portfolioUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      bio: freezed == bio
          ? _value.bio
          : bio // ignore: cast_nullable_to_non_nullable
              as String?,
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String?,
      links: null == links
          ? _value.links
          : links // ignore: cast_nullable_to_non_nullable
              as UserLinks,
      profileImages: null == profileImages
          ? _value.profileImages
          : profileImages // ignore: cast_nullable_to_non_nullable
              as UserProfileImages,
      instagramUsername: freezed == instagramUsername
          ? _value.instagramUsername
          : instagramUsername // ignore: cast_nullable_to_non_nullable
              as String?,
      totalCollections: null == totalCollections
          ? _value.totalCollections
          : totalCollections // ignore: cast_nullable_to_non_nullable
              as int,
      totalLikes: null == totalLikes
          ? _value.totalLikes
          : totalLikes // ignore: cast_nullable_to_non_nullable
              as int,
      totalPhotos: null == totalPhotos
          ? _value.totalPhotos
          : totalPhotos // ignore: cast_nullable_to_non_nullable
              as int,
      acceptedTos: null == acceptedTos
          ? _value.acceptedTos
          : acceptedTos // ignore: cast_nullable_to_non_nullable
              as bool,
      forHire: null == forHire
          ? _value.forHire
          : forHire // ignore: cast_nullable_to_non_nullable
              as bool,
      social: null == social
          ? _value.social
          : social // ignore: cast_nullable_to_non_nullable
              as UserSocial,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$User$ implements User$ {
  const _$User$(
      {required this.id,
      @JsonKey(name: 'updated_at') required this.updatedAt,
      required this.username,
      required this.name,
      @JsonKey(name: 'first_name') required this.firstName,
      @JsonKey(name: 'last_name') this.lastName,
      @JsonKey(name: 'twitter_username') this.twitterUsername,
      @JsonKey(name: 'portofolio_url') this.portfolioUrl,
      this.bio,
      this.location,
      required this.links,
      @JsonKey(name: 'profile_image') required this.profileImages,
      @JsonKey(name: 'instagram_username') this.instagramUsername,
      @JsonKey(name: 'total_collections') required this.totalCollections,
      @JsonKey(name: 'total_likes') required this.totalLikes,
      @JsonKey(name: 'total_photos') required this.totalPhotos,
      @JsonKey(name: 'accepted_tos') required this.acceptedTos,
      @JsonKey(name: 'for_hire') required this.forHire,
      required this.social});

  factory _$User$.fromJson(Map<String, dynamic> json) => _$$User$FromJson(json);

  @override
  final String id;
  @override
  @JsonKey(name: 'updated_at')
  final DateTime updatedAt;
  @override
  final String username;
  @override
  final String name;
  @override
  @JsonKey(name: 'first_name')
  final String firstName;
  @override
  @JsonKey(name: 'last_name')
  final String? lastName;
  @override
  @JsonKey(name: 'twitter_username')
  final String? twitterUsername;
  @override
  @JsonKey(name: 'portofolio_url')
  final String? portfolioUrl;
  @override
  final String? bio;
  @override
  final String? location;
  @override
  final UserLinks links;
  @override
  @JsonKey(name: 'profile_image')
  final UserProfileImages profileImages;
  @override
  @JsonKey(name: 'instagram_username')
  final String? instagramUsername;
  @override
  @JsonKey(name: 'total_collections')
  final int totalCollections;
  @override
  @JsonKey(name: 'total_likes')
  final int totalLikes;
  @override
  @JsonKey(name: 'total_photos')
  final int totalPhotos;
  @override
  @JsonKey(name: 'accepted_tos')
  final bool acceptedTos;
  @override
  @JsonKey(name: 'for_hire')
  final bool forHire;
  @override
  final UserSocial social;

  @override
  String toString() {
    return 'User(id: $id, updatedAt: $updatedAt, username: $username, name: $name, firstName: $firstName, lastName: $lastName, twitterUsername: $twitterUsername, portfolioUrl: $portfolioUrl, bio: $bio, location: $location, links: $links, profileImages: $profileImages, instagramUsername: $instagramUsername, totalCollections: $totalCollections, totalLikes: $totalLikes, totalPhotos: $totalPhotos, acceptedTos: $acceptedTos, forHire: $forHire, social: $social)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$User$ &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt) &&
            (identical(other.username, username) || other.username == username) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.firstName, firstName) || other.firstName == firstName) &&
            (identical(other.lastName, lastName) || other.lastName == lastName) &&
            (identical(other.twitterUsername, twitterUsername) || other.twitterUsername == twitterUsername) &&
            (identical(other.portfolioUrl, portfolioUrl) || other.portfolioUrl == portfolioUrl) &&
            (identical(other.bio, bio) || other.bio == bio) &&
            (identical(other.location, location) || other.location == location) &&
            (identical(other.links, links) || other.links == links) &&
            (identical(other.profileImages, profileImages) || other.profileImages == profileImages) &&
            (identical(other.instagramUsername, instagramUsername) || other.instagramUsername == instagramUsername) &&
            (identical(other.totalCollections, totalCollections) || other.totalCollections == totalCollections) &&
            (identical(other.totalLikes, totalLikes) || other.totalLikes == totalLikes) &&
            (identical(other.totalPhotos, totalPhotos) || other.totalPhotos == totalPhotos) &&
            (identical(other.acceptedTos, acceptedTos) || other.acceptedTos == acceptedTos) &&
            (identical(other.forHire, forHire) || other.forHire == forHire) &&
            (identical(other.social, social) || other.social == social));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        updatedAt,
        username,
        name,
        firstName,
        lastName,
        twitterUsername,
        portfolioUrl,
        bio,
        location,
        links,
        profileImages,
        instagramUsername,
        totalCollections,
        totalLikes,
        totalPhotos,
        acceptedTos,
        forHire,
        social
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$User$CopyWith<_$User$> get copyWith => __$$User$CopyWithImpl<_$User$>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$User$ToJson(
      this,
    );
  }
}

abstract class User$ implements User {
  const factory User$(
      {required final String id,
      @JsonKey(name: 'updated_at') required final DateTime updatedAt,
      required final String username,
      required final String name,
      @JsonKey(name: 'first_name') required final String firstName,
      @JsonKey(name: 'last_name') final String? lastName,
      @JsonKey(name: 'twitter_username') final String? twitterUsername,
      @JsonKey(name: 'portofolio_url') final String? portfolioUrl,
      final String? bio,
      final String? location,
      required final UserLinks links,
      @JsonKey(name: 'profile_image') required final UserProfileImages profileImages,
      @JsonKey(name: 'instagram_username') final String? instagramUsername,
      @JsonKey(name: 'total_collections') required final int totalCollections,
      @JsonKey(name: 'total_likes') required final int totalLikes,
      @JsonKey(name: 'total_photos') required final int totalPhotos,
      @JsonKey(name: 'accepted_tos') required final bool acceptedTos,
      @JsonKey(name: 'for_hire') required final bool forHire,
      required final UserSocial social}) = _$User$;

  factory User$.fromJson(Map<String, dynamic> json) = _$User$.fromJson;

  @override
  String get id;
  @override
  @JsonKey(name: 'updated_at')
  DateTime get updatedAt;
  @override
  String get username;
  @override
  String get name;
  @override
  @JsonKey(name: 'first_name')
  String get firstName;
  @override
  @JsonKey(name: 'last_name')
  String? get lastName;
  @override
  @JsonKey(name: 'twitter_username')
  String? get twitterUsername;
  @override
  @JsonKey(name: 'portofolio_url')
  String? get portfolioUrl;
  @override
  String? get bio;
  @override
  String? get location;
  @override
  UserLinks get links;
  @override
  @JsonKey(name: 'profile_image')
  UserProfileImages get profileImages;
  @override
  @JsonKey(name: 'instagram_username')
  String? get instagramUsername;
  @override
  @JsonKey(name: 'total_collections')
  int get totalCollections;
  @override
  @JsonKey(name: 'total_likes')
  int get totalLikes;
  @override
  @JsonKey(name: 'total_photos')
  int get totalPhotos;
  @override
  @JsonKey(name: 'accepted_tos')
  bool get acceptedTos;
  @override
  @JsonKey(name: 'for_hire')
  bool get forHire;
  @override
  UserSocial get social;
  @override
  @JsonKey(ignore: true)
  _$$User$CopyWith<_$User$> get copyWith => throw _privateConstructorUsedError;
}

UserLinks _$UserLinksFromJson(Map<String, dynamic> json) {
  return UserLinks$.fromJson(json);
}

/// @nodoc
mixin _$UserLinks {
  String get self => throw _privateConstructorUsedError;
  String get html => throw _privateConstructorUsedError;
  String get photos => throw _privateConstructorUsedError;
  String get likes => throw _privateConstructorUsedError;
  String get portfolio => throw _privateConstructorUsedError;
  String get following => throw _privateConstructorUsedError;
  String get followers => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserLinksCopyWith<UserLinks> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserLinksCopyWith<$Res> {
  factory $UserLinksCopyWith(UserLinks value, $Res Function(UserLinks) then) = _$UserLinksCopyWithImpl<$Res, UserLinks>;
  @useResult
  $Res call(
      {String self, String html, String photos, String likes, String portfolio, String following, String followers});
}

/// @nodoc
class _$UserLinksCopyWithImpl<$Res, $Val extends UserLinks> implements $UserLinksCopyWith<$Res> {
  _$UserLinksCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? self = null,
    Object? html = null,
    Object? photos = null,
    Object? likes = null,
    Object? portfolio = null,
    Object? following = null,
    Object? followers = null,
  }) {
    return _then(_value.copyWith(
      self: null == self
          ? _value.self
          : self // ignore: cast_nullable_to_non_nullable
              as String,
      html: null == html
          ? _value.html
          : html // ignore: cast_nullable_to_non_nullable
              as String,
      photos: null == photos
          ? _value.photos
          : photos // ignore: cast_nullable_to_non_nullable
              as String,
      likes: null == likes
          ? _value.likes
          : likes // ignore: cast_nullable_to_non_nullable
              as String,
      portfolio: null == portfolio
          ? _value.portfolio
          : portfolio // ignore: cast_nullable_to_non_nullable
              as String,
      following: null == following
          ? _value.following
          : following // ignore: cast_nullable_to_non_nullable
              as String,
      followers: null == followers
          ? _value.followers
          : followers // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserLinks$CopyWith<$Res> implements $UserLinksCopyWith<$Res> {
  factory _$$UserLinks$CopyWith(_$UserLinks$ value, $Res Function(_$UserLinks$) then) =
      __$$UserLinks$CopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String self, String html, String photos, String likes, String portfolio, String following, String followers});
}

/// @nodoc
class __$$UserLinks$CopyWithImpl<$Res> extends _$UserLinksCopyWithImpl<$Res, _$UserLinks$>
    implements _$$UserLinks$CopyWith<$Res> {
  __$$UserLinks$CopyWithImpl(_$UserLinks$ _value, $Res Function(_$UserLinks$) _then) : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? self = null,
    Object? html = null,
    Object? photos = null,
    Object? likes = null,
    Object? portfolio = null,
    Object? following = null,
    Object? followers = null,
  }) {
    return _then(_$UserLinks$(
      self: null == self
          ? _value.self
          : self // ignore: cast_nullable_to_non_nullable
              as String,
      html: null == html
          ? _value.html
          : html // ignore: cast_nullable_to_non_nullable
              as String,
      photos: null == photos
          ? _value.photos
          : photos // ignore: cast_nullable_to_non_nullable
              as String,
      likes: null == likes
          ? _value.likes
          : likes // ignore: cast_nullable_to_non_nullable
              as String,
      portfolio: null == portfolio
          ? _value.portfolio
          : portfolio // ignore: cast_nullable_to_non_nullable
              as String,
      following: null == following
          ? _value.following
          : following // ignore: cast_nullable_to_non_nullable
              as String,
      followers: null == followers
          ? _value.followers
          : followers // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserLinks$ implements UserLinks$ {
  const _$UserLinks$(
      {required this.self,
      required this.html,
      required this.photos,
      required this.likes,
      required this.portfolio,
      required this.following,
      required this.followers});

  factory _$UserLinks$.fromJson(Map<String, dynamic> json) => _$$UserLinks$FromJson(json);

  @override
  final String self;
  @override
  final String html;
  @override
  final String photos;
  @override
  final String likes;
  @override
  final String portfolio;
  @override
  final String following;
  @override
  final String followers;

  @override
  String toString() {
    return 'UserLinks(self: $self, html: $html, photos: $photos, likes: $likes, portfolio: $portfolio, following: $following, followers: $followers)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserLinks$ &&
            (identical(other.self, self) || other.self == self) &&
            (identical(other.html, html) || other.html == html) &&
            (identical(other.photos, photos) || other.photos == photos) &&
            (identical(other.likes, likes) || other.likes == likes) &&
            (identical(other.portfolio, portfolio) || other.portfolio == portfolio) &&
            (identical(other.following, following) || other.following == following) &&
            (identical(other.followers, followers) || other.followers == followers));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, self, html, photos, likes, portfolio, following, followers);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserLinks$CopyWith<_$UserLinks$> get copyWith => __$$UserLinks$CopyWithImpl<_$UserLinks$>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserLinks$ToJson(
      this,
    );
  }
}

abstract class UserLinks$ implements UserLinks {
  const factory UserLinks$(
      {required final String self,
      required final String html,
      required final String photos,
      required final String likes,
      required final String portfolio,
      required final String following,
      required final String followers}) = _$UserLinks$;

  factory UserLinks$.fromJson(Map<String, dynamic> json) = _$UserLinks$.fromJson;

  @override
  String get self;
  @override
  String get html;
  @override
  String get photos;
  @override
  String get likes;
  @override
  String get portfolio;
  @override
  String get following;
  @override
  String get followers;
  @override
  @JsonKey(ignore: true)
  _$$UserLinks$CopyWith<_$UserLinks$> get copyWith => throw _privateConstructorUsedError;
}

UserProfileImages _$UserProfileImagesFromJson(Map<String, dynamic> json) {
  return UserProfileImages$.fromJson(json);
}

/// @nodoc
mixin _$UserProfileImages {
  String get small => throw _privateConstructorUsedError;
  String get medium => throw _privateConstructorUsedError;
  String get large => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserProfileImagesCopyWith<UserProfileImages> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserProfileImagesCopyWith<$Res> {
  factory $UserProfileImagesCopyWith(UserProfileImages value, $Res Function(UserProfileImages) then) =
      _$UserProfileImagesCopyWithImpl<$Res, UserProfileImages>;
  @useResult
  $Res call({String small, String medium, String large});
}

/// @nodoc
class _$UserProfileImagesCopyWithImpl<$Res, $Val extends UserProfileImages>
    implements $UserProfileImagesCopyWith<$Res> {
  _$UserProfileImagesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? small = null,
    Object? medium = null,
    Object? large = null,
  }) {
    return _then(_value.copyWith(
      small: null == small
          ? _value.small
          : small // ignore: cast_nullable_to_non_nullable
              as String,
      medium: null == medium
          ? _value.medium
          : medium // ignore: cast_nullable_to_non_nullable
              as String,
      large: null == large
          ? _value.large
          : large // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserProfileImages$CopyWith<$Res> implements $UserProfileImagesCopyWith<$Res> {
  factory _$$UserProfileImages$CopyWith(_$UserProfileImages$ value, $Res Function(_$UserProfileImages$) then) =
      __$$UserProfileImages$CopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String small, String medium, String large});
}

/// @nodoc
class __$$UserProfileImages$CopyWithImpl<$Res> extends _$UserProfileImagesCopyWithImpl<$Res, _$UserProfileImages$>
    implements _$$UserProfileImages$CopyWith<$Res> {
  __$$UserProfileImages$CopyWithImpl(_$UserProfileImages$ _value, $Res Function(_$UserProfileImages$) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? small = null,
    Object? medium = null,
    Object? large = null,
  }) {
    return _then(_$UserProfileImages$(
      small: null == small
          ? _value.small
          : small // ignore: cast_nullable_to_non_nullable
              as String,
      medium: null == medium
          ? _value.medium
          : medium // ignore: cast_nullable_to_non_nullable
              as String,
      large: null == large
          ? _value.large
          : large // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserProfileImages$ implements UserProfileImages$ {
  const _$UserProfileImages$({required this.small, required this.medium, required this.large});

  factory _$UserProfileImages$.fromJson(Map<String, dynamic> json) => _$$UserProfileImages$FromJson(json);

  @override
  final String small;
  @override
  final String medium;
  @override
  final String large;

  @override
  String toString() {
    return 'UserProfileImages(small: $small, medium: $medium, large: $large)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserProfileImages$ &&
            (identical(other.small, small) || other.small == small) &&
            (identical(other.medium, medium) || other.medium == medium) &&
            (identical(other.large, large) || other.large == large));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, small, medium, large);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserProfileImages$CopyWith<_$UserProfileImages$> get copyWith =>
      __$$UserProfileImages$CopyWithImpl<_$UserProfileImages$>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserProfileImages$ToJson(
      this,
    );
  }
}

abstract class UserProfileImages$ implements UserProfileImages {
  const factory UserProfileImages$(
      {required final String small, required final String medium, required final String large}) = _$UserProfileImages$;

  factory UserProfileImages$.fromJson(Map<String, dynamic> json) = _$UserProfileImages$.fromJson;

  @override
  String get small;
  @override
  String get medium;
  @override
  String get large;
  @override
  @JsonKey(ignore: true)
  _$$UserProfileImages$CopyWith<_$UserProfileImages$> get copyWith => throw _privateConstructorUsedError;
}

UserSocial _$UserSocialFromJson(Map<String, dynamic> json) {
  return UserSocial$.fromJson(json);
}

/// @nodoc
mixin _$UserSocial {
  @JsonKey(name: 'instagram_username')
  String? get instagramUsername => throw _privateConstructorUsedError;
  @JsonKey(name: 'portfolio_url')
  String? get portfolioUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'twitter_username')
  String? get twitterUsername => throw _privateConstructorUsedError;
  @JsonKey(name: 'paypal_email')
  String? get paypalEmail => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserSocialCopyWith<UserSocial> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserSocialCopyWith<$Res> {
  factory $UserSocialCopyWith(UserSocial value, $Res Function(UserSocial) then) =
      _$UserSocialCopyWithImpl<$Res, UserSocial>;
  @useResult
  $Res call(
      {@JsonKey(name: 'instagram_username') String? instagramUsername,
      @JsonKey(name: 'portfolio_url') String? portfolioUrl,
      @JsonKey(name: 'twitter_username') String? twitterUsername,
      @JsonKey(name: 'paypal_email') String? paypalEmail});
}

/// @nodoc
class _$UserSocialCopyWithImpl<$Res, $Val extends UserSocial> implements $UserSocialCopyWith<$Res> {
  _$UserSocialCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? instagramUsername = freezed,
    Object? portfolioUrl = freezed,
    Object? twitterUsername = freezed,
    Object? paypalEmail = freezed,
  }) {
    return _then(_value.copyWith(
      instagramUsername: freezed == instagramUsername
          ? _value.instagramUsername
          : instagramUsername // ignore: cast_nullable_to_non_nullable
              as String?,
      portfolioUrl: freezed == portfolioUrl
          ? _value.portfolioUrl
          : portfolioUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      twitterUsername: freezed == twitterUsername
          ? _value.twitterUsername
          : twitterUsername // ignore: cast_nullable_to_non_nullable
              as String?,
      paypalEmail: freezed == paypalEmail
          ? _value.paypalEmail
          : paypalEmail // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserSocial$CopyWith<$Res> implements $UserSocialCopyWith<$Res> {
  factory _$$UserSocial$CopyWith(_$UserSocial$ value, $Res Function(_$UserSocial$) then) =
      __$$UserSocial$CopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'instagram_username') String? instagramUsername,
      @JsonKey(name: 'portfolio_url') String? portfolioUrl,
      @JsonKey(name: 'twitter_username') String? twitterUsername,
      @JsonKey(name: 'paypal_email') String? paypalEmail});
}

/// @nodoc
class __$$UserSocial$CopyWithImpl<$Res> extends _$UserSocialCopyWithImpl<$Res, _$UserSocial$>
    implements _$$UserSocial$CopyWith<$Res> {
  __$$UserSocial$CopyWithImpl(_$UserSocial$ _value, $Res Function(_$UserSocial$) _then) : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? instagramUsername = freezed,
    Object? portfolioUrl = freezed,
    Object? twitterUsername = freezed,
    Object? paypalEmail = freezed,
  }) {
    return _then(_$UserSocial$(
      instagramUsername: freezed == instagramUsername
          ? _value.instagramUsername
          : instagramUsername // ignore: cast_nullable_to_non_nullable
              as String?,
      portfolioUrl: freezed == portfolioUrl
          ? _value.portfolioUrl
          : portfolioUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      twitterUsername: freezed == twitterUsername
          ? _value.twitterUsername
          : twitterUsername // ignore: cast_nullable_to_non_nullable
              as String?,
      paypalEmail: freezed == paypalEmail
          ? _value.paypalEmail
          : paypalEmail // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserSocial$ implements UserSocial$ {
  const _$UserSocial$(
      {@JsonKey(name: 'instagram_username') this.instagramUsername,
      @JsonKey(name: 'portfolio_url') this.portfolioUrl,
      @JsonKey(name: 'twitter_username') this.twitterUsername,
      @JsonKey(name: 'paypal_email') this.paypalEmail});

  factory _$UserSocial$.fromJson(Map<String, dynamic> json) => _$$UserSocial$FromJson(json);

  @override
  @JsonKey(name: 'instagram_username')
  final String? instagramUsername;
  @override
  @JsonKey(name: 'portfolio_url')
  final String? portfolioUrl;
  @override
  @JsonKey(name: 'twitter_username')
  final String? twitterUsername;
  @override
  @JsonKey(name: 'paypal_email')
  final String? paypalEmail;

  @override
  String toString() {
    return 'UserSocial(instagramUsername: $instagramUsername, portfolioUrl: $portfolioUrl, twitterUsername: $twitterUsername, paypalEmail: $paypalEmail)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserSocial$ &&
            (identical(other.instagramUsername, instagramUsername) || other.instagramUsername == instagramUsername) &&
            (identical(other.portfolioUrl, portfolioUrl) || other.portfolioUrl == portfolioUrl) &&
            (identical(other.twitterUsername, twitterUsername) || other.twitterUsername == twitterUsername) &&
            (identical(other.paypalEmail, paypalEmail) || other.paypalEmail == paypalEmail));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, instagramUsername, portfolioUrl, twitterUsername, paypalEmail);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserSocial$CopyWith<_$UserSocial$> get copyWith => __$$UserSocial$CopyWithImpl<_$UserSocial$>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserSocial$ToJson(
      this,
    );
  }
}

abstract class UserSocial$ implements UserSocial {
  const factory UserSocial$(
      {@JsonKey(name: 'instagram_username') final String? instagramUsername,
      @JsonKey(name: 'portfolio_url') final String? portfolioUrl,
      @JsonKey(name: 'twitter_username') final String? twitterUsername,
      @JsonKey(name: 'paypal_email') final String? paypalEmail}) = _$UserSocial$;

  factory UserSocial$.fromJson(Map<String, dynamic> json) = _$UserSocial$.fromJson;

  @override
  @JsonKey(name: 'instagram_username')
  String? get instagramUsername;
  @override
  @JsonKey(name: 'portfolio_url')
  String? get portfolioUrl;
  @override
  @JsonKey(name: 'twitter_username')
  String? get twitterUsername;
  @override
  @JsonKey(name: 'paypal_email')
  String? get paypalEmail;
  @override
  @JsonKey(ignore: true)
  _$$UserSocial$CopyWith<_$UserSocial$> get copyWith => throw _privateConstructorUsedError;
}
