local Q77107ClientConfig = {
    MainID = 77107,
    ActorAlias = "77107",
    SubIDs = {
        q7710710 = 7710710,
        q7710702 = 7710702,
        q7710703 = 7710703,
        q7710704 = 7710704,
        q7710713 = 7710713,
        q7710712 = 7710712,
        q7710716 = 7710716,
        q7710714 = 7710714,
        q7710715 = 7710715,
        q7710706 = 7710706,
        q7710707 = 7710707,
        q7710708 = 7710708,
        q7710709 = 7710709,
        q7710711 = 7710711
    },
    Npcs = {
        Npc22361 = {
            id = 22361,
            alias = "Npc22361",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc22669 = {
            id = 22669,
            alias = "Npc22669",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc22394 = {
            id = 22394,
            alias = "Npc22394",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        }
    },
    Points = {
        _Q7710710TriggerPoint_ = {pos = {x = 8247.749, y = 526.427, z = 6040.62}, rot = {x = 0.0, y = 0.0, z = 0.0}},
        _Q7710702TriggerPoint_ = {pos = {x = 8181.648, y = 653.6253, z = 6102.426}, rot = {x = 0, y = 0, z = 0}},
        _Q7710704TriggerPoint_ = {pos = {x = 7950.077, y = 1183.849, z = 6261.306}, rot = {x = 0.0, y = 122.678, z = 0.0}},
        _Q7710704Trigger_1Point_ = {pos = {x = 8021.063, y = 1010.726, z = 6103.8}, rot = {x = 0.0, y = 0.0, z = 0.0}},
        _Q7710715TriggerPoint_ = {pos = {x = 7950.077, y = 1183.849, z = 6261.306}, rot = {x = 0.0, y = 122.678, z = 0.0}},
        _Q7710706TriggerPoint_ = {pos = {x = 8172.511, y = 1227.795, z = 6160.224}, rot = {x = 0, y = 25.50364, z = 0}}
    }
}

local datas = {
    NarratorWithId_7710710 = {narratorId = 7710710, tag = "StoryInMainPage", startCheckPause = true, resumeReminder = -1},
    NarratorWithId_7710703 = {narratorId = 7710703, tag = "StoryInMainPage", startCheckPause = true, resumeReminder = -1},
    NarratorWithId_7710715 = {narratorId = 7710715, tag = "StoryInMainPage", startCheckPause = true, resumeReminder = -1}
}

local narratorWithId_7710716 = {narratorId = 7710716, tag = "StoryInMainPage", startCheckPause = true, resumeReminder = -1}
local durationList = {}
local n = 5
local v = 4
local n2 = 4
durationList[1] = 4
durationList[2] = n
durationList[3] = v
durationList[4] = n2
narratorWithId_7710716.durationList = durationList
datas.NarratorWithId_7710716 = narratorWithId_7710716
Q77107ClientConfig.Datas = datas
return Q77107ClientConfig
