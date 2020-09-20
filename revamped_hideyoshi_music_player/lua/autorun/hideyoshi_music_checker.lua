if ( SERVER ) then return end 

local ExistingMusicList = {"AcrossTheStars.mp3","Anakin'sBetrayal.mp3","Anakin'sTheme.mp3","AttackOfTheClones.mp3","BF2GameplayTrailerTheme.mp3","BinarySunset.mp3","BountyDroid.mp3","BountyHunterPursuit.mp3","CantinaBand.mp3","DuelOfTheFates.mp3","FallenOrderTheHu.mp3","FinalTrailerTheme.mp3","GloryOfTheEmpire.mp3","Hope.mp3","I'mHanSolo.mp3","IHaveAnIdea.mp3","ImperialAttack.mp3","IndianPopSource.mp3","It'sOverNow.mp3","JediTempleMarch.mp3","MarchOfTheResistance.mp3","MoffGideonSuite.mp3","NurseAndProtect.mp3","RepublicCommandoTheme.mp3","RevisitingSnoke.mp3","Rey'sTheme.mp3","TheBattleOfEndorI.mp3","TheBattleOfEndorII.mp3","TheBattleOfEndorIII.mp3","TheBirthoftheTwinsandPadme'sDestiny.mp3","TheImperialMarch.mp3","TheImperialSuite.mp3","TheMandalorian.mp3","TheMandalorianV2.mp3","TheMasterSwitch.mp3","TheOccupationOfBalmorra.mp3","TheThroneRoom.mp3","Thrawn'sWeb.mp3","ValkorianTheme.mp3","YourFatherWouldBeProud.mp3"}
local CurrentMusicList = ""
MissingMusic = {}

http.Fetch( "https://raw.githubusercontent.com/Hideyoshi-Kinoshita/Hideyoshi-StarWars-Music-Player/master/Current%20Music%20List.txt",
	function( body, len, headers, code )
    CurrentMusicList = body
    local CurrentMusicListTable = string.Split(CurrentMusicList, " ")

    for k,v in pairs(CurrentMusicListTable) do
      if CurrentMusicListTable[k] ~= ExistingMusicList[k] then
        table.insert(MissingMusic, v)
        print("[Hideyoshi's Music Player] "..v.." is not installed.")
      end
    end

    chat.AddText("[Hideyoshi's Music Player] You have "..table.Count(ExistingMusicList).."/"..table.Count(CurrentMusicListTable).." of Music Installed.")
    if table.Count(ExistingMusicList) ~= table.Count(CurrentMusicListTable) then
      print("[Hideyoshi's Music Player] You are Missing Music. Please head to the workshop to update the Hideyoshi's Music Box")
      chat.AddText("[Hideyoshi's Music Player] You are Missing Music. Please head to the workshop to update the Hideyoshi's Music Player")
    end
  end,
  
	function( error )
		chat.AddText("A Error has occured in Hideyoshi's Revamped Star Wars Music Player (hideyoshi_music_checker.lua). Thus, We were unable to check if you retained the updated music list. This can lead to inability to play music. See Console.")
    print("A Error has occured in Hideyoshi's Revamped Star Wars Music Player (hideyoshi_music_checker.lua). Thus, We were unable to check if you retained the updated music list. This can lead to inability to play music. This error was most likely caused by a Failed HTTP.POST if the problem pursists contact @Hideyoshi#0014")
  end, 
  { 
    ["accept-encoding"] = "gzip, deflate",
    ["accept-language"] = "fr" 
  }
)
