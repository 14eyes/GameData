local Q75142ClientConfig = {
    MainID = 75142,
    ActorAlias = "75142",
    SubIDs = {q7514205 = 7514205, q7514201 = 7514201},
    Npcs = {
        Npc21765 = {
            id = 21765,
            alias = "Npc21765",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc21766 = {
            id = 21766,
            alias = "Npc21766",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        }
    }
}

local datas = {}
local narratorWithId_7514201 = {narratorId = 7514201, tag = "StoryInMainPage", startCheckPause = true, resumeReminder = -1}
local durationList = {}
local n = 3
local v = 3
durationList[1] = 4
durationList[2] = n
durationList[3] = v
narratorWithId_7514201.durationList = durationList
datas.NarratorWithId_7514201 = narratorWithId_7514201
Q75142ClientConfig.Datas = datas
return Q75142ClientConfig
