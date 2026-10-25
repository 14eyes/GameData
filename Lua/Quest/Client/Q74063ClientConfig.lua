local Q74063ClientConfig = {
    MainID = 74063,
    ActorAlias = "74063",
    SubIDs = {
        q7406301 = 7406301,
        q7406307 = 7406307,
        q7406302 = 7406302,
        q7406303 = 7406303,
        q7406304 = 7406304,
        q7406306 = 7406306,
        q7406305 = 7406305
    },
    Npcs = {
        Npc5236Data = {
            id = 5236,
            alias = "Npc5236",
            script = "Actor/Npc/NpcFSMBehaviour",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc5219Data = {
            id = 5219,
            alias = "Npc5219",
            script = "Actor/Npc/NpcFSMBehaviour",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        }
    },
    Points = {
        TPos_Q7406301Trigger = {pos = {x = 4428.695, y = 38.6, z = 4578.159}, rot = {x = 0.0, y = 0.0, z = 0.0}}
    }
}

local datas = {
    RoutePointsData = {
        {x = 4458.613, y = 38.6, z = 4574.706},
        {x = 4446.209, y = 38.6, z = 4574.412},
        {x = 4435.58, y = 38.6, z = 4577.751}
    }
}

local queststart = {
    narratorId = 7406301,
    pauseLen = 5,
    resumeLen = 3,
    tag = "StoryInMainPage",
    startCheckPause = false
}

local durationList = {}
local n = 4
durationList[1] = 3
durationList[2] = n
queststart.durationList = durationList
datas.queststart = queststart

datas.routefinish = {
    narratorId = 7406302,
    pauseLen = 5,
    resumeLen = 3,
    tag = "StoryInMainPage",
    startCheckPause = false,
    durationList = {4}
}

datas.RoutePointsData_01 = {
    {x = 4433.081, y = 38.6, z = 4580.481},
    {x = 4430.525, y = 38.37, z = 4584.353},
    {x = 4427.139, y = 37.851, z = 4595.49}
}

datas.switchoff = {
    narratorId = 7406303,
    pauseLen = 5,
    resumeLen = 3,
    tag = "StoryInMainPage",
    startCheckPause = false,
    durationList = {5}
}

datas.goreport = {
    narratorId = 7406304,
    pauseLen = 5,
    resumeLen = 3,
    tag = "StoryInMainPage",
    startCheckPause = false,
    durationList = {5}
}

datas.waitroute = {
    narratorId = 7406305,
    pauseLen = 5,
    resumeLen = 3,
    tag = "StoryInMainPage",
    startCheckPause = false,
    durationList = {5}
}

Q74063ClientConfig.Datas = datas
return Q74063ClientConfig
