local Q74091ClientConfig = {
    MainID = 74091,
    ActorAlias = "74091",
    SubIDs = {
        q7409101 = 7409101,
        q7409112 = 7409112,
        q7409102 = 7409102,
        q7409115 = 7409115,
        q7409103 = 7409103,
        q7409113 = 7409113,
        q7409104 = 7409104,
        q7409114 = 7409114,
        q7409105 = 7409105,
        q7409106 = 7409106,
        q7409107 = 7409107,
        q7409108 = 7409108,
        q7409109 = 7409109,
        q7409111 = 7409111,
        q7409110 = 7409110
    },
    Npcs = {
        Npc5227Data = {
            id = 5227,
            alias = "Npc5227",
            script = "Actor/Npc/NpcFSMBehaviour",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc5226Data = {
            id = 5226,
            alias = "Npc5226",
            script = "Actor/Npc/NpcFSMBehaviour",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        }
    },
    Points = {
        TPos_Q74091Trigger = {pos = {x = 4943.434, y = 440.0, z = 4985.211}, rot = {x = 0.0, y = 0.0, z = 0.0}},
        TPos_Q74091Trigger1 = {pos = {x = 4943.434, y = 440.0, z = 4985.211}, rot = {x = 0.0, y = 0.0, z = 0.0}},
        TPos_Q74091Trigger2 = {pos = {x = 4943.434, y = 440.0, z = 4985.211}, rot = {x = 0.0, y = 0.0, z = 0.0}}
    }
}

local datas = {}

local narratorWithId = {
    narratorId = 740911101,
    pauseLen = 10,
    resumeLen = 5,
    tag = "StoryInMainPage",
    startCheckPause = false
}

local durationList = {}
local n = 4
durationList[1] = 3
durationList[2] = n
narratorWithId.durationList = durationList
datas.NarratorWithId = narratorWithId
Q74091ClientConfig.Datas = datas
return Q74091ClientConfig
