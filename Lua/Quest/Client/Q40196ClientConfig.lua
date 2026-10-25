local Q40196ClientConfig = {
    MainID = 40196,
    ActorAlias = "40196",
    SubIDs = {
        q4019601 = 4019601,
        q4019602 = 4019602,
        q4019603 = 4019603,
        q4019604 = 4019604,
        q4019605 = 4019605,
        q4019606 = 4019606
    },
    Npcs = {
        Npc1076 = {
            id = 1076,
            alias = "Npc1076",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc1078 = {
            id = 1078,
            alias = "Npc1078",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc1088 = {
            id = 1088,
            alias = "Npc1088",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc1070 = {
            id = 1070,
            alias = "Npc1070",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc15174 = {
            id = 15174,
            alias = "Npc15174",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Paimon = {
            id = 1005,
            alias = "Paimon",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        }
    },
    Points = {
        _Q40196TriggerPoint_ = {pos = {x = 3604.635, y = 506.535, z = 4600.975}, rot = {x = 0.0, y = 254.486, z = 0.0}},
        _Q40196Trigger1Point_ = {pos = {x = 3736.269, y = 442.806, z = 3924.259}, rot = {x = 0.0, y = 12.205, z = 0.0}},
        _Q40196Trigger3Point_ = {pos = {x = 3763.699, y = 441.667, z = 3930.516}, rot = {x = 0.0, y = 222.702, z = 0.0}}
    }
}

local datas = {}
local crowdInstanceIDList2 = {}
local n = 10012
local v = 10025
crowdInstanceIDList2[1] = 10011
crowdInstanceIDList2[2] = n
crowdInstanceIDList2[3] = v
datas.CrowdInstanceIDList2 = crowdInstanceIDList2
datas.NarratorWithId_4019601 = {narratorId = 4019601, tag = "StoryInMainPage", startCheckPause = true, resumeReminder = -1}
datas.SceneIDList = {3}
Q40196ClientConfig.Datas = datas
return Q40196ClientConfig
