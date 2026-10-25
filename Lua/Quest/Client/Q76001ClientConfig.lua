local Q76001ClientConfig = {
    MainID = 76001,
    ActorAlias = "76001",
    SubIDs = {
        q7600109 = 7600109,
        q7600110 = 7600110,
        q7600111 = 7600111,
        q7600101 = 7600101,
        q7600107 = 7600107,
        q7600102 = 7600102,
        q7600103 = 7600103,
        q7600108 = 7600108,
        q7600105 = 7600105,
        q7600106 = 7600106,
        q7600104 = 7600104
    },
    Npcs = {
        Paimon = {
            id = 1005,
            alias = "Paimon",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc7066 = {
            id = 7066,
            alias = "Npc7066",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc7067 = {
            id = 7067,
            alias = "Npc7067",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc22163 = {
            id = 22163,
            alias = "Npc22163",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        }
    },
    Points = {
        _Q7600106TriggerPoint_ = {pos = {x = 1964.195, y = 200.3164, z = 9079.743}, rot = {x = 0, y = 0, z = 0}}
    }
}

local datas = {
    NarratorWithId_finish2 = {
        narratorId = 760019901,
        tag = "StoryInMainPage",
        startCheckPause = true,
        resumeReminder = 0,
        durationList = {4}
    }
}

local narratorWithId_tomb = {narratorId = 760019902, tag = "StoryInMainPage", startCheckPause = true, resumeReminder = 0}
local durationList = {}
local n = 4
durationList[1] = 4
durationList[2] = n
narratorWithId_tomb.durationList = durationList
datas.NarratorWithId_tomb = narratorWithId_tomb
Q76001ClientConfig.Datas = datas
return Q76001ClientConfig
