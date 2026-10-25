local Q73231ClientConfig = {
    MainID = 73231,
    ActorAlias = "73231",
    SubIDs = {
        q7323114 = 7323114,
        q7323101 = 7323101,
        q7323116 = 7323116,
        q7323118 = 7323118,
        q7323119 = 7323119,
        q7323120 = 7323120,
        q7323102 = 7323102,
        q7323103 = 7323103,
        q7323104 = 7323104,
        q7323105 = 7323105,
        q7323108 = 7323108,
        q7323109 = 7323109,
        q7323111 = 7323111,
        q7323115 = 7323115,
        q7323112 = 7323112
    },
    Npcs = {
        Npc20887Data = {
            id = 20887,
            alias = "Npc20887",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        PaimonData = {
            id = 1005,
            alias = "Paimon",
            script = "Actor/Quest/Q352/Paimon",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc20987Data = {
            id = 20987,
            alias = "Npc20987",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        }
    },
    Points = {
        TPos_Q73231Trigger = sceneData:GetDummyPoint(3, "Q7323114_guide"),
        TPos_Q73231Trigger1 = sceneData:GetDummyPoint(3, "Q7323115_guide"),
        TPos_Q7323103Trigger = {pos = {x = 897.3417, y = 204.0345, z = 6069.757}, rot = {x = 0, y = 0, z = 0}}
    }
}

local datas = {
    RoutePointsData1 = {{x = 891.89, y = 200.0, z = 6095.582}, {x = 888.046, y = 200.0, z = 6110.123}},
    RoutePointsData2 = {
        {x = 892.939, y = 220.725, z = 6076.59},
        {x = 888.943, y = 240.691, z = 6052.983},
        {x = 834.656, y = 254.747, z = 5999.554}
    },
    TextmapId = {"Quest_Black_Q7323111"}
}

local protectTxt = {narratorId = 7323103, pauseLen = 10, resumeLen = 5, tag = "Story", startCheckPause = false}
local durationList = {}
local n = 4
local v = 4
local n2 = 4
local n3 = 4
local n4 = 4
durationList[1] = 4
durationList[2] = n
durationList[3] = v
durationList[4] = n2
durationList[5] = n3
durationList[6] = n4
protectTxt.durationList = durationList
datas.protectTxt = protectTxt
Q73231ClientConfig.Datas = datas
return Q73231ClientConfig
