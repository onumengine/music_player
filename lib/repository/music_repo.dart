import 'package:flutter_audio_query/flutter_audio_query.dart';

class MusicRepository {
  static Future<List<SongInfo>> fetchSongsInDevice() async {
    final FlutterAudioQuery flutterAudioQuery = FlutterAudioQuery();
    try {
      List<SongInfo> allSongsInDevice = await flutterAudioQuery.getSongs();
      print("ABOUT TO PRINT ALL SONGS");
      print(allSongsInDevice);
      print("ALL ${allSongsInDevice.length} SONGS PRINTED SUCCESSFULLY");
      print("RETURNING SONGS TO THE CHANGE_NOTIFIER");
      return allSongsInDevice;
    } on Exception catch (e) {
      print("MUSIC FETCH ENDED WITH AN EXCEPTION: \n$e");
    }
  }
}
