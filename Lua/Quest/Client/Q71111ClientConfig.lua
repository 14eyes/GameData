local Q71111ClientConfig = {
    MainID = 71111,
    ActorAlias = "71111",
    SubIDs = {
        q7111101 = 7111101,
        q7111106 = 7111106,
        q7111102 = 7111102,
        q7111103 = 7111103,
        q7111109 = 7111109,
        q7111110 = 7111110,
        q7111104 = 7111104,
        q7111105 = 7111105,
        q7111107 = 7111107,
        q7111108 = 7111108
    },
    Npcs = {
        Npc2231Data = {
            id = 2231,
            alias = "Npc2231",
            script = "Actor/Npc/NpcFSMBehaviour",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc2232Data = {
            id = 2232,
            alias = "Npc2232",
            script = "Actor/Npc/NpcFSMBehaviour",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc2494Data = {
            id = 2494,
            alias = "Npc2494",
            script = "Actor/Npc/NpcFSMBehaviour",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc2488Data = {
            id = 2488,
            alias = "Npc2488",
            script = "Actor/Npc/NpcFSMBehaviour",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc2254Data = {
            id = 2254,
            alias = "Npc2254",
            script = "Actor/Npc/NpcFSMBehaviour",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        }
    },
    Points = {
        TPos_Q7111109Trigger = {pos = {x = 1877.627, y = 226.221, z = 1250.027}, rot = {x = 0.0, y = 0.0, z = 0.0}},
        TPos_Q7111102Trigger = {pos = {x = 1723.555, y = 241.216, z = 1157.808}, rot = {x = 0.0, y = 0.0, z = 0.0}},
        TPos_Q71111RunFailedTrigger = {pos = {x = 1917.427, y = 206.645, z = 1173.662}, rot = {x = 0.0, y = 136.59, z = 0.0}},
        TPos_Q7111106RmdTrigger = {pos = {x = 1723.555, y = 241.216, z = 1157.808}, rot = {x = 0.0, y = 0.0, z = 0.0}}
    }
}

local datas = {
    route_7111104_N2231 = {
        {x = 1897.804, y = 222.408, z = 1232.888},
        {x = 1906.088, y = 219.142, z = 1219.512},
        {x = 1910.179, y = 216.734, z = 1208.925},
        {x = 1917.623, y = 213.577, z = 1197.336},
        {x = 1923.345, y = 205.734, z = 1171.281}
    },
    route_7111104_N2488 = {{x = 1894.482, y = 222.49, z = 1232.275}, {x = 1898.758, y = 220.433, z = 1222.153}},
    route_7111104_N2232 = {
        {x = 1898.647, y = 221.351, z = 1228.788},
        {x = 1904.312, y = 219.633, z = 1222.027},
        {x = 1905.893, y = 217.22, z = 1211.339},
        {x = 1917.1, y = 213.078, z = 1196.248},
        {x = 1921.243, y = 205.889, z = 1171.704}
    },
    route_7111104_N2494 = {{x = 1896.67, y = 221.668, z = 1229.602}, {x = 1899.983, y = 220.26, z = 1223.739}}
}

local narrator_7111101 = {narratorId = 7111101, tag = "StoryInMainPage", startCheckPause = true, resumeReminder = -1}
local durationList = {}
local n = 3
local v = 3
durationList[1] = 3
durationList[2] = n
durationList[3] = v
narrator_7111101.durationList = durationList
datas.Narrator_7111101 = narrator_7111101
local narrator_7111102 = {narratorId = 7111102, tag = "StoryInMainPage", startCheckPause = true, resumeReminder = -1}
local tbl = {}
local n2 = 3
local n3 = 3
tbl[1] = 3
tbl[2] = n2
tbl[3] = n3
narrator_7111102.durationList = tbl
datas.Narrator_7111102 = narrator_7111102
local narrator_7111103 = {narratorId = 7111103, tag = "StoryInMainPage", startCheckPause = true, resumeReminder = -1}
local durationList2 = {}
local n4 = 3
durationList2[1] = 3
durationList2[2] = n4
narrator_7111103.durationList = durationList2
datas.Narrator_7111103 = narrator_7111103
local narrator_7111104 = {narratorId = 7111104, tag = "StoryInMainPage", startCheckPause = true, resumeReminder = -1}
local durationList3 = {}
local n5 = 3
local n6 = 2
durationList3[1] = 3
durationList3[2] = n5
durationList3[3] = n6
narrator_7111104.durationList = durationList3
datas.Narrator_7111104 = narrator_7111104
local narrator_7111105 = {narratorId = 7111105, tag = "StoryInMainPage", startCheckPause = true, resumeReminder = -1}
local durationList4 = {}
local n7 = 2
local n8 = 2
local n9 = 3
durationList4[1] = 2
durationList4[2] = n7
durationList4[3] = n8
durationList4[4] = n9
narrator_7111105.durationList = durationList4
datas.Narrator_7111105 = narrator_7111105
local narrator_7111106 = {narratorId = 7111105, tag = "StoryInMainPage", startCheckPause = true, resumeReminder = -1}
local durationList5 = {}
local n10 = 3
local n11 = 3
local n12 = 3
durationList5[1] = 3
durationList5[2] = n10
durationList5[3] = n11
durationList5[4] = n12
narrator_7111106.durationList = durationList5
datas.Narrator_7111106 = narrator_7111106

datas.Narrator_7111107 = {
    narratorId = 7111107,
    tag = "StoryInMainPage",
    startCheckPause = true,
    resumeReminder = -1,
    durationList = {3}
}

datas.route_7111104_N2494_2 = {{x = 1908.615, y = 215.604, z = 1204.902}, {x = 1912.07, y = 213.22, z = 1196.857}}

datas.route_7111104_N2494_3 = {
    {x = 1917.843, y = 211.08, z = 1190.332},
    {x = 1917.673, y = 208.837, z = 1182.343},
    {x = 1917.427, y = 206.645, z = 1173.662}
}

datas.route_7111104_N2488_2 = {
    {x = 1903.63, y = 217.548, z = 1210.695},
    {x = 1907.948, y = 215.68, z = 1204.927},
    {x = 1910.079, y = 213.591, z = 1197.467}
}

datas.route_7111104_N2488_3 = {
    {x = 1914.328, y = 211.812, z = 1192.063},
    {x = 1915.251, y = 209.914, z = 1185.533},
    {x = 1915.473, y = 207.025, z = 1173.318}
}

Q71111ClientConfig.Datas = datas
return Q71111ClientConfig
