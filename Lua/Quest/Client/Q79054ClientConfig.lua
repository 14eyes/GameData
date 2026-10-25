local Q79054ClientConfig = {
    MainID = 79054,
    ActorAlias = "79054",
    SubIDs = {q7905401 = 7905401, q7905402 = 7905402, q7905403 = 7905403, q7905404 = 7905404},
    Npcs = {
        Npc20737Data = {
            id = 20737,
            alias = "Npc20737",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc13249Data = {
            id = 13249,
            alias = "Npc13249",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        }
    }
}

local datas = {}

local narrator7905402 = {
    narratorId = 790540202,
    pauseLen = 10,
    resumeLen = 5,
    tag = "StoryInMainPage",
    startCheckPause = false
}

local durationList = {}
local n = 3
durationList[1] = 3
durationList[2] = n
narrator7905402.durationList = durationList
datas.Narrator7905402 = narrator7905402
Q79054ClientConfig.Datas = datas
return Q79054ClientConfig
