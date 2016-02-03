### Exercise 2 ###

# As you noticed, it often takes multiple queries to retrieve the desired information.
# This is a perfect situation in which writing a function will allow you to better structure your
# code, and give a name to a repeated task.
library(jsonlite)
install.packages('audio')
library(audio)

# Write a function that allows you to specify an artist, and returns the top 10 tracks of that artist
top_track <- function(artist) {
base <- "https://api.spotify.com/v1/"
artist_search <- paste0(base, 'search?', 'q=', artist, '&type=artist')

info_artist <- fromJSON(artist_search)
id_artist <- info_artist$artists$item$id[1]

search_albums <- paste0(base, 'artists/', id_artist, '/top-tracks?country=US')
top_tracks <- fromJSON(search_albums)
return(top_tracks$tracks$name)
}

# What are the top 10 tracks by Nelly?
top_ten_nelly <- top_track("nelly")

### Bonus ### 
# Write a function that allows you to specify a search type (artist, album, etc.), and a string, 
# that returns the album/artist/etc. page of interest


# Search albums with the word "Sermon"

