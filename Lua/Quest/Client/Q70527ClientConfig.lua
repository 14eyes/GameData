local Q70527ClientConfig = {
    MainID = 70527,
    ActorAlias = "70527",
    SubIDs = {q7052701 = 7052701, q7052702 = 7052702},
    Npcs = {
        Npc1419Data = {
            id = 1419,
            alias = "Npc1419",
            script = "Actor/Npc/NpcFSMBehaviour",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc30159Data = {
            id = 30159,
            alias = "Npc30159",
            script = "Actor/Npc/NpcFSMBehaviour",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        }
    }
}

local datas = {}

local narrator_7052701 = {
    narratorId = 7052701,
    pauseLen = 10,
    resumeLen = 5,
    tag = "StoryInMainPage",
    startCheckPause = false
}

local durationList = {}
local n = 3
durationList[1] = 3
durationList[2] = n
narrator_7052701.durationList = durationList
datas.Narrator_7052701 = narrator_7052701
Q70527ClientConfig.Datas = datas
return Q70527ClientConfig
