local Q24002ClientConfig = {
    MainID = 24002,
    ActorAlias = "24002",
    SubIDs = {q2400201 = 2400201, q2400202 = 2400202, q2400203 = 2400203, q2400204 = 2400204},
    Npcs = {
        Npc5045Data = {
            id = 5045,
            alias = "Npc5045",
            script = "Actor/Npc/NpcFSMBehaviour",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc5005Data = {
            id = 5005,
            alias = "Npc5005",
            script = "Actor/Npc/NpcFSMBehaviour",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc5053Data = {
            id = 5053,
            alias = "Npc5053",
            script = "Actor/Npc/NpcFSMBehaviour",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc5058Data = {
            id = 5058,
            alias = "Npc5058",
            script = "Actor/Npc/NpcFSMBehaviour",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc5059Data = {
            id = 5059,
            alias = "Npc5059",
            script = "Actor/Npc/NpcFSMBehaviour",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc5060Data = {
            id = 5060,
            alias = "Npc5060",
            script = "Actor/Npc/NpcFSMBehaviour",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc5004Data = {
            id = 5004,
            alias = "Npc5004",
            script = "Actor/Npc/NpcFSMBehaviour",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        }
    },
    Points = {
        TPos_Q24002Trigger = {pos = {x = 3487.264, y = 421.176, z = 4611.354}, rot = {x = 0.0, y = 65.1, z = 0.0}}
    }
}

local datas = {}

local narrator_2400201 = {
    narratorId = 2400201,
    pauseLen = 10,
    resumeLen = 5,
    tag = "StoryInMainPage",
    startCheckPause = false
}

local durationList = {}
local n = 3
local v = 3
durationList[1] = 3
durationList[2] = n
durationList[3] = v
narrator_2400201.durationList = durationList
datas.Narrator_2400201 = narrator_2400201

local narrator_2400202 = {
    narratorId = 2400202,
    pauseLen = 10,
    resumeLen = 5,
    tag = "StoryInMainPage",
    startCheckPause = false
}

local tbl = {}
local n2 = 2
local n3 = 2
tbl[1] = 2
tbl[2] = n2
tbl[3] = n3
narrator_2400202.durationList = tbl
datas.Narrator_2400202 = narrator_2400202

local narrator_2400203 = {
    narratorId = 2400203,
    pauseLen = 10,
    resumeLen = 5,
    tag = "StoryInMainPage",
    startCheckPause = false
}

local durationList2 = {}
local n4 = 3
local n5 = 3
durationList2[1] = 3
durationList2[2] = n4
durationList2[3] = n5
narrator_2400203.durationList = durationList2
datas.Narrator_2400203 = narrator_2400203

datas.RoutePointsData = {
    sceneData:GetDummyPoint(3, "Q2400202_N5045").pos,
    {x = 3481.066, y = 422.421, z = 4606.552},
    {x = 3487.264, y = 421.176, z = 4611.354}
}

datas.RoutePointsData_01 = {{x = 3487.264, y = 421.176, z = 4611.354}, {x = 3498.272, y = 421.176, z = 4617.337}}
datas.RoutePointsData_02 = {{x = 3498.272, y = 421.176, z = 4617.337}, {x = 3511.581, y = 421.176, z = 4619.583}}
Q24002ClientConfig.Datas = datas
return Q24002ClientConfig
