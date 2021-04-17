package com.onumdev.mediaplayer.models

data class Song(
        val id: Long?,
        val title: String? = "unknown",
        var artist: String? = "unknown artist",
        var album: String?,
        var genre: String?,
        val filepath: String?
)