local Q15012ClientConfig = {
    MainID = 15012,
    ActorAlias = "15012",
    IgnoreDoReturnNpcForDaily = true,
    SubIDs = {q1501201 = 1501201, q1501202 = 1501202, q1501203 = 1501203, q1501204 = 1501204},
    Npcs = {
        Npc6084Data = {
            id = 6084,
            alias = "Npc6084",
            script = "Actor/Npc/NpcFSMBehaviour",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc6083Data = {
            id = 6083,
            alias = "Npc6083",
            script = "Actor/Npc/NpcFSMBehaviour",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc14310Data = {
            id = 14310,
            alias = "Npc14310",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc14312Data = {
            id = 14312,
            alias = "Npc14312",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        }
    },
    Points = {
        TPos_Q1501202Trigger = {pos = {x = -1438.829, y = 64.606, z = 8235.239}, rot = {x = 0.0, y = 0.0, z = 0.0}},
        TPos_Q1501208Trigger = {pos = {x = -1487.131, y = 177.909, z = 7710.53}, rot = {x = 0.0, y = 0.0, z = 0.0}},
        TPos_Q1501209Trigger = {pos = {x = -1442.554, y = 273.774, z = 7705.693}, rot = {x = 0.0, y = 289.075, z = 0.0}},
        TPos_Q1501207Trigger = {pos = {x = -1515.089, y = 175.935, z = 7702.92}, rot = {x = 0.0, y = 0.0, z = 0.0}},
        TPos_Q1501203Trigger = {pos = {x = -1438.829, y = 64.606, z = 8235.239}, rot = {x = 0.0, y = 0.0, z = 0.0}},
        TPos_Q1501201Trigger = {pos = {x = -1325.393, y = 141.056, z = 7602.801}, rot = {x = 0.0, y = 198.833, z = 0.0}}
    }
}

local datas = {}
local narratorWithId02 = {narratorId = 1501202, tag = "StoryInMainPage", startCheckPause = true, resumeReminder = -1}
local durationList = {}
local n = 3
local v = 3
durationList[1] = 3
durationList[2] = n
durationList[3] = v
narratorWithId02.durationList = durationList
datas.NarratorWithId02 = narratorWithId02
local narratorWithId01 = {narratorId = 1501201, tag = "StoryInMainPage", startCheckPause = true, resumeReminder = -1}
local tbl = {}
local n2 = 3
local n3 = 3
tbl[1] = 3
tbl[2] = n2
tbl[3] = n3
narratorWithId01.durationList = tbl
datas.NarratorWithId01 = narratorWithId01
Q15012ClientConfig.Datas = datas
return Q15012ClientConfig
