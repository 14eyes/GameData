local Q76081ClientConfig = {
    MainID = 76081,
    ActorAlias = "76081",
    SubIDs = {q7608101 = 7608101, q7608102 = 7608102, q7608103 = 7608103, q7608104 = 7608104},
    Npcs = {
        Npc22183 = {
            id = 22183,
            alias = "Npc22183",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        }
    }
}

local datas = {}
local narratorWithId_Ffinish3 = {narratorId = 760819901, tag = "StoryInMainPage", startCheckPause = true, resumeReminder = 0}
local durationList = {}
local n = 6
durationList[1] = 4
durationList[2] = n
narratorWithId_Ffinish3.durationList = durationList
datas.NarratorWithId_Ffinish3 = narratorWithId_Ffinish3
local narratorWithId_Yfinish3 = {narratorId = 760819903, tag = "StoryInMainPage", startCheckPause = true, resumeReminder = 0}
local tbl = {}
local v = 4
local n2 = 3
tbl[1] = 4
tbl[2] = v
tbl[3] = n2
narratorWithId_Yfinish3.durationList = tbl
datas.NarratorWithId_Yfinish3 = narratorWithId_Yfinish3
Q76081ClientConfig.Datas = datas
return Q76081ClientConfig
