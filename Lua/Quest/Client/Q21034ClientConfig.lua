local Q21034ClientConfig = {
    MainID = 21034,
    ActorAlias = "21034",
    SubIDs = {
        q2103401 = 2103401,
        q2103406 = 2103406,
        q2103407 = 2103407,
        q2103402 = 2103402,
        q2103403 = 2103403,
        q2103404 = 2103404,
        q2103405 = 2103405
    },
    Npcs = {
        Npc2016Data = {
            id = 2016,
            alias = "Npc2016",
            script = "Actor/Npc/NpcFSMBehaviour",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        }
    }
}

local datas = {}
local narratorWithId = {narratorId = 2103499, pauseLen = 10, resumeLen = 5, tag = "Story", startCheckPause = false}
local durationList = {}
local n = 2
local v = 3
durationList[1] = 2
durationList[2] = n
durationList[3] = v
narratorWithId.durationList = durationList
datas.NarratorWithId = narratorWithId
Q21034ClientConfig.Datas = datas
return Q21034ClientConfig
