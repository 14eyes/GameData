local Q76098ClientConfig = {
    MainID = 76098,
    ActorAlias = "76098",
    SubIDs = {
        q7609803 = 7609803,
        q7609804 = 7609804,
        q7609802 = 7609802,
        q7609805 = 7609805,
        q7609826 = 7609826,
        q7609806 = 7609806,
        q7609807 = 7609807,
        q7609832 = 7609832,
        q7609808 = 7609808,
        q7609809 = 7609809,
        q7609818 = 7609818,
        q7609822 = 7609822,
        q7609823 = 7609823,
        q7609824 = 7609824,
        q7609825 = 7609825,
        q7609819 = 7609819,
        q7609834 = 7609834,
        q7609820 = 7609820,
        q7609821 = 7609821,
        q7609810 = 7609810,
        q7609811 = 7609811,
        q7609812 = 7609812,
        q7609813 = 7609813,
        q7609831 = 7609831,
        q7609814 = 7609814,
        q7609815 = 7609815,
        q7609816 = 7609816,
        q7609828 = 7609828,
        q7609817 = 7609817,
        q7609833 = 7609833,
        q7609827 = 7609827,
        q7609829 = 7609829,
        q7609801 = 7609801
    },
    Npcs = {
        Npc22211 = {
            id = 22211,
            alias = "Npc22211",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc22212 = {
            id = 22212,
            alias = "Npc22212",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc22336 = {
            id = 22336,
            alias = "Npc22336",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc22227 = {
            id = 22227,
            alias = "Npc22227",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc22319 = {
            id = 22319,
            alias = "Npc22319",
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
        _Q7609804TriggerPoint_ = {pos = {x = 5376.365, y = 12.845, z = 9718.403}, rot = {x = 0.0, y = 0.0, z = 0.0}},
        _Q7609802TriggerPoint_ = {pos = {x = 5335.17, y = 8.035, z = 9776.689}, rot = {x = 0.0, y = 0.0, z = 0.0}},
        _Q7609807TriggerPoint_ = {pos = {x = 5335.378, y = 18.452, z = 9859.447}, rot = {x = 0.0, y = 0.0, z = 0.0}},
        _Q7609832TriggerPoint_ = {pos = {x = 5334.931, y = 20, z = 9854.58}, rot = {x = 0, y = 0, z = 0}},
        Q7609815Trigger = {pos = {x = 5334.424, y = 31.578, z = 9860.358}, rot = {x = 0.0, y = 0.0, z = 0.0}},
        _Q7609833TriggerPoint_ = {pos = {x = 5335.381, y = 29.851, z = 9953.646}, rot = {x = 0.0, y = 0.0, z = 0.0}}
    }
}

local datas = {
    NoBlackData1 = {
        hideUIWhenCamLook = true,
        hidePlayer = 0,
        forceWalk = false,
        delayTime = 0,
        forbidInput = false,
        preTriggerIn = false
    }
}

local narratorWithId_7609830 = {narratorId = 7609830, tag = "StoryInMainPage", startCheckPause = true, resumeReminder = -1}
local durationList = {}
local n = 5
durationList[1] = 8
durationList[2] = n
narratorWithId_7609830.durationList = durationList
datas.NarratorWithId_7609830 = narratorWithId_7609830
Q76098ClientConfig.Datas = datas
return Q76098ClientConfig
