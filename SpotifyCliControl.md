# Trigger Spotify commands with Osascript Mac
> When you are too lazy to open spotify app, control it from the terminal without moving from your tab

> Example script [here](https://gist.github.com/ellcom/58f47d7eeb3601734ef9) - this automatically plays or pauses when you execute the command

```ssh
# start
tell application "Spotify" to play

# read-only
osascript -e 'tell application "Spotify" to player state'                  # stopped,playing,paused
osascript -e 'tell application "Spotify" to current track'                 # The current playing track.
osascript -e 'tell application "Spotify" to artwork of current track'      # Image data in TIFF format.
osascript -e 'tell application "Spotify" to artist of current track'       # The artist of the track.
osascript -e 'tell application "Spotify" to album of current track'        # The album of the track.
osascript -e 'tell application "Spotify" to disc number of current track'  # The disc number of the track.
osascript -e 'tell application "Spotify" to duration of current track'     # The length of the track in seconds.
osascript -e 'tell application "Spotify" to played count of current track' # The number of times this track has been played.
osascript -e 'tell application "Spotify" to track number of current track' # The index of the track in its album.
osascript -e 'tell application "Spotify" to starred of current track'      # Is the track starred?
osascript -e 'tell application "Spotify" to popularity of current track'   # How popular is this track? 0-100
osascript -e 'tell application "Spotify" to id of current track'           # The ID of the item.
osascript -e 'tell application "Spotify" to name of current track'         # The name of the track.
osascript -e 'tell application "Spotify" to artwork of current track'      # The track s album cover.
osascript -e 'tell application "Spotify" to album artist of current track' # That album artist of the track.
osascript -e 'tell application "Spotify" to spotify url of current track'  # The URL of the track.
osascript -e 'tell application "Spotify" to player position'               # Position of current track.

# read/write
osascript -e 'tell application "Spotify" to player position'   # The player s position within the currently playing track in seconds.
osascript -e 'tell application "Spotify" to set player position to 20'
osascript -e 'tell application "Spotify" to repeating enabled' # Is repeating enabled in the current playback context?
osascript -e 'tell application "Spotify" to set repeating enabled to true'
osascript -e 'tell application "Spotify" to repeating'         # Is repeating on or off?
osascript -e 'tell application "Spotify" to set repeating to true'
osascript -e 'tell application "Spotify" to shuffling enabled' # Is shuffling enabled in the current playback context?
osascript -e 'tell application "Spotify" to shuffling'         # Is shuffling on or off?
osascript -e 'tell application "Spotify" to sound volume'      # The sound output volume (0 = minimum, 100 = maximum)
osascript -e 'tell application "Spotify" to set sound volume to 50'

# commands
osascript -e 'tell application "Spotify" to next track'
osascript -e 'tell application "Spotify" to previous track'
osascript -e 'tell application "Spotify" to playpause'
osascript -e 'tell application "Spotify" to pause'
osascript -e 'tell application "Spotify" to play'
osascript -e 'tell application "Spotify" to play track "spotify:track:7IjFVDzHNxAAWoMwl2XRm5"'
osascript -e 'tell application "Spotify" to play track "spotify:playlist:3pCz4zMeSm7yIU7fslKih1"'

# read-only
osascript -e 'tell application "Spotify" to name'      # The name of the application.
osascript -e 'tell application "Spotify" to version'   # The version of the application.

# end
osascript -e 'tell application "Spotify" to quit'
```
