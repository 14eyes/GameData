local Q11028ClientConfig = {
    MainID = 11028,
    ActorAlias = "11028",
    SubIDs = {
        q1102801 = 1102801,
        q1102802 = 1102802,
        q1102803 = 1102803,
        q1102804 = 1102804,
        q1102811 = 1102811,
        q1102805 = 1102805,
        q1102806 = 1102806,
        q1102807 = 1102807,
        q1102808 = 1102808,
        q1102809 = 1102809,
        q1102810 = 1102810
    },
    Npcs = {
        Npc1068Data = {
            id = 1068,
            alias = "Npc1068",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc13138Data = {
            id = 13138,
            alias = "Npc13138",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc13139Data = {
            id = 13139,
            alias = "Npc13139",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc13140Data = {
            id = 13140,
            alias = "Npc13140",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc2103Data = {
            id = 2103,
            alias = "Npc2103",
            script = "Actor/Npc/NpcFSMBehaviour",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc10233Data = {
            id = 10233,
            alias = "Npc10233",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        XiaoData = {
            id = 10204,
            alias = "Xiao",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc13136Data = {
            id = 13136,
            alias = "Npc13136",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc13135Data = {
            id = 13135,
            alias = "Npc13135",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc1021Data = {
            id = 1021,
            alias = "Npc1021",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc2068Data = {
            id = 2068,
            alias = "Npc2068",
            script = "Actor/Npc/NpcFSMBehaviour",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        }
    }
}

local datas = {
    TransmitBlank = {110289801},
    Narrator_1102801 = {
        narratorId = 1102801,
        pauseLen = 10,
        resumeLen = 5,
        tag = "StoryInMainPage",
        startCheckPause = false
    },
    Point_Q1102805_medicineBottle = {x = 1758.309, y = 210.488, z = 944.112},
    Q1102802_70300118 = sceneData:GetDummyPoint(3, "Q1102802_70300118"),
    Q1102802_Q1102803_Q1102804_Q1102805_Q1102811_N13139 = sceneData:GetDummyPoint(3, "Q1102802_Q1102803_Q1102804_Q1102805_Q1102811_N13139"),
    Q1102802_Q1102803_Q1102804_Q1102805_Q1102811_N13140 = sceneData:GetDummyPoint(3, "Q1102802_Q1102803_Q1102804_Q1102805_Q1102811_N13140"),
    BAIWalkToPoint2 = {
        {x = 1750.264, y = 208.955, z = 935.343},
        {x = 1750.107, y = 208.881, z = 939.148},
        sceneData:GetDummyPoint(3, "Q1102811_Baizhu_2").pos
    }
}

local baiWalkToPoint3 = {}
local pos = sceneData:GetDummyPoint(3, "Q1102811_Baizhu_3").pos
baiWalkToPoint3[1] = {x = 1753.278, y = 209.533, z = 942.766}
baiWalkToPoint3[2] = pos
datas.BAIWalkToPoint3 = baiWalkToPoint3
local baiWalkToPoint0_4 = {}
local v = sceneData:GetDummyPoint(3, "Q1102811_Baizhu_3").pos
local pos2 = sceneData:GetDummyPoint(3, "Q1102811_Baizhu_4").pos
baiWalkToPoint0_4[1] = {x = 1750.449, y = 209.021, z = 940.626}
baiWalkToPoint0_4[2] = v
baiWalkToPoint0_4[3] = pos2
datas.BAIWalkToPoint0_4 = baiWalkToPoint0_4

datas.BAIWalkToPoint1_4 = {
    {x = 1750.134, y = 208.89, z = 935.68},
    {x = 1750.224, y = 208.889, z = 939.007},
    {x = 1753.254, y = 209.552, z = 943.112},
    sceneData:GetDummyPoint(3, "Q1102811_Baizhu_3").pos,
    sceneData:GetDummyPoint(3, "Q1102811_Baizhu_4").pos
}

local baiWalkToPoint2_4 = {}
local pos3 = sceneData:GetDummyPoint(3, "Q1102811_Baizhu_3").pos
local pos4 = sceneData:GetDummyPoint(3, "Q1102811_Baizhu_4").pos
baiWalkToPoint2_4[1] = {x = 1753.27, y = 209.558, z = 943.186}
baiWalkToPoint2_4[2] = pos3
baiWalkToPoint2_4[3] = pos4
datas.BAIWalkToPoint2_4 = baiWalkToPoint2_4
datas.Narrator_1102802 = {narratorId = 1102802, pauseLen = 10, resumeLen = 5, tag = "Story", startCheckPause = false}
Q11028ClientConfig.Datas = datas
return Q11028ClientConfig
