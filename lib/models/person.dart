import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';
import 'package:json_annotation/json_annotation.dart';

part 'person.g.dart';

@JsonSerializable(explicitToJson: true)
class Person extends Equatable {
  final String login;
  final num id;
  @JsonKey(name: 'node_id')
  final String nodeId;
  @JsonKey(name: 'avatar_url')
  final String avatarUrl;
  @JsonKey(name: 'gravatar_id')
  final String gravatarId;
  final String url;
  @JsonKey(name: 'html_url')
  final String htmlUrl;
  @JsonKey(name: 'followers_url')
  final String followersUrl;
  @JsonKey(name: 'following_url')
  final String followingUrl;
  @JsonKey(name: 'gists_url')
  final String gistsUrl;
  @JsonKey(name: 'starred_url')
  final String starredUrl;
  @JsonKey(name: 'subscriptions_url')
  final String subscriptionsUrl;
  @JsonKey(name: 'orgnizations_url')
  final String organizationsUrl;
  @JsonKey(name: 'repos_url')
  final String reposUrl;
  @JsonKey(name: 'events_url')
  final String eventsUrl;
  @JsonKey(name: 'received_events_url')
  final String receivedEventsUrl;
  final String type;
  @JsonKey(name: 'site_admin')
  final bool siteAdmin;

  Person(
      {@required this.login,
      @required this.id,
      @required this.nodeId,
      @required this.avatarUrl,
      @required this.gravatarId,
      @required this.url,
      @required this.htmlUrl,
      @required this.followersUrl,
      @required this.followingUrl,
      @required this.gistsUrl,
      @required this.starredUrl,
      @required this.subscriptionsUrl,
      @required this.organizationsUrl,
      @required this.reposUrl,
      @required this.eventsUrl,
      @required this.receivedEventsUrl,
      @required this.type,
      @required this.siteAdmin})
      : super([
          login,
          id,
          nodeId,
          avatarUrl,
          gravatarId,
          url,
          htmlUrl,
          followersUrl,
          followingUrl,
          gistsUrl,
          starredUrl,
          subscriptionsUrl,
          organizationsUrl,
          reposUrl,
          eventsUrl,
          receivedEventsUrl,
          type,
          siteAdmin,
        ]);

  factory Person.fromJson(Map<String, dynamic> json) => _$PersonFromJson(json);

  Map<String, dynamic> toJson() => _$PersonToJson(this);

  @override
  String toString() {
    return 'Person{login: $login, id: $id, nodeId: $nodeId, avatarUrl: $avatarUrl, gravatarId: $gravatarId, url: $url, htmlUrl: $htmlUrl, followersUrl: $followersUrl, followingUrl: $followingUrl, gistsUrl: $gistsUrl, starredUrl: $starredUrl, subscriptionsUrl: $subscriptionsUrl, organizationsUrl: $organizationsUrl, reposUrl: $reposUrl, eventsUrl: $eventsUrl, receivedEventsUrl: $receivedEventsUrl, type: $type, siteAdmin: $siteAdmin}';
  }
}
