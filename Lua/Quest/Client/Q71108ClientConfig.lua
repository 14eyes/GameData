local Q71108ClientConfig = {
    MainID = 71108,
    ActorAlias = "71108",
    SubIDs = {q7110801 = 7110801, q7110802 = 7110802, q7110803 = 7110803, q7110804 = 7110804},
    Npcs = {
        Npc2484Data = {
            id = 2484,
            alias = "Npc2484",
            script = "Actor/Npc/NpcFSMBehaviour",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc2493Data = {
            id = 2520,
            alias = "Npc2493",
            script = "Actor/Npc/NpcFSMBehaviour",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc2230Data = {
            id = 2230,
            alias = "Npc2230",
            script = "Actor/Npc/NpcFSMBehaviour",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        }
    }
}

local datas = {
    NarratorWithId711080199 = {
        narratorId = 7110802,
        pauseLen = 10,
        resumeLen = 5,
        tag = "StoryInMainPage",
        startCheckPause = false,
        durationList = {6}
    },
    NarratorWithId711080102 = {
        narratorId = 7110801,
        pauseLen = 10,
        resumeLen = 5,
        tag = "StoryInMainPage",
        startCheckPause = false,
        durationList = {3}
    }
}

local narratorWithId7110802 = {
    narratorId = 7110803,
    pauseLen = 10,
    resumeLen = 5,
    tag = "StoryInMainPage",
    startCheckPause = false
}

local durationList = {}
local n = 3
durationList[1] = 3
durationList[2] = n
narratorWithId7110802.durationList = durationList
datas.NarratorWithId7110802 = narratorWithId7110802

local narratorWithId7110803 = {
    narratorId = 7110804,
    pauseLen = 10,
    resumeLen = 5,
    tag = "StoryInMainPage",
    startCheckPause = false
}

local tbl = {}
local v = 3
tbl[1] = 3
tbl[2] = v
narratorWithId7110803.durationList = tbl
datas.NarratorWithId7110803 = narratorWithId7110803
Q71108ClientConfig.Datas = datas
return Q71108ClientConfig
