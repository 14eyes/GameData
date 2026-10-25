local Q75032ClientConfig = {
    MainID = 75032,
    ActorAlias = "75032",
    IgnoreDoReturnNpcForDaily = true,
    SubIDs = {
        q7503201 = 7503201,
        q7503208 = 7503208,
        q7503205 = 7503205,
        q7503207 = 7503207,
        q7503202 = 7503202,
        q7503209 = 7503209,
        q7503203 = 7503203,
        q7503204 = 7503204,
        q7503206 = 7503206,
        q7503210 = 7503210
    },
    Npcs = {
        Npc6138Data = {
            id = 6138,
            alias = "Npc6138",
            script = "Actor/Npc/NpcFSMBehaviour",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        }
    }
}

local datas = {}
local narratorWithId01 = {narratorId = 7503201, tag = "StoryInMainPage", startCheckPause = true, resumeReminder = -1}
local durationList = {}
local n = 5
durationList[1] = 5
durationList[2] = n
narratorWithId01.durationList = durationList
datas.NarratorWithId01 = narratorWithId01

datas.NarratorWithId750320301 = {
    narratorId = 0,
    tag = "StoryInMainPage",
    startCheckPause = true,
    resumeReminder = -1,
    durationList = {4}
}

datas.NarratorWithId750320302 = {
    narratorId = 0,
    tag = "StoryInMainPage",
    startCheckPause = true,
    resumeReminder = -1,
    durationList = {3}
}

datas.NarratorWithId750320102 = {
    narratorId = 0,
    tag = "StoryInMainPage",
    startCheckPause = true,
    resumeReminder = -1,
    durationList = {5}
}

Q75032ClientConfig.Datas = datas
return Q75032ClientConfig
