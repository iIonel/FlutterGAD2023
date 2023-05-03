import 'package:freezed_annotation/freezed_annotation.dart';
part 'picture.freezed.dart';
part 'picture.g.dart';

@freezed
class Picture with _$Picture{
  const factory Picture({
    required String id,
    // ignore: invalid_annotation_target
    @JsonKey(name: 'created_at') required DateTime createdAt,
    // ignore: invalid_annotation_target
    @JsonKey(name: 'updated_at') required DateTime updatedAt,
    // ignore: invalid_annotation_target
    @JsonKey(name: 'promoted_at') DateTime? promotedAt,
    required int width,
    required int height,
    required String color,
    // ignore: invalid_annotation_target
    @JsonKey(name: 'blur_hash')String? blurHash,
    String? description,
    // ignore: invalid_annotation_target
    @JsonKey(name: 'alt_description') String? altDescription,
    required Urls urls,
    required Links links,
    required int likes,
    // ignore: invalid_annotation_target
    @JsonKey(name: 'liked_by_user') required bool likedByUser,
    required User user,
}) = Picture$;
  factory Picture.fromJson(Map<dynamic,dynamic> json)=> _$PictureFromJson(Map<String,dynamic>.from(json));
}

@freezed
class Urls with _$Urls {
  const factory Urls({
    String? row,
    required String full,
    required String regular,
    required String small,
    required String thumb,
    // ignore: invalid_annotation_target
    @JsonKey(name: 'small_s3')required String smallS3,
}) = Urls$;

  factory Urls.fromJson(Map<dynamic, dynamic> json) => _$UrlsFromJson(Map<String, dynamic>.from(json));
}

@freezed
class Links with _$Links {
  const factory Links({
    required String self,
    required String html,
    required String download,
    // ignore: invalid_annotation_target
    @JsonKey(name: 'download_location') required String downloadLocation,
}) = Links$;

  factory Links.fromJson(Map<dynamic, dynamic> json) => _$LinksFromJson(Map<String, dynamic>.from(json));
}

@freezed
class User with _$User {
  const factory User({
      required String id,
    // ignore: invalid_annotation_target
      @JsonKey(name: 'updated_at') required DateTime updatedAt,
      required String username,
      required String name,
    // ignore: invalid_annotation_target
      @JsonKey(name: 'first_name') required String firstName,
    // ignore: invalid_annotation_target
      @JsonKey(name: 'last_name') String? lastName,
    // ignore: invalid_annotation_target
      @JsonKey(name: 'twitter_username') String? twitterUsername,
    // ignore: invalid_annotation_target
      @JsonKey(name: 'portofolio_url') String? portfolioUrl,
      String? bio,
      String? location,
      required UserLinks links,
    // ignore: invalid_annotation_target
      @JsonKey(name: 'profile_image')required UserProfileImages profileImages,
    // ignore: invalid_annotation_target
      @JsonKey(name: 'instagram_username') String? instagramUsername,
    // ignore: invalid_annotation_target
      @JsonKey(name: 'total_collections')required int totalCollections,
    // ignore: invalid_annotation_target
      @JsonKey(name: 'total_likes')required int totalLikes,
    // ignore: invalid_annotation_target
      @JsonKey(name: 'total_photos')required int totalPhotos,
    // ignore: invalid_annotation_target
      @JsonKey(name: 'accepted_tos')required bool acceptedTos,
    // ignore: invalid_annotation_target
      @JsonKey(name: 'for_hire')required bool forHire,
      required UserSocial social,
}) = User$;

  factory User.fromJson(Map<dynamic, dynamic> json) => _$UserFromJson(Map<String, dynamic>.from(json));
}

@freezed
class UserLinks with _$UserLinks {
  const factory UserLinks({
    required String self,
    required String html,
    required String photos,
    required String likes,
    required String portfolio,
    required String following,
    required String followers,
}) = UserLinks$;

  factory UserLinks.fromJson(Map<dynamic, dynamic> json) => _$UserLinksFromJson(Map<String, dynamic>.from(json));
}
@freezed
class UserProfileImages with _$UserProfileImages {
  const factory UserProfileImages({
    required String small,
    required String medium,
    required String large,
}) = UserProfileImages$;

  factory UserProfileImages.fromJson(Map<dynamic, dynamic> json) => _$UserProfileImagesFromJson(Map<String, dynamic>.from(json));
}

@freezed
class UserSocial with _$UserSocial {
  const factory UserSocial({
    // ignore: invalid_annotation_target
  @JsonKey(name: 'instagram_username') String? instagramUsername,
    // ignore: invalid_annotation_target
  @JsonKey(name: 'portfolio_url') String? portfolioUrl,
    // ignore: invalid_annotation_target
  @JsonKey(name: 'twitter_username') String? twitterUsername,
    // ignore: invalid_annotation_target
  @JsonKey(name: 'paypal_email') String? paypalEmail,
}) = UserSocial$;

  factory UserSocial.fromJson(Map<dynamic, dynamic> json) => _$UserSocialFromJson(Map<String, dynamic>.from(json));
}
