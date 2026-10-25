local Q73282ClientConfig = {
    MainID = 73282,
    ActorAlias = "73282",
    SubIDs = {
        q7328207 = 7328207,
        q7328201 = 7328201,
        q7328202 = 7328202,
        q7328204 = 7328204,
        q7328205 = 7328205,
        q7328206 = 7328206,
        q7328203 = 7328203
    },
    Npcs = {
        Npc20842Data = {
            id = 20842,
            alias = "Npc20842",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc20932Data = {
            id = 20932,
            alias = "Npc20932",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc4292Data = {
            id = 4292,
            alias = "Npc4292",
            script = "Actor/Npc/NpcFSMBehaviour",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        }
    }
}

local datas = {}
local narratorWithId = {narratorId = 7328201, pauseLen = 10, resumeLen = 5, tag = "Story", startCheckPause = false}
local durationList = {}
local n = 6
durationList[1] = 2.5
durationList[2] = n
narratorWithId.durationList = durationList
datas.NarratorWithId = narratorWithId
Q73282ClientConfig.Datas = datas
return Q73282ClientConfig
