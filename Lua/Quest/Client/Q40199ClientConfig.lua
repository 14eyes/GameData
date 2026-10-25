local Q40199ClientConfig = {
    MainID = 40199,
    ActorAlias = "40199",
    SubIDs = {
        q4019901 = 4019901,
        q4019904 = 4019904,
        q4019902 = 4019902,
        q4019905 = 4019905,
        q4019906 = 4019906,
        q4019907 = 4019907,
        q4019903 = 4019903,
        q4019908 = 4019908,
        q4019909 = 4019909
    },
    Npcs = {
        Npc1048 = {
            id = 1048,
            alias = "Npc1048",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc30820 = {
            id = 30820,
            alias = "Npc30820",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc30818 = {
            id = 30818,
            alias = "Npc30818",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc30819 = {
            id = 30819,
            alias = "Npc30819",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        }
    },
    Points = {
        _Q4019901TriggerPoint_ = {pos = {x = 2408.519, y = 343.151, z = 2390.784}, rot = {x = 0.0, y = 0.0, z = 0.0}}
    }
}

local datas = {}
local baNcrowd4019901 = {}
local n = 60003
baNcrowd4019901[1] = 60004
baNcrowd4019901[2] = n
datas.BANcrowd4019901 = baNcrowd4019901
datas.NarratorWithId4019901 = {narratorId = 4019901, tag = "StoryInMainPage", startCheckPause = true, resumeReminder = -1}
datas.DialogIdsData_level01 = {401999801}
datas.DialogIdsData_level02 = {401999802}
Q40199ClientConfig.Datas = datas
return Q40199ClientConfig
