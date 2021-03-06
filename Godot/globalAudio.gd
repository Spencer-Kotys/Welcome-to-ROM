extends Control

# Variables
onready var _player = $AudioStreamPlayer # Load music player
var is_playing # Is music playing
var playing # What song is playing

# Function to play music
func play(track_url : String):
	if track_url == playing: # checks if song is already playing
		pass
	else:
		stop() # stop music that is playing
		var new_track = load(track_url) # load in track
		_player.stream = new_track # set stream property
		_player.play() # play track
		is_playing = true # set is_playing to true
		playing = track_url # set what song is playing

# Function to stop music
func stop():
	_player.stop() # stop music
	is_playing = false # set is_playing to false
	playing = null # set playing to null
