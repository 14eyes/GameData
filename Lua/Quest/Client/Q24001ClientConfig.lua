local Q24001ClientConfig = {
    MainID = 24001,
    ActorAlias = "24001",
    SubIDs = {q2400101 = 2400101, q2400102 = 2400102, q2400103 = 2400103, q2400104 = 2400104},
    Npcs = {
        Npc5113Data = {
            id = 5113,
            alias = "Npc5113",
            script = "Actor/Npc/NpcFSMBehaviour",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc5019Data = {
            id = 5019,
            alias = "Npc5019",
            script = "Actor/Npc/NpcFSMBehaviour",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc13344Data = {
            id = 13344,
            alias = "Npc13344",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc5117Data = {
            id = 5117,
            alias = "Npc5117",
            script = "Actor/Npc/NpcFSMBehaviour",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        }
    },
    Points = {
        TPos_Q24001Trigger = {pos = {x = 3483.115, y = 458.416, z = 3730.675}, rot = {x = 0, y = 0, z = 0}},
        TPos_Q24001Trigger1 = {pos = {x = 3455.919, y = 463.397, z = 3775.392}, rot = {x = 0, y = 76.6, z = 0}}
    }
}

local datas = {
    Narrator_2400101 = {
        narratorId = 2400101,
        pauseLen = 10,
        resumeLen = 5,
        tag = "StoryInMainPage",
        startCheckPause = false,
        durationList = {}
    }
}

local narrator_2400102 = {
    narratorId = 2400102,
    pauseLen = 10,
    resumeLen = 5,
    tag = "StoryInMainPage",
    startCheckPause = false
}

local durationList = {}
local n = 3
durationList[1] = 3
durationList[2] = n
narrator_2400102.durationList = durationList
datas.Narrator_2400102 = narrator_2400102
datas.RoutePointsData_01 = {{x = 3489.619, y = 459.175, z = 3721.281}, {x = 3483.115, y = 458.416, z = 3730.675}}

datas.RoutePointsData_02 = {
    {x = 3483.115, y = 458.416, z = 3730.675},
    {x = 3477.837, y = 459.022, z = 3746.223},
    {x = 3470.266, y = 462.759, z = 3754.826}
}

datas.RoutePointsData_03 = {
    {x = 3470.266, y = 462.759, z = 3754.826},
    {x = 3466.788, y = 463.26, z = 3758.48},
    {x = 3459.929, y = 463.55, z = 3768.372}
}

Q24001ClientConfig.Datas = datas
return Q24001ClientConfig
