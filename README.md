# Hideyoshi-StarWars-Music-Player
Created for the community of Imperial Gaming (All but the Serverside Code is available here)

# Features & Improvements:
- Enhanced LUA Code
    - For Loops became a thing
    - Ability to Stop Music without using a Networked RunConsoleCommand("stopsound") allowing more then
      one music player to be used at a time (If not using Global Setting)
    - Altered CSoundPatch:Play to CSoundPatch:PlayEX to allow Staff to Control Pitch Volume and Level.
    - Made the Derma Interface compatible with displays that are not 1920x1080
    - Using CSoundPatch for Global Music - Begone Net Message Broadcast
    - ~~Stopped using Entity:EmitSound and the entirety of the Sound Library in favour for the CSoundPatch Library and CSoundPatch3D
    - Stopped using the CSoundPatch Library and Sound Library in favour of IGModAudioChannel
- 3D2D Interface to allow Staff to better view the current music being emitted from the music player. Via the 3D2D Interface Staff can:
    - View the Current Song that is playing.
    - Stop (Not Pause) the current song
    - The the current status of the Song (What time it's at)
    - Access to the Music Player Menu (To Play Music or Configure the Volume)
    - Suggest more music
- Missing Music Detection System
    - The Addon can now detect if the Client is missing Music or using a outdated version of the Music Box and Notify them. When starting up the game/entering the server or when the missing music is being played.
- Updated Music
    - Added New Music and Removed Old Music (From Community Advice)
- [BETA] Play Music from YouTube
    - [BETA] Restricted Feature: Staff can play music from YouTube URLs or direct music links; Hoorah for Custom Music!
- Better Global Music
    - You can actually Control the Global Music's Volume now!~ No more Earrape :)
- Added Shit Code

# Known Bugs:
~~-The 3D2D Interface/GUI Doesn't show the proper time.
![Image of Bug Report](https://i.imgur.com/pGd9176.jpg)
    -Known Issue. Addressed by Facepunch~~
As of 20.09.2020 this issue is fixed by moving over to CSoundPatch Library.

# Development Changelog
- 19-09-2020
    Began work on the Code & YouTube-DL Python Code
- 20-09-2020 
    Completed Derma Interface
- 21-03-2020
    Began Migration from Sound Library to CSoundPatch Library

# How to use:
https://github.com/Hideyoshi-Kinoshita/Hideyoshi-StarWars-Music-Player/wiki
See the Wiki for instructions and regulation on the Music Player
