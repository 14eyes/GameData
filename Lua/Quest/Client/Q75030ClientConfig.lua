local Q75030ClientConfig = {
    MainID = 75030,
    ActorAlias = "75030",
    IgnoreDoReturnNpcForDaily = true,
    SubIDs = {
        q7503009 = 7503009,
        q7503010 = 7503010,
        q7503011 = 7503011,
        q7503008 = 7503008,
        q7503012 = 7503012,
        q7503001 = 7503001,
        q7503002 = 7503002,
        q7503006 = 7503006,
        q7503003 = 7503003,
        q7503004 = 7503004,
        q7503005 = 7503005,
        q7503007 = 7503007
    },
    Npcs = {
        Npc6137Data = {
            id = 6137,
            alias = "Npc6137",
            script = "Actor/Npc/NpcFSMBehaviour",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc21584Data = {
            id = 21584,
            alias = "Npc21584",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc21706Data = {
            id = 21706,
            alias = "Npc21706",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc21707Data = {
            id = 21707,
            alias = "Npc21707",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc21733Data = {
            id = 21733,
            alias = "Npc21733",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc21734Data = {
            id = 21734,
            alias = "Npc21734",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        }
    }
}

local datas = {
    NarratorWithId750300301 = {
        narratorId = 750300301,
        tag = "StoryInMainPage",
        startCheckPause = true,
        resumeReminder = -1,
        durationList = {4}
    },
    NarratorWithId750300302 = {
        narratorId = 750300302,
        tag = "StoryInMainPage",
        startCheckPause = true,
        resumeReminder = -1,
        durationList = {4}
    }
}

local narratorWithId7503009 = {narratorId = 7503009, tag = "StoryInMainPage", startCheckPause = true, resumeReminder = -1}
local durationList = {}
local n = 5
durationList[1] = 3
durationList[2] = n
narratorWithId7503009.durationList = durationList
datas.NarratorWithId7503009 = narratorWithId7503009
Q75030ClientConfig.Datas = datas
return Q75030ClientConfig
