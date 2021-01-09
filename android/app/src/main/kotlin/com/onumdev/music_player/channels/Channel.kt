package com.onumdev.music_player.channels

import android.content.ContentResolver
import android.content.Context
import android.database.Cursor
import android.util.Log

object Channel {

    const val CHANNEL_NAME = "channel.flutter/music_library"
    const val ERROR_TAG = "ERROR"
    const val QUERY_FAILED = "QUERY FAILED"
    const val NO_MUSIC_STRING = "YOU DON'T HAVE ANY MUSIC"
    val musicUri = android.provider.MediaStore.Audio.Media.EXTERNAL_CONTENT_URI

    fun getMusicLibrary(context: Context): MutableList<String>? {
        val resolver: ContentResolver = context.contentResolver
        val cursor: Cursor? = resolver.query(musicUri, null, null, null, null)
        val songs = mutableListOf<String>()
        when {
            cursor == null -> {
                Log.d(ERROR_TAG, QUERY_FAILED)
            }
            !cursor.moveToFirst() -> {
                Log.d(ERROR_TAG, NO_MUSIC_STRING)
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