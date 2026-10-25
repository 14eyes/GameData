local Q74059ClientConfig = {
    MainID = 74059,
    ActorAlias = "74059",
    SubIDs = {
        q7405901 = 7405901,
        q7405905 = 7405905,
        q7405902 = 7405902,
        q7405906 = 7405906,
        q7405903 = 7405903,
        q7405904 = 7405904
    },
    Npcs = {
        Npc5322Data = {
            id = 5322,
            alias = "Npc5322",
            script = "Actor/Npc/NpcFSMBehaviour",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        }
    }
}

local datas = {}

local paim_7405901 = {
    narratorId = 740591001,
    pauseLen = 10,
    resumeLen = 5,
    tag = "StoryInMainPage",
    startCheckPause = false
}

local durationList = {}
local n = 3
local v = 4
durationList[1] = 7
durationList[2] = n
durationList[3] = v
paim_7405901.durationList = durationList
datas.paim_7405901 = paim_7405901
Q74059ClientConfig.Datas = datas
return Q74059ClientConfig
