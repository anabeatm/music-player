class Song {
  final String songName;
  final String artistName;
  final String albumArtImagePath;
  final String audioPath;

  Song({
    required this.songName,
    required this.artistName,
    required this.albumArtImagePath,
    required this.audioPath,
  });

  Map<String, dynamic> toJson() => {
    'songName': songName,
    'artistName': artistName,
    'albumArtImagePath': albumArtImagePath,
    'audioPath': audioPath,
  };

  factory Song.fromJson(Map<String, dynamic> json) => Song(
    songName: json['songName'],
    artistName: json['artistName'],
    albumArtImagePath: json['albumArtImagePath'],
    audioPath: json['audioPath'],
  );
}
