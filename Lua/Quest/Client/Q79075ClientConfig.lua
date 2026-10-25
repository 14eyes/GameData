local Q79075ClientConfig = {
    MainID = 79075,
    ActorAlias = "79075",
    IgnoreDoReturnNpcForDaily = true,
    SubIDs = {q7907501 = 7907501, q7907502 = 7907502, q7907503 = 7907503, q7907504 = 7907504, q7907505 = 7907505},
    Npcs = {
        Npc21449Data = {
            id = 21449,
            alias = "Npc21449",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc21585Data = {
            id = 21585,
            alias = "Npc21585",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        }
    }
}

local datas = {}
local narratorWithIdWind = {narratorId = 790759901, tag = "StoryInMainPage", startCheckPause = true, resumeReminder = 0}
local durationList = {}
local n = 3
durationList[1] = 3
durationList[2] = n
narratorWithIdWind.durationList = durationList
datas.NarratorWithIdWind = narratorWithIdWind
Q79075ClientConfig.Datas = datas
return Q79075ClientConfig
