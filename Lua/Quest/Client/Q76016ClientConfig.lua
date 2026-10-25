local Q76016ClientConfig = {
    MainID = 76016,
    ActorAlias = "76016",
    SubIDs = {
        q7601601 = 7601601,
        q7601602 = 7601602,
        q7601603 = 7601603,
        q7601605 = 7601605,
        q7601604 = 7601604,
        q7601627 = 7601627,
        q7601606 = 7601606,
        q7601607 = 7601607,
        q7601608 = 7601608,
        q7601609 = 7601609,
        q7601630 = 7601630,
        q7601610 = 7601610,
        q7601611 = 7601611,
        q7601625 = 7601625,
        q7601612 = 7601612,
        q7601628 = 7601628,
        q7601632 = 7601632,
        q7601613 = 7601613,
        q7601614 = 7601614,
        q7601615 = 7601615,
        q7601616 = 7601616,
        q7601629 = 7601629,
        q7601631 = 7601631,
        q7601617 = 7601617,
        q7601618 = 7601618,
        q7601619 = 7601619,
        q7601620 = 7601620,
        q7601626 = 7601626,
        q7601621 = 7601621,
        q7601622 = 7601622,
        q7601623 = 7601623,
        q7601624 = 7601624
    },
    Npcs = {
        Npc21836 = {
            id = 21836,
            alias = "Npc21836",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc21932 = {
            id = 21932,
            alias = "Npc21932",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc21933 = {
            id = 21933,
            alias = "Npc21933",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc21934 = {
            id = 21934,
            alias = "Npc21934",
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
        _Q7601601Trigger_1Point_ = {pos = {x = 2279.487, y = 270.2464, z = 9131.573}, rot = {x = 0, y = 0, z = 0}},
        _Q7601601TriggerPoint_ = {pos = {x = 2279.487, y = 270.2464, z = 9131.573}, rot = {x = 0, y = 0, z = 0}},
        _Q7601602TriggerPoint_ = {pos = {x = 2292.841, y = 270.878, z = 9124.808}, rot = {x = 0.0, y = 0.0, z = 0.0}},
        _Q7601606TriggerPoint_ = {pos = {x = 2243.877, y = 284.188, z = 9131.886}, rot = {x = 0.0, y = 43.87, z = 0.0}},
        _Q7601608TriggerPoint_ = {pos = {x = 2202.988, y = 265.568, z = 9167.975}, rot = {x = 0.0, y = 0.0, z = 0.0}},
        _Q7601630TriggerPoint_ = {pos = {x = 2207.144, y = 265.871, z = 9178.206}, rot = {x = 0, y = 0, z = 0}},
        _Q7601610TriggerPoint_ = {pos = {x = 2207.212, y = 279.609, z = 9227.444}, rot = {x = 0.0, y = 0.0, z = 0.0}},
        _Q7601611TriggerPoint_ = {pos = {x = 2200.741, y = 266.013, z = 9180.721}, rot = {x = 0.0, y = 0.0, z = 0.0}},
        _Q7601625Trigger_ReminderPoint_ = {pos = {x = 2202.9, y = 250, z = 9179.111}, rot = {x = 0, y = 0, z = 0}},
        _Q7601625TriggerPoint_ = {pos = {x = 2198.754, y = 219.99, z = 9173.616}, rot = {x = 0.0, y = 0.0, z = 0.0}},
        _Q7601628TriggerPoint_ = {pos = {x = 2239.392, y = 219.323, z = 9129.349}, rot = {x = 0.0, y = 0.0, z = 0.0}},
        _Q7601616TriggerPoint_ = {pos = {x = 2206.307, y = 267.938, z = 9178.276}, rot = {x = 0.0, y = 0.0, z = 0.0}},
        _Q7601617TriggerPoint_ = {pos = {x = 2246.685, y = 288.957, z = 9130.39}, rot = {x = 0.0, y = 15.0, z = 0.0}},
        _Q7601623TriggerPoint_ = {pos = {x = 2247.484, y = 281.915, z = 9131.128}, rot = {x = 0.0, y = 0.0, z = 0.0}}
    }
}

local datas = {}
local narratorWithId_7601604 = {narratorId = 7601604, tag = "StoryInMainPage", startCheckPause = true, resumeReminder = -1}
local durationList = {}
local n = 3
durationList[1] = 5
durationList[2] = n
narratorWithId_7601604.durationList = durationList
datas.NarratorWithId_7601604 = narratorWithId_7601604
local narratorWithId_7601610 = {narratorId = 7601610, tag = "StoryInMainPage", startCheckPause = true, resumeReminder = -1}
local tbl = {}
local v = 5
local n2 = 3
tbl[1] = 5
tbl[2] = v
tbl[3] = n2
narratorWithId_7601610.durationList = tbl
datas.NarratorWithId_7601610 = narratorWithId_7601610
datas.DialogIdsData = {760160102}
local narratorWithId_7601601 = {narratorId = 7601601, tag = "StoryInMainPage", startCheckPause = true, resumeReminder = -1}
local durationList2 = {}
local n3 = 7
durationList2[1] = 8
durationList2[2] = n3
narratorWithId_7601601.durationList = durationList2
datas.NarratorWithId_7601601 = narratorWithId_7601601

datas.NarratorWithId_7601625 = {
    narratorId = 7601625,
    tag = "StoryInMainPage",
    startCheckPause = true,
    resumeReminder = -1,
    durationList = {5}
}

datas.NarratorWithId_7601606 = {
    narratorId = 7601606,
    tag = "StoryInMainPage",
    startCheckPause = true,
    resumeReminder = -1,
    durationList = {5}
}

Q76016ClientConfig.Datas = datas
return Q76016ClientConfig
