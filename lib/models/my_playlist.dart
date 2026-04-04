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
}
