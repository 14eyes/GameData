local Q75019ClientConfig = {
    MainID = 75019,
    ActorAlias = "75019",
    SubIDs = {
        q7501904 = 7501904,
        q7501910 = 7501910,
        q7501901 = 7501901,
        q7501909 = 7501909,
        q7501902 = 7501902,
        q7501903 = 7501903,
        q7501905 = 7501905,
        q7501906 = 7501906,
        q7501908 = 7501908,
        q7501907 = 7501907
    },
    Npcs = {
        Npc21481 = {
            id = 21481,
            alias = "Npc21481",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc6092 = {
            id = 6092,
            alias = "Npc6092",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        }
    },
    Points = {
        P7501902 = {pos = {x = -1369.488, y = 159.7937, z = 7616.402}, rot = {x = 0, y = 0, z = 0}},
        _Q7501905TriggerPoint_ = {pos = {x = -1309.579, y = 240.955, z = 7733.043}, rot = {x = 0.0, y = 3.843, z = 0.0}}
    }
}

local datas = {}
local narratorWithId_7501902 = {narratorId = 7501902, tag = "StoryInMainPage", startCheckPause = true, resumeReminder = -1}
local durationList = {}
local n = 4
durationList[1] = 6
durationList[2] = n
narratorWithId_7501902.durationList = durationList
datas.NarratorWithId_7501902 = narratorWithId_7501902
local narratorWithId_7501901 = {narratorId = 7501901, tag = "StoryInMainPage", startCheckPause = true, resumeReminder = -1}
local tbl = {}
local v = 8
tbl[1] = 5
tbl[2] = v
narratorWithId_7501901.durationList = tbl
datas.NarratorWithId_7501901 = narratorWithId_7501901
local narratorWithId_7501907 = {narratorId = 7501907, tag = "StoryInMainPage", startCheckPause = true, resumeReminder = -1}
local durationList2 = {}
local n2 = 8
durationList2[1] = 6
durationList2[2] = n2
narratorWithId_7501907.durationList = durationList2
datas.NarratorWithId_7501907 = narratorWithId_7501907
Q75019ClientConfig.Datas = datas
return Q75019ClientConfig
