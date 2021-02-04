package com.onumdev.music_player.mediaplayer

import android.content.Context
import android.media.AudioAttributes
import android.media.MediaPlayer
import android.os.Build
import androidx.annotation.RequiresApi

object AudioPlayer {
    val musicUri = android.provider.MediaStore.Audio.Media.EXTERNAL_CONTENT_URI
    lateinit var audioPlayer: MediaPlayer

    @RequiresApi(Build.VERSION_CODES.LOLLIPOP)
    fun startPlaying(context: Context): Boolean? {
        audioPlayer = MediaPlayer().apply {
            setAudioAttributes(
                    AudioAttributes.Builder()
                            .setContentType(AudioAttributes.CONTENT_TYPE_MUSIC)
                            .setUsage(AudioAttributes.USAGE_MEDIA)
                            .build()
            )
            setDataSource(context.applicationContext, musicUri)
            prepareAsync()
            start()
        }
        return true
    }
}