// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'picture.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$Picture$ _$$Picture$FromJson(Map<String, dynamic> json) => _$Picture$(
      id: json['id'] as String,
      createdAt: DateTime.parse(json['created_at'] as String),
      updatedAt: DateTime.parse(json['updated_at'] as String),
      promotedAt: json['promoted_at'] == null
          ? null
          : DateTime.parse(json['promoted_at'] as String),
      width: json['width'] as int,
      height: json['height'] as int,
      color: json['color'] as String,
      blurHash: json['blur_hash'] as String?,
      description: json['description'] as String?,
      altDescription: json['alt_description'] as String?,
      urls: Urls.fromJson(json['urls'] as Map<String, dynamic>),
      links: Links.fromJson(json['links'] as Map<String, dynamic>),
      likes: json['likes'] as int,
      likedByUser: json['liked_by_user'] as bool,
      user: User.fromJson(json['user'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$Picture$ToJson(_$Picture$ instance) =>
    <String, dynamic>{
      'id': instance.id,
      'created_at': instance.createdAt.toIso8601String(),
      'updated_at': instance.updatedAt.toIso8601String(),
      'promoted_at': instance.promotedAt?.toIso8601String(),
      'width': instance.width,
      'height': instance.height,
      'color': instance.color,
      'blur_hash': instance.blurHash,
      'description': instance.description,
      'alt_description': instance.altDescription,
      'urls': instance.urls,
      'links': instance.links,
      'likes': instance.likes,
      'liked_by_user': instance.likedByUser,
      'user': instance.user,
    };

_$Urls$ _$$Urls$FromJson(Map<String, dynamic> json) => _$Urls$(
      row: json['row'] as String?,
      full: json['full'] as String,
      regular: json['regular'] as String,
      small: json['small'] as String,
      thumb: json['thumb'] as String,
      smallS3: json['small_s3'] as String,
    );

Map<String, dynamic> _$$Urls$ToJson(_$Urls$ instance) => <String, dynamic>{
      'row': instance.row,
      'full': instance.full,
      'regular': instance.regular,
      'small': instance.small,
      'thumb': instance.thumb,
      'small_s3': instance.smallS3,
    };

_$Links$ _$$Links$FromJson(Map<String, dynamic> json) => _$Links$(
      self: json['self'] as String,
      html: json['html'] as String,
      download: json['download'] as String,
      downloadLocation: json['download_location'] as String,
    );

Map<String, dynamic> _$$Links$ToJson(_$Links$ instance) => <String, dynamic>{
      'self': instance.self,
      'html': instance.html,
      'download': instance.download,
      'download_location': instance.downloadLocation,
    };

_$User$ _$$User$FromJson(Map<String, dynamic> json) => _$User$(
      id: json['id'] as String,
      updatedAt: DateTime.parse(json['updated_at'] as String),
      username: json['username'] as String,
      name: json['name'] as String,
      firstName: json['first_name'] as String,
      lastName: json['last_name'] as String?,
      twitterUsername: json['twitter_username'] as String?,
      portfolioUrl: json['portofolio_url'] as String?,
      bio: json['bio'] as String?,
      location: json['location'] as String?,
      links: UserLinks.fromJson(json['links'] as Map<String, dynamic>),
      profileImages: UserProfileImages.fromJson(
          json['profile_image'] as Map<String, dynamic>),
      instagramUsername: json['instagram_username'] as String?,
      totalCollections: json['total_collections'] as int,
      totalLikes: json['total_likes'] as int,
      totalPhotos: json['total_photos'] as int,
      acceptedTos: json['accepted_tos'] as bool,
      forHire: json['for_hire'] as bool,
      social: UserSocial.fromJson(json['social'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$User$ToJson(_$User$ instance) => <String, dynamic>{
      'id': instance.id,
      'updated_at': instance.updatedAt.toIso8601String(),
      'username': instance.username,
      'name': instance.name,
      'first_name': instance.firstName,
      'last_name': instance.lastName,
      'twitter_username': instance.twitterUsername,
      'portofolio_url': instance.portfolioUrl,
      'bio': instance.bio,
      'location': instance.location,
      'links': instance.links,
      'profile_image': instance.profileImages,
      'instagram_username': instance.instagramUsername,
      'total_collections': instance.totalCollections,
      'total_likes': instance.totalLikes,
      'total_photos': instance.totalPhotos,
      'accepted_tos': instance.acceptedTos,
      'for_hire': instance.forHire,
      'social': instance.social,
    };

_$UserLinks$ _$$UserLinks$FromJson(Map<String, dynamic> json) => _$UserLinks$(
      self: json['self'] as String,
      html: json['html'] as String,
      photos: json['photos'] as String,
      likes: json['likes'] as String,
      portfolio: json['portfolio'] as String,
      following: json['following'] as String,
      followers: json['followers'] as String,
    );

Map<String, dynamic> _$$UserLinks$ToJson(_$UserLinks$ instance) =>
    <String, dynamic>{
      'self': instance.self,
      'html': instance.html,
      'photos': instance.photos,
      'likes': instance.likes,
      'portfolio': instance.portfolio,
      'following': instance.following,
      'followers': instance.followers,
    };

_$UserProfileImages$ _$$UserProfileImages$FromJson(Map<String, dynamic> json) =>
    _$UserProfileImages$(
      small: json['small'] as String,
      medium: json['medium'] as String,
      large: json['large'] as String,
    );

Map<String, dynamic> _$$UserProfileImages$ToJson(
        _$UserProfileImages$ instance) =>
    <String, dynamic>{
      'small': instance.small,
      'medium': instance.medium,
      'large': instance.large,
    };

_$UserSocial$ _$$UserSocial$FromJson(Map<String, dynamic> json) =>
    _$UserSocial$(
      instagramUsername: json['instagram_username'] as String?,
      portfolioUrl: json['portfolio_url'] as String?,
      twitterUsername: json['twitter_username'] as String?,
      paypalEmail: json['paypal_email'] as String?,
    );

Map<String, dynamic> _$$UserSocial$ToJson(_$UserSocial$ instance) =>
    <String, dynamic>{
      'instagram_username': instance.instagramUsername,
      'portfolio_url': instance.portfolioUrl,
      'twitter_username': instance.twitterUsername,
      'paypal_email': instance.paypalEmail,
    };
