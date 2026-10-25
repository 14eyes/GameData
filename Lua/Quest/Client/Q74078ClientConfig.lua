local Q74078ClientConfig = {
    MainID = 74078,
    ActorAlias = "74078",
    SubIDs = {
        q7407806 = 7407806,
        q7407808 = 7407808,
        q7407815 = 7407815,
        q7407816 = 7407816,
        q7407817 = 7407817,
        q7407824 = 7407824,
        q7407820 = 7407820,
        q7407819 = 7407819,
        q7407829 = 7407829,
        q7407818 = 7407818,
        q7407822 = 7407822,
        q7407823 = 7407823,
        q7407825 = 7407825,
        q7407810 = 7407810,
        q7407811 = 7407811,
        q7407809 = 7407809,
        q7407807 = 7407807,
        q7407812 = 7407812,
        q7407813 = 7407813,
        q7407827 = 7407827,
        q7407828 = 7407828,
        q7407826 = 7407826,
        q7407801 = 7407801,
        q7407802 = 7407802,
        q7407803 = 7407803,
        q7407804 = 7407804,
        q7407805 = 7407805,
        q7407814 = 7407814,
        q7407821 = 7407821
    },
    Npcs = {
        Npc20995Data = {
            id = 20995,
            alias = "Npc20995",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc21048Data = {
            id = 21048,
            alias = "Npc21048",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc21263Data = {
            id = 21263,
            alias = "Npc21263",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc5301Data = {
            id = 5301,
            alias = "Npc5301",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc5303Data = {
            id = 5303,
            alias = "Npc5303",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc21345Data = {
            id = 21345,
            alias = "Npc21345",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc21002Data = {
            id = 21002,
            alias = "Npc21002",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        }
    }
}

local datas = {TextmapId_Afterboss = {""}, TextmapId_Ending = {""}}

local narratorWithIdGlass = {
    narratorId = 7407803,
    pauseLen = 10,
    resumeLen = 5,
    tag = "StoryInMainPage",
    startCheckPause = false
}

local durationList = {}
local n = 4
local v = 4
durationList[1] = 3
durationList[2] = n
durationList[3] = v
narratorWithIdGlass.durationList = durationList
datas.NarratorWithIdGlass = narratorWithIdGlass

local narratorWithIdHead2Tower = {
    narratorId = 7407804,
    pauseLen = 10,
    resumeLen = 5,
    tag = "StoryInMainPage",
    startCheckPause = false
}

local tbl = {}
local n2 = 2
tbl[1] = 4
tbl[2] = n2
narratorWithIdHead2Tower.durationList = tbl
datas.NarratorWithIdHead2Tower = narratorWithIdHead2Tower
datas.DialogsId_Endingtransmit = {740789913}
Q74078ClientConfig.Datas = datas
return Q74078ClientConfig
