local Q73098ClientConfig = {
    MainID = 73098,
    ActorAlias = "73098",
    SubIDs = {q7309804 = 7309804, q7309801 = 7309801, q7309802 = 7309802, q7309805 = 7309805, q7309803 = 7309803},
    Npcs = {
        Npc20762Data = {
            id = 20762,
            alias = "Npc20762",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        PaimonData = {
            id = 1005,
            alias = "Paimon",
            script = "Actor/Quest/Q352/Paimon",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        }
    }
}

local datas = {}
local narratorWithId = {narratorId = 7309801, pauseLen = 10, resumeLen = 5, tag = "Story", startCheckPause = false}
local durationList = {}
local n = 3
durationList[1] = 3
durationList[2] = n
narratorWithId.durationList = durationList
datas.NarratorWithId = narratorWithId
Q73098ClientConfig.Datas = datas
return Q73098ClientConfig
