local Q15045ClientConfig = {
    MainID = 15045,
    ActorAlias = "15045",
    SubIDs = {
        q1504501 = 1504501,
        q1504530 = 1504530,
        q1504503 = 1504503,
        q1504504 = 1504504,
        q1504502 = 1504502,
        q1504505 = 1504505,
        q1504506 = 1504506,
        q1504507 = 1504507
    },
    Npcs = {
        Npc21865 = {
            id = 21865,
            alias = "Npc21865",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc21845 = {
            id = 21845,
            alias = "Npc21845",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc21847 = {
            id = 21847,
            alias = "Npc21847",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc21844 = {
            id = 21844,
            alias = "Npc21844",
            script = "Actor/Npc/NpcFSMBehaviour",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc21846 = {
            id = 21846,
            alias = "Npc21846",
            script = "Actor/Npc/NpcFSMBehaviour",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        }
    }
}

local datas = {Crowd3521_12_120002 = {120002}}
local crowd3521_9_90005_90006 = {}
local n = 90006
crowd3521_9_90005_90006[1] = 90005
crowd3521_9_90005_90006[2] = n
datas.Crowd3521_9_90005_90006 = crowd3521_9_90005_90006
datas.NarratorWithId_1504501 = {narratorId = 1504501, tag = "StoryInMainPage", startCheckPause = true, resumeReminder = -1}
Q15045ClientConfig.Datas = datas
return Q15045ClientConfig
