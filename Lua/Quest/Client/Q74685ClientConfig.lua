local Q74685ClientConfig = {
    MainID = 74685,
    ActorAlias = "74685",
    SubIDs = {q7468501 = 7468501, q7468502 = 7468502},
    Npcs = {
        Npc30565 = {
            id = 30565,
            alias = "Npc30565",
            script = "Actor/Npc/NpcFSMBehaviour",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        }
    },
    Points = {
        Q7468501Trigger = {pos = {x = 1819.629, y = 449.792, z = 4817.158}, rot = {x = 0.0, y = 359.261, z = 0.0}}
    }
}

local datas = {}
local narratorWithId_7468501 = {narratorId = 7468501, tag = "StoryInMainPage", startCheckPause = true, resumeReminder = -1}
local durationList = {}
local n = 2
durationList[1] = 2.5
durationList[2] = n
narratorWithId_7468501.durationList = durationList
datas.NarratorWithId_7468501 = narratorWithId_7468501
Q74685ClientConfig.Datas = datas
return Q74685ClientConfig
