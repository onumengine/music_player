package com.onumdev.mediaplayer.datasources

import android.content.Context
import android.os.Build
import androidx.annotation.RequiresApi
import com.onumdev.mediaplayer.models.Song
import com.onumdev.mediaplayer.musicengine.MusicReader

object DataRepository {

    lateinit var songList: List<Song>

    @RequiresApi(Build.VERSION_CODES.R)
    fun getSongsInDeviceStorage(context: Context) {
        songList = MusicReader.getMusicLibrary(context)
    }
}