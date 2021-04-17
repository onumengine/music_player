package com.onumdev.mediaplayer.musicengine

import android.content.Context
import android.os.Build
import android.provider.MediaStore
import android.util.Log
import android.widget.Toast
import androidx.annotation.RequiresApi
import com.onumdev.mediaplayer.models.Song

object MusicReader {

    /*
    @RequiresApi(Build.VERSION_CODES.R)
    fun getMusicLibrary(context: Context): MutableList<Song> {
        val resolver = context.contentResolver
        val contentResolverUri = MediaStore.Audio.Media.EXTERNAL_CONTENT_URI
        val cursor = resolver.query(
                contentResolverUri,
                arrayOf(
                        MediaStore.Audio.Media.ALBUM,
                        MediaStore.Audio.Media.ARTIST,
                        MediaStore.Audio.Media.TRACK,
                        MediaStore.Audio.Media.TITLE,
                        MediaStore.Audio.Media.DISPLAY_NAME,
                        MediaStore.Audio.Media.DATA,
                        MediaStore.Audio.Media.DURATION,
                        MediaStore.Audio.Media.YEAR,
                ),
                "${MediaStore.Audio.Media.DATA} = ?",
                arrayOf<String>(contentResolverUri.toString()),
                ""
        )
        var musicLibrary = mutableListOf<Song>()

        when {
            cursor == null -> {
                Toast.makeText(context, "Music fetch failed", Toast.LENGTH_SHORT).show()
            }
            !cursor.moveToFirst() -> {
                Log.d("CONTENT RESOLVER", "No music on your phone")
            }
            else -> {
                val titleColumn: Int = cursor.getColumnIndex(MediaStore.Audio.Media.TITLE)
                val idColumn: Int = cursor.getColumnIndex(MediaStore.Audio.Media._ID)
                val artistColumn: Int = cursor.getColumnIndex(MediaStore.Audio.Media.ARTIST)
                val albumColumn: Int = cursor.getColumnIndex(MediaStore.Audio.Media.ALBUM)
                val trackNumberColumn: Int = cursor.getColumnIndex(MediaStore.Audio.Media.CD_TRACK_NUMBER)
                val genreColumn: Int = cursor.getColumnIndex(MediaStore.Audio.Media.GENRE)
                val filepathColumn: Int = cursor.getColumnIndex(MediaStore.Audio.Media.RELATIVE_PATH)
                do {
                    var latestCreatedSong = Song(
                            id = cursor.getLong(idColumn),
                            title = cursor.getString(titleColumn),
                            artist = cursor.getString(artistColumn),
                            album = cursor.getString(albumColumn),
                            trackNumber = cursor.getInt(trackNumberColumn),
                            genre = cursor.getString(genreColumn),
                            filepath = cursor.getString(filepathColumn),
                    )
                    musicLibrary.add(latestCreatedSong)
                } while (cursor.moveToNext())
            }
        }
        cursor?.close()
        //Log.d("CONTENT RESOLVER", musicLibrary.toString())
        println(musicLibrary);
        return musicLibrary
    }
    */

    /***
     * Hello, Future me. This function works fine if you uncomment it and make some minor adjustments
     * Please don't make changes to it.
     * Make changes to the function above if necessary.
     */


    fun getMusicLibrary(context: Context): /*MutableMap<Long, String>*/ MutableList<Song> {
        val resolver = context.contentResolver
        val contentResolverUri = MediaStore.Audio.Media.EXTERNAL_CONTENT_URI
        val cursor = resolver.query(contentResolverUri, null, null, null, null)
        //var musicLibrary = mutableMapOf<Long, String>()
        var musicLibrary = mutableListOf<Song>()

        when {
            cursor == null -> {
                Toast.makeText(context, "Music fetch failed", Toast.LENGTH_SHORT).show()
            }
            !cursor.moveToFirst() -> {
                Log.d("CONTENT RESOLVER", "No music on your phone")
            }
            else -> {
                val titleColumn: Int = cursor.getColumnIndex(MediaStore.Audio.Media.TITLE)
                val idColumn: Int = cursor.getColumnIndex(MediaStore.Audio.Media._ID)

                val artistColumn: Int = cursor.getColumnIndex(MediaStore.Audio.Media.ALBUM_ARTIST)
                val albumColumn: Int = cursor.getColumnIndex(MediaStore.Audio.Media.ALBUM)
                val trackNumberColumn: Int = cursor.getColumnIndex(MediaStore.Audio.Media.CD_TRACK_NUMBER)
                val genreColumn: Int = cursor.getColumnIndex(MediaStore.Audio.Media.GENRE)
                val filepathColumn: Int = cursor.getColumnIndex(MediaStore.Audio.Media.RELATIVE_PATH)

                do {

                    var latestCreatedSong = Song(
                            id = cursor.getLong(idColumn),
                            title = cursor.getString(titleColumn),
                            artist = cursor.getString(artistColumn),
                            album = cursor.getString(albumColumn),
                            //trackNumber = cursor.getInt(trackNumberColumn),
                            genre = cursor.getString(genreColumn),
                            filepath = cursor.getString(filepathColumn),
                    )
                    musicLibrary.add(latestCreatedSong)

                    //musicLibrary.put(cursor.getLong(idColumn), cursor.getString(titleColumn))
                } while (cursor.moveToNext())
            }
        }
        cursor?.close()
        Log.d("CONTENT RESOLVER", musicLibrary.toString())
        return musicLibrary
    }

}
