package com.onumdev.mediaplayer.musicengine

import android.content.Context

object Player {

    fun playOneSong(context: Context) {
        val songsMap = MusicReader.getMusicLibrary(context)
    }
}