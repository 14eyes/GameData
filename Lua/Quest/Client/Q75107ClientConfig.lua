local Q75107ClientConfig = {
    MainID = 75107,
    ActorAlias = "75107",
    SubIDs = {
        q7510701 = 7510701,
        q7510713 = 7510713,
        q7510714 = 7510714,
        q7510715 = 7510715,
        q7510716 = 7510716,
        q7510717 = 7510717,
        q7510703 = 7510703,
        q7510719 = 7510719,
        q7510704 = 7510704,
        q7510711 = 7510711,
        q7510706 = 7510706,
        q7510707 = 7510707,
        q7510712 = 7510712,
        q7510708 = 7510708,
        q7510718 = 7510718,
        q7510709 = 7510709,
        q7510710 = 7510710,
        q7510705 = 7510705,
        q7510702 = 7510702
    },
    Npcs = {
        Npc21754 = {
            id = 21754,
            alias = "Npc21754",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc21753 = {
            id = 21753,
            alias = "Npc21753",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Paimon = {
            id = 1005,
            alias = "Paimon",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc21688 = {
            id = 21688,
            alias = "Npc21688",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc21687 = {
            id = 21687,
            alias = "Npc21687",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc21686 = {
            id = 21686,
            alias = "Npc21686",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc21460 = {
            id = 21460,
            alias = "Npc21460",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        }
    },
    Points = {
        _Q7510706_triggerPoint_ = {pos = {x = -1951.634, y = 266.0085, z = 9899.126}, rot = {x = 0, y = 0, z = 0}},
        _Q7510706TPPoint_ = {pos = {x = -1978.139, y = 264.3302, z = 9875.937}, rot = {x = 0, y = 0, z = 0}},
        _Q7510709_triggerPoint_ = {pos = {x = -1899.143, y = 200.7411, z = 10054.26}, rot = {x = 0, y = 0, z = 0}}
    }
}

local datas = {}
local narratorWithId_7510708 = {narratorId = 7510708, tag = "StoryInMainPage", startCheckPause = true, resumeReminder = -1}
local durationList = {}
local n = 5
durationList[1] = 5
durationList[2] = n
narratorWithId_7510708.durationList = durationList
datas.NarratorWithId_7510708 = narratorWithId_7510708

datas.NarratorWithId_7510706 = {
    narratorId = 7510706,
    tag = "StoryInMainPage",
    startCheckPause = true,
    resumeReminder = -1,
    durationList = {4}
}

datas.DialogIdsData = {751079904}
Q75107ClientConfig.Datas = datas
return Q75107ClientConfig
