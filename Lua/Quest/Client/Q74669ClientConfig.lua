local Q74669ClientConfig = {
    MainID = 74669,
    ActorAlias = "74669",
    SubIDs = {q7466901 = 7466901, q7466902 = 7466902},
    Npcs = {
        Npc30418Data = {
            id = 30418,
            alias = "Npc30418",
            script = "Actor/Npc/NpcFSMBehaviour",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        }
    },
    Points = {
        TPos_Q74669Trigger = {pos = {x = 2891.383, y = 440.824, z = 4245.83}, rot = {x = 0.0, y = 36.0, z = 0.0}}
    }
}

local datas = {}

local narratorWithId = {
    narratorId = 746699901,
    pauseLen = 10,
    resumeLen = 5,
    tag = "StoryInMainPage",
    startCheckPause = false
}

local durationList = {}
local n = 3
durationList[1] = 3
durationList[2] = n
narratorWithId.durationList = durationList
datas.NarratorWithId = narratorWithId
Q74669ClientConfig.Datas = datas
return Q74669ClientConfig
