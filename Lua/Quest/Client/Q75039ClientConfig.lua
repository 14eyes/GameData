local Q75039ClientConfig = {
    MainID = 75039,
    ActorAlias = "75039",
    IgnoreDoReturnNpcForDaily = true,
    SubIDs = {
        q7503921 = 7503921,
        q7503901 = 7503901,
        q7503902 = 7503902,
        q7503919 = 7503919,
        q7503920 = 7503920,
        q7503915 = 7503915,
        q7503916 = 7503916,
        q7503917 = 7503917,
        q7503918 = 7503918,
        q7503903 = 7503903,
        q7503904 = 7503904,
        q7503905 = 7503905,
        q7503906 = 7503906,
        q7503907 = 7503907,
        q7503908 = 7503908,
        q7503914 = 7503914,
        q7503909 = 7503909,
        q7503910 = 7503910,
        q7503911 = 7503911,
        q7503912 = 7503912,
        q7503913 = 7503913
    },
    Npcs = {
        Npc21586Data = {
            id = 21586,
            alias = "Npc21586",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc21460Data = {
            id = 21460,
            alias = "Npc21460",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        }
    }
}

local datas = {
    NarratorWithId = {
        narratorId = 7503901,
        tag = "StoryInMainPage",
        startCheckPause = true,
        resumeReminder = -1,
        durationList = {5}
    }
}

local narratorWithId_7503903 = {narratorId = 7503903, tag = "StoryInMainPage", startCheckPause = true, resumeReminder = -1}
local durationList = {}
local n = 3
durationList[1] = 5
durationList[2] = n
narratorWithId_7503903.durationList = durationList
datas.NarratorWithId_7503903 = narratorWithId_7503903
local narratorWithId_750390302 = {narratorId = 7503902, tag = "StoryInMainPage", startCheckPause = true, resumeReminder = -1}
local tbl = {}
local v = 3
local n2 = 3
tbl[1] = 3
tbl[2] = v
tbl[3] = n2
narratorWithId_750390302.durationList = tbl
datas.NarratorWithId_750390302 = narratorWithId_750390302
local narratorWithId_7503901 = {narratorId = 750390102, tag = "StoryInMainPage", startCheckPause = true, resumeReminder = -1}
local durationList2 = {}
local n3 = 3
local n4 = 4
local n5 = 3
durationList2[1] = 4
durationList2[2] = n3
durationList2[3] = n4
durationList2[4] = n5
narratorWithId_7503901.durationList = durationList2
datas.NarratorWithId_7503901 = narratorWithId_7503901

datas.RoutePointsData = {
    {x = -1335.493, y = 246.54, z = 9502.528},
    {x = -1334.951, y = 247.705, z = 9513.483},
    {x = -1330.064, y = 247.727, z = 9515.956},
    {x = -1330.19, y = 247.697, z = 9514.955}
}

Q75039ClientConfig.Datas = datas
return Q75039ClientConfig
