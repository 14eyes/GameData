local Q74058ClientConfig = {
    MainID = 74058,
    ActorAlias = "74058",
    SubIDs = {
        q7405801 = 7405801,
        q7405804 = 7405804,
        q7405805 = 7405805,
        q7405806 = 7405806,
        q7405802 = 7405802,
        q7405803 = 7405803,
        q7405807 = 7405807
    },
    Npcs = {
        Npc5322Data = {
            id = 5322,
            alias = "Npc5322",
            script = "Actor/Npc/NpcFSMBehaviour",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc5096Data = {
            id = 5096,
            alias = "Npc5096",
            script = "Actor/Npc/NpcFSMBehaviour",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        }
    }
}

local datas = {}

local paim_7405802 = {
    narratorId = 740581001,
    pauseLen = 10,
    resumeLen = 5,
    tag = "StoryInMainPage",
    startCheckPause = false
}

local durationList = {}
local n = 5
durationList[1] = 3
durationList[2] = n
paim_7405802.durationList = durationList
datas.paim_7405802 = paim_7405802

datas.paim_7405803 = {
    narratorId = 740581002,
    pauseLen = 10,
    resumeLen = 5,
    tag = "StoryInMainPage",
    startCheckPause = false,
    durationList = {5}
}

Q74058ClientConfig.Datas = datas
return Q74058ClientConfig
