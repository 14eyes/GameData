local Q75005ClientConfig = {
    MainID = 75005,
    ActorAlias = "75005",
    IgnoreDoReturnNpcForDaily = true,
    SubIDs = {
        q7500501 = 7500501,
        q7500502 = 7500502,
        q7500503 = 7500503,
        q7500504 = 7500504,
        q7500505 = 7500505,
        q7500516 = 7500516,
        q7500507 = 7500507,
        q7500508 = 7500508,
        q7500517 = 7500517,
        q7500509 = 7500509,
        q7500510 = 7500510,
        q7500511 = 7500511,
        q7500506 = 7500506,
        q7500514 = 7500514,
        q7500512 = 7500512,
        q7500515 = 7500515
    },
    Npcs = {
        Npc21465Data = {
            id = 21465,
            alias = "Npc21465",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc21551Data = {
            id = 21551,
            alias = "Npc21551",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc21552Data = {
            id = 21552,
            alias = "Npc21552",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        }
    },
    Points = {
        TPos_Q7500506Trigger = {pos = {x = -2526.837, y = -662.191, z = 8438.787}, rot = {x = 0.0, y = 320.0, z = 0.0}},
        TPos_Q7500512Trigger = {pos = {x = -2554.796, y = 52.429, z = 7855.841}, rot = {x = 0.0, y = 75.0, z = 0.0}}
    }
}

local datas = {}
local rmd7500508 = {narratorId = 750050001, tag = "StoryInMainPage", startCheckPause = true, resumeReminder = -1}
local durationList = {}
local n = 5
local v = 3
local n2 = 3
durationList[1] = 4
durationList[2] = n
durationList[3] = v
durationList[4] = n2
rmd7500508.durationList = durationList
datas.rmd7500508 = rmd7500508
local rmd7500516 = {narratorId = 750050005, tag = "StoryInMainPage", startCheckPause = true, resumeReminder = -1}
local tbl = {}
local n3 = 5
local n4 = 4
tbl[1] = 4
tbl[2] = n3
tbl[3] = n4
rmd7500516.durationList = tbl
datas.rmd7500516 = rmd7500516
Q75005ClientConfig.Datas = datas
return Q75005ClientConfig
