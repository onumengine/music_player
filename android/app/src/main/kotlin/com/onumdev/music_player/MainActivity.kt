package com.onumdev.music_player

import android.content.ContentResolver
import android.database.Cursor
import android.util.Log
import androidx.annotation.NonNull
import io.flutter.embedding.android.FlutterActivity
import io.flutter.embedding.engine.FlutterEngine
import io.flutter.plugin.common.MethodChannel

class MainActivity: FlutterActivity() {
    private val CHANNEL = "channel.flutter/music_library"

    override fun configureFlutterEngine(flutterEngine: FlutterEngine) {
        super.configureFlutterEngine(flutterEngine)
        MethodChannel(flutterEngine.dartExecutor.binaryMessenger, CHANNEL).setMethodCallHandler {call, result ->
            if (call.method == "getMusicLibrary") {
                val musicLibrary = getMusicLibrary()

                if (musicLibrary != null) {
                    result.success(musicLibrary)
                } else {
                    result.error("UNAVAILABLE", "MUSIC NOT AVAILABLE", null)
                }
            } else {
                result.notImplemented()
            }
        }
    }

    private fun getMusicLibrary(): MutableList<String>? {
        val resolver: ContentResolver = contentResolver
        val uri = android.provider.MediaStore.Audio.Media.EXTERNAL_CONTENT_URI
        val cursor: Cursor? = resolver.query(uri, null, null, null, null)
        val songs = mutableListOf<String>()
        when {
            cursor == null -> {
                Log.d("ERROR", "QUERY FAILED")
            }
            !cursor.moveToFirst() -> {
                Log.d("ERROR", "YOU DON'T HAVE ANY MUSIC")
            }
            else -> {
                val titleColumn: Int = cursor.getColumnIndex(android.provider.MediaStore.Audio.Media.TITLE)
                do {
                    val songTitle = cursor.getString(titleColumn)
                    songs.add(songTitle)
                } while (cursor.moveToNext())
            }
        }
        cursor?.close()
        return songs
    }
}
