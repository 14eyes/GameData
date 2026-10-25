local Q75091ClientConfig = {
    MainID = 75091,
    ActorAlias = "75091",
    IgnoreDoReturnNpcForDaily = true,
    SubIDs = {
        q7509101 = 7509101,
        q7509102 = 7509102,
        q7509103 = 7509103,
        q7509104 = 7509104,
        q7509105 = 7509105,
        q7509106 = 7509106,
        q7509107 = 7509107,
        q7509108 = 7509108
    },
    Npcs = {
        Npc21633Data = {
            id = 21633,
            alias = "Npc21633",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        }
    }
}

local datas = {}
local narratorWithId = {narratorId = 750910001, tag = "StoryInMainPage", startCheckPause = true, resumeReminder = -1}
local durationList = {}
local n = 5
durationList[1] = 5
durationList[2] = n
narratorWithId.durationList = durationList
datas.NarratorWithId = narratorWithId
Q75091ClientConfig.Datas = datas
return Q75091ClientConfig
