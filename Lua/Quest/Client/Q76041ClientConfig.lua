local Q76041ClientConfig = {
    MainID = 76041,
    ActorAlias = "76041",
    SubIDs = {q7604101 = 7604101, q7604102 = 7604102, q7604103 = 7604103, q7604104 = 7604104},
    Npcs = {
        Npc22110 = {
            id = 22110,
            alias = "Npc22110",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc22111 = {
            id = 22111,
            alias = "Npc22111",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Paimon = {
            id = 1005,
            alias = "Paimon",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        }
    },
    Points = {_Q7604101TriggerPoint_ = {pos = {x = 2948, y = 245, z = 9900}, rot = {x = 0, y = 0, z = 0}}}
}

local datas = {}
local narratorWithId_760419901 = {narratorId = 760419901, tag = "StoryInMainPage", startCheckPause = false, resumeReminder = 0}
local durationList = {}
local n = 5
durationList[1] = 5
durationList[2] = n
narratorWithId_760419901.durationList = durationList
datas.NarratorWithId_760419901 = narratorWithId_760419901
Q76041ClientConfig.Datas = datas
return Q76041ClientConfig
