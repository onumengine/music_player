package com.onumdev.music_player.mediaplayer

import android.content.ContentUris
import android.content.Context
import android.media.AudioAttributes
import android.media.MediaPlayer
import android.net.Uri
import android.os.Build
import androidx.annotation.RequiresApi

object Player : MediaPlayer.OnPreparedListener {
    var mediaPlayer: MediaPlayer? = null
    val idennity: Long = 5678684548576845684
    val contentUri: Uri = ContentUris.withAppendedId(android.provider.MediaStore.Audio.Media.EXTERNAL_CONTENT_URI, idennity)

    override fun onPrepared(mp: MediaPlayer?) {
        TODO("Not yet implemented")
    }

    @RequiresApi(Build.VERSION_CODES.LOLLIPOP)
    fun initializeMediaPlayer(context: Context, listener: MediaPlayer.OnPreparedListener) {
        mediaPlayer = MediaPlayer().apply {
            setAudioAttributes(
                    AudioAttributes.Builder()
                            .setContentType(AudioAttributes.CONTENT_TYPE_MUSIC)
                            .setUsage(AudioAttributes.USAGE_MEDIA)
                            .build()
            )
            setDataSource(context.applicationContext, contentUri)
            setOnPreparedListener(listener)
        }
        mediaPlayer?.start()
    }

    fun prepareMediaPlayerAsync() {
        mediaPlayer?.prepareAsync()
    }

    fun startMusicPlayer() {
        mediaPlayer?.start()
    }

    fun releaseMediaPlayer() {
        mediaPlayer?.release()
    }
}