// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'person.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Person _$PersonFromJson(Map<String, dynamic> json) {
  return Person(
    login: json['login'] as String,
    id: json['id'] as num,
    nodeId: json['node_id'] as String,
    avatarUrl: json['avatar_url'] as String,
    gravatarId: json['gravatar_id'] as String,
    url: json['url'] as String,
    htmlUrl: json['html_url'] as String,
    followersUrl: json['followers_url'] as String,
    followingUrl: json['following_url'] as String,
    gistsUrl: json['gists_url'] as String,
    starredUrl: json['starred_url'] as String,
    subscriptionsUrl: json['subscriptions_url'] as String,
    organizationsUrl: json['orgnizations_url'] as String,
    reposUrl: json['repos_url'] as String,
    eventsUrl: json['events_url'] as String,
    receivedEventsUrl: json['received_events_url'] as String,
    type: json['type'] as String,
    siteAdmin: json['site_admin'] as bool,
  );
}

Map<String, dynamic> _$PersonToJson(Person instance) => <String, dynamic>{
      'login': instance.login,
      'id': instance.id,
      'node_id': instance.nodeId,
      'avatar_url': instance.avatarUrl,
      'gravatar_id': instance.gravatarId,
      'url': instance.url,
      'html_url': instance.htmlUrl,
      'followers_url': instance.followersUrl,
      'following_url': instance.followingUrl,
      'gists_url': instance.gistsUrl,
      'starred_url': instance.starredUrl,
      'subscriptions_url': instance.subscriptionsUrl,
      'orgnizations_url': instance.organizationsUrl,
      'repos_url': instance.reposUrl,
      'events_url': instance.eventsUrl,
      'received_events_url': instance.receivedEventsUrl,
      'type': instance.type,
      'site_admin': instance.siteAdmin,
    };