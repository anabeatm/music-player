import 'package:minimal_music_player/models/song.dart';

class MyPlaylist {
  final String name;
  final String playlistImagePath;
  final List<Song> songs;

  MyPlaylist({
    required this.name,
    required this.playlistImagePath,
    required this.songs,
  });

  Map<String, dynamic> toJson() => {
    'name': name,
    'playlistImagePath': playlistImagePath,
    'songs': songs.map((song) => song.toJson()).toList(),
  };

  factory MyPlaylist.fromJson(Map<String, dynamic> json) => MyPlaylist(
    name: json['name'],
    playlistImagePath: json['playlistImagePath'],
    songs: (json['songs'] as List).map((s) => Song.fromJson(s)).toList(),
  );
}
