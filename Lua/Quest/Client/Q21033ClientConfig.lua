local Q21033ClientConfig = {
    MainID = 21033,
    ActorAlias = "21033",
    SubIDs = {
        q2103301 = 2103301,
        q2103302 = 2103302,
        q2103303 = 2103303,
        q2103304 = 2103304,
        q2103306 = 2103306,
        q2103305 = 2103305
    },
    Npcs = {
        Npc2016Data = {
            id = 2016,
            alias = "Npc2016",
            script = "Actor/Npc/NpcFSMBehaviour",
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
local narratorWithId = {narratorId = 2103399, pauseLen = 10, resumeLen = 5, tag = "Story", startCheckPause = false}
local durationList = {}
local n = 2
local v = 2
durationList[1] = 2
durationList[2] = n
durationList[3] = v
narratorWithId.durationList = durationList
datas.NarratorWithId = narratorWithId
Q21033ClientConfig.Datas = datas
return Q21033ClientConfig
