local PlaceID = game.PlaceId
if PlaceID == 537413528 then
    loadstring(game:HttpGet"https://raw.githubusercontent.com/GOJOsatoru1122/SWPRDHUBBUILDABOAT/main/README.md")()
elseif PlaceID == 2753915549 or PlaceID == 4442272183 or PlaceID == 7449423635 then
    loadstring(game:HttpGet"https://raw.githubusercontent.com/xDepressionx/Free-Script/main/BloxFruit.lua")()
elseif PlaceID == 4616652839 or PlaceID == 5447073001 or PlaceID == 5084678830 or PlaceID == 5431071837 or PlaceID == 5431069982 or PlaceID == 5943874201 then
    loadstring(game:HttpGet("https://raw.githubusercontent.com/YUMXXXX/sinso2/main/README.lua"))()
else
    game.Players.LocalPlayer:kick("Script not Support")
    wait(2)
    game:Shutdown()
end
