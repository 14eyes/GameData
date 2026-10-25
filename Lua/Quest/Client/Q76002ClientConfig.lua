local Q76002ClientConfig = {
    MainID = 76002,
    ActorAlias = "76002",
    SubIDs = {
        q7600201 = 7600201,
        q7600202 = 7600202,
        q7600203 = 7600203,
        q7600204 = 7600204,
        q7600205 = 7600205,
        q7600206 = 7600206,
        q7600207 = 7600207,
        q7600208 = 7600208
    },
    Npcs = {
        Npc22019 = {
            id = 22019,
            alias = "Npc22019",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc22020 = {
            id = 22020,
            alias = "Npc22020",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc22055 = {
            id = 22055,
            alias = "Npc22055",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc22056 = {
            id = 22056,
            alias = "Npc22056",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc22057 = {
            id = 22057,
            alias = "Npc22057",
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
        _Q7600201TriggerPoint_ = {pos = {x = 1980.153, y = 200.1201, z = 9800.103}, rot = {x = 0, y = 0, z = 0}},
        _Q7600201InteractTriggerPoint_ = {pos = {x = 1978.334, y = 200.2139, z = 9799.918}, rot = {x = 0, y = 0, z = 0}},
        _Q7600202TriggerPoint_ = {pos = {x = 1976.487, y = 200.1685, z = 9797.699}, rot = {x = 0, y = 0, z = 0}},
        _Q7600203TriggerPoint_ = {pos = {x = 1976.487, y = 200.1685, z = 9797.699}, rot = {x = 0, y = 0, z = 0}},
        _Q7600204TriggerPoint_ = {pos = {x = 1976.487, y = 200.1685, z = 9797.699}, rot = {x = 0, y = 0, z = 0}},
        _Q7600205TriggerPoint_ = {pos = {x = 1976.487, y = 200.1685, z = 9797.699}, rot = {x = 0, y = 0, z = 0}}
    }
}

local datas = {}
local narratorWithId_7600204 = {narratorId = 7600204, tag = "StoryInMainPage", startCheckPause = true, resumeReminder = 0}
local durationList = {}
local n = 5
durationList[1] = 3
durationList[2] = n
narratorWithId_7600204.durationList = durationList
datas.NarratorWithId_7600204 = narratorWithId_7600204
local narratorWithId_7600205 = {narratorId = 7600205, tag = "StoryInMainPage", startCheckPause = true, resumeReminder = 0}
local tbl = {}
local v = 5
tbl[1] = 3
tbl[2] = v
narratorWithId_7600205.durationList = tbl
datas.NarratorWithId_7600205 = narratorWithId_7600205
datas.NarratorWithId_7600201 = {narratorId = 7600201, tag = "StoryInMainPage", startCheckPause = true, resumeReminder = 0}
datas.NarratorWithId_7600203 = {narratorId = 7600203, tag = "StoryInMainPage", startCheckPause = true, resumeReminder = 0}
datas.NarratorWithId_7600202 = {narratorId = 7600202, tag = "StoryInMainPage", startCheckPause = true, resumeReminder = 0}
Q76002ClientConfig.Datas = datas
return Q76002ClientConfig
