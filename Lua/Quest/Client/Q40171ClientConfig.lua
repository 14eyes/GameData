local Q40171ClientConfig = {
    MainID = 40171,
    ActorAlias = "40171",
    SubIDs = {
        q4017101 = 4017101,
        q4017102 = 4017102,
        q4017103 = 4017103,
        q4017107 = 4017107,
        q4017104 = 4017104,
        q4017108 = 4017108,
        q4017105 = 4017105,
        q4017106 = 4017106
    },
    Npcs = {
        Npc1096 = {
            id = 1096,
            alias = "Npc1096",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc1094 = {
            id = 1094,
            alias = "Npc1094",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc14603 = {
            id = 14603,
            alias = "Npc14603",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc6213 = {
            id = 6213,
            alias = "Npc6213",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        }
    },
    Points = {
        _Q40171Trigger6Point_ = {pos = {x = -1712.062, y = 165.399, z = 9675.799}, rot = {x = 0.0, y = 309.558, z = 0.0}},
        _Q40171Trigger2Point_ = {pos = {x = -1757.755, y = 106.118, z = 9676.637}, rot = {x = 0.0, y = 280.934, z = 0.0}},
        _Q40171Trigger3Point_ = {pos = {x = -1798.137, y = 107.3, z = 9679.046}, rot = {x = 0, y = 0, z = 0}},
        _Q40171Trigger4Point_ = {pos = {x = -1877.109, y = 54.66, z = 9650.907}, rot = {x = 0.0, y = 235.065, z = 0.0}},
        _Q40171Trigger1Point_ = {pos = {x = -1877.109, y = 54.66, z = 9650.907}, rot = {x = 0.0, y = 235.065, z = 0.0}},
        _Q40171Trigger7Point_ = {pos = {x = -1877.109, y = 54.66, z = 9650.907}, rot = {x = 0.0, y = 235.065, z = 0.0}},
        _Q40171Trigger5Point_ = {pos = {x = -1877.109, y = 54.66, z = 9650.907}, rot = {x = 0.0, y = 235.065, z = 0.0}}
    }
}

local datas = {}
local crowd = {}
local n = 10032
crowd[1] = 10031
crowd[2] = n
datas.crowd = crowd
datas.NarratorWithId_4017101 = {narratorId = 4017101, tag = "StoryInMainPage", startCheckPause = true, resumeReminder = -1}
Q40171ClientConfig.Datas = datas
return Q40171ClientConfig
