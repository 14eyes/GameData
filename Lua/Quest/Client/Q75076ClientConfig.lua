local Q75076ClientConfig = {
    MainID = 75076,
    ActorAlias = "75076",
    SubIDs = {
        q7507601 = 7507601,
        q7507602 = 7507602,
        q7507603 = 7507603,
        q7507604 = 7507604,
        q7507605 = 7507605,
        q7507606 = 7507606,
        q7507607 = 7507607,
        q7507608 = 7507608,
        q7507609 = 7507609,
        q7507610 = 7507610,
        q7507612 = 7507612,
        q7507611 = 7507611,
        q7507613 = 7507613,
        q7507614 = 7507614
    },
    Npcs = {
        Npc21705_1 = {
            id = 21705,
            alias = "Npc21705_1",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc21742 = {
            id = 21742,
            alias = "Npc21742",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc6177 = {
            id = 6177,
            alias = "Npc6177",
            script = "Actor/Npc/NpcFSMBehaviour",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        }
    },
    Points = {
        _Q7507601TriggerPoint_ = {pos = {x = -1458.802, y = 200.0, z = 10450.9}, rot = {x = 0.0, y = 0.0, z = 0.0}},
        _Q7507601Trigger_2Point_ = {pos = {x = -1458.802, y = 200.0, z = 10450.9}, rot = {x = 0.0, y = 0.0, z = 0.0}},
        _Q7507611TriggerPoint_ = {pos = {x = -1607.509, y = 234.868, z = 9994.068}, rot = {x = 0.0, y = 0.0, z = 0.0}},
        _Q7507614TriggerPoint_ = {pos = {x = -1458.802, y = 200.0, z = 10450.9}, rot = {x = 0.0, y = 0.0, z = 0.0}}
    }
}

local datas = {}
local narratorWithId = {narratorId = 7507602, tag = "StoryInMainPage", startCheckPause = true, resumeReminder = -1}
local durationList = {}
local n = 8
local v = 9
durationList[1] = 8
durationList[2] = n
durationList[3] = v
narratorWithId.durationList = durationList
datas.NarratorWithId = narratorWithId
local narratorWithId_7507603 = {narratorId = 7507603, tag = "StoryInMainPage", startCheckPause = true, resumeReminder = -1}
local tbl = {}
local n2 = 8
tbl[1] = 9
tbl[2] = n2
narratorWithId_7507603.durationList = tbl
datas.NarratorWithId_7507603 = narratorWithId_7507603
local narratorWithId_7507609 = {narratorId = 7507609, tag = "StoryInMainPage", startCheckPause = true, resumeReminder = 0}
local durationList2 = {}
local n3 = 6
local n4 = 8
durationList2[1] = 6
durationList2[2] = n3
durationList2[3] = n4
narratorWithId_7507609.durationList = durationList2
datas.NarratorWithId_7507609 = narratorWithId_7507609
local narratorWithId_7507605 = {narratorId = 7507605, tag = "StoryInMainPage", startCheckPause = true, resumeReminder = 0}
local durationList3 = {}
local n5 = 6
durationList3[1] = 6
durationList3[2] = n5
narratorWithId_7507605.durationList = durationList3
datas.NarratorWithId_7507605 = narratorWithId_7507605
Q75076ClientConfig.Datas = datas
return Q75076ClientConfig
