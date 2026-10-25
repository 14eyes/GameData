local Q75000ClientConfig = {
    MainID = 75000,
    ActorAlias = "75000",
    SubIDs = {
        q7500012 = 7500012,
        q7500001 = 7500001,
        q7500002 = 7500002,
        q7500004 = 7500004,
        q7500003 = 7500003,
        q7500005 = 7500005,
        q7500006 = 7500006,
        q7500007 = 7500007,
        q7500009 = 7500009,
        q7500011 = 7500011,
        q7500010 = 7500010,
        q7500008 = 7500008
    },
    Npcs = {
        Npc21523 = {
            id = 21523,
            alias = "Npc21523",
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
        _Q7500001TriggerPoint_ = {pos = {x = -1323.508, y = -1.876896, z = 7523.799}, rot = {x = 0, y = 0, z = 0}},
        _Q7500007TriggerPoint_ = {pos = {x = -1317.556, y = -4.497016, z = 7533.965}, rot = {x = 0, y = 0, z = 0}},
        _Q7500008TriggerPoint_ = {pos = {x = -1329.94, y = -1.876896, z = 7523.799}, rot = {x = 0, y = 0, z = 0}}
    }
}

local datas = {
    NarratorWithId_7500011 = {
        narratorId = 7500011,
        tag = "StoryInMainPage",
        startCheckPause = true,
        resumeReminder = -1,
        durationList = {4}
    }
}

local narratorWithId_7500008 = {narratorId = 7500008, tag = "StoryInMainPage", startCheckPause = true, resumeReminder = -1}
local durationList = {}
local n = 6
local v = 3
local n2 = 3
durationList[1] = 4
durationList[2] = n
durationList[3] = v
durationList[4] = n2
narratorWithId_7500008.durationList = durationList
datas.NarratorWithId_7500008 = narratorWithId_7500008
Q75000ClientConfig.Datas = datas
return Q75000ClientConfig
