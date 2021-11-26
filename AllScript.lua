local PlaceId = game.PlaceId

if PlaceId == 6284583030 then
	loadstring(game:HttpGet('https://raw.githubusercontent.com/KuppaHX/MOKURO-HUB/main/PetSimulatorX.lua'))()
elseif PlaceId == 4520749081 or PlaceId == 6381829480 or PlaceId == 5931540094 then
	loadstring(game:HttpGet("https://raw.githubusercontent.com/xDepressionx/Free-Script/main/KingLegacy.lua"))()
elseif PlaceId == 4616652839 or PlaceId == 5447073001 or PlaceId == 5084678830 or PlaceId == 5431071837 or PlaceId == 5431069982 or PlaceId == 5943874201 then
	loadstring(game:HttpGet("https://raw.githubusercontent.com/YUMXXXX/sinso2/main/README.lua"))()
elseif PlaceId == 2753915549 or PlaceId == 4442272183 or PlaceId == 7449423635 then
	loadstring(game:HttpGet("https://raw.githubusercontent.com/xDepressionx/Free-Script/main/BloxFruit.lua"))()
elseif PlaceId == 537413528 then
	loadstring(game:HttpGet("https://raw.githubusercontent.com/GOJOsatoru1122/SWPRDHUBBUILDABOAT/main/README.md"))()
elseif PlacId == 1458767429 then
	loadstring(game:HttpGet"https://raw.githubusercontent.com/xDepressionx/Free-Script/main/Anime-Battle-Arena.lua")()
else
	game.Players.LocalPlayer:kick("สคริปไม่มีเกมนี้ ไอ้เวร")
	wait(1)
	game:Shutdown()
end
