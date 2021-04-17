package com.onumdev.music_player

import android.content.Intent
import android.os.Build
import android.util.Log
import androidx.annotation.RequiresApi
import com.onumdev.music_player.channels.Channel.CHANNEL_NAME
import com.onumdev.music_player.mediaplayer.musicengine.MusicReader.getMusicLibrary
import io.flutter.embedding.android.FlutterActivity
import io.flutter.embedding.engine.FlutterEngine
import io.flutter.plugin.common.MethodChannel

class MainActivity: FlutterActivity() {
    companion object {
        const val TAG = "MainActivity"
    }

    @RequiresApi(Build.VERSION_CODES.LOLLIPOP)
    override fun configureFlutterEngine(flutterEngine: FlutterEngine) {
        super.configureFlutterEngine(flutterEngine)
        grantUriPermission("com.onumdev.music_player.channels", android.provider.MediaStore.Audio.Media.EXTERNAL_CONTENT_URI , Intent.FLAG_GRANT_READ_URI_PERMISSION)
        MethodChannel(flutterEngine.dartExecutor.binaryMessenger, CHANNEL_NAME).setMethodCallHandler {call, result ->
            if (call.method == "getMusicLibrary") {
                val answer = MusicReader.getMusicLibrary(this)

                answer?.let {
                    result.success(it)
                    Log.d(TAG, result.toString())
                }
            } else {
                result.notImplemented()
            }
        }
    }
}
