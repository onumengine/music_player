import 'package:audioplayers/audioplayers.dart';

class PlayerRepository {
  AudioPlayer player;

  PlayerRepository() {
    AudioPlayer.logEnabled = true;
    this.player = AudioPlayer();
    print("THE ID OF THIS PLAYER IS ${this.player.playerId}");
  }

  pause() async {
    await this.player.pause();
  }

  play(String filePath) async {
    int result = await this.player.play(filePath, isLocal: true);
  }

  resume() async {
    this.player.resume();
  }

  setVolume(double volume) {
    this.player.setVolume(volume);
  }

  stop() async {
    await this.player.stop();
  }
}
