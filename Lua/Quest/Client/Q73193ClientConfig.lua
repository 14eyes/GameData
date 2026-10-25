local Q73193ClientConfig = {
    MainID = 73193,
    ActorAlias = "73193",
    SubIDs = {q7319301 = 7319301, q7319302 = 7319302, q7319305 = 7319305, q7319309 = 7319309, q7319308 = 7319308},
    Npcs = {
        Npc4235Data = {
            id = 4235,
            alias = "Npc4235",
            script = "Actor/Npc/NpcFSMBehaviour",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc4232Data = {
            id = 4232,
            alias = "Npc4232",
            script = "Actor/Npc/NpcFSMBehaviour",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        }
    }
}

local datas = {}
local narrator_7319311 = {narratorId = 7319311, pauseLen = 10, resumeLen = 5, tag = "Story", startCheckPause = false}
local durationList = {}
local n = 5
local v = 5
durationList[1] = 5
durationList[2] = n
durationList[3] = v
narrator_7319311.durationList = durationList
datas.Narrator_7319311 = narrator_7319311
Q73193ClientConfig.Datas = datas
return Q73193ClientConfig
