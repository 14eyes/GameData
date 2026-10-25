local Q79067ClientConfig = {
    MainID = 79067,
    ActorAlias = "79067",
    IgnoreDoReturnNpcForDaily = true,
    SubIDs = {
        q7906710 = 7906710,
        q7906714 = 7906714,
        q7906719 = 7906719,
        q7906701 = 7906701,
        q7906702 = 7906702,
        q7906704 = 7906704,
        q7906715 = 7906715,
        q7906705 = 7906705,
        q7906716 = 7906716,
        q7906703 = 7906703,
        q7906706 = 7906706,
        q7906717 = 7906717,
        q7906718 = 7906718,
        q7906707 = 7906707,
        q7906712 = 7906712,
        q7906708 = 7906708,
        q7906713 = 7906713,
        q7906709 = 7906709,
        q7906711 = 7906711
    },
    Npcs = {
        Npc21466Data = {
            id = 21466,
            alias = "Npc21466",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc21470Data = {
            id = 21470,
            alias = "Npc21470",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc21471Data = {
            id = 21471,
            alias = "Npc21471",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc21472Data = {
            id = 21472,
            alias = "Npc21472",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc21479Data = {
            id = 21479,
            alias = "Npc21479",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc21480Data = {
            id = 21480,
            alias = "Npc21480",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc21467Data = {
            id = 21467,
            alias = "Npc21467",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        }
    }
}

local datas = {}
local narratorWithId1 = {narratorId = 790679901, tag = "StoryInMainPage", startCheckPause = true, resumeReminder = -1}
local durationList = {}
local n = 3
durationList[1] = 5
durationList[2] = n
narratorWithId1.durationList = durationList
datas.NarratorWithId1 = narratorWithId1
Q79067ClientConfig.Datas = datas
return Q79067ClientConfig
