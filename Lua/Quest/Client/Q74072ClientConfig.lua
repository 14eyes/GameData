local Q74072ClientConfig = {
    MainID = 74072,
    ActorAlias = "74072",
    SubIDs = {
        q7407201 = 7407201,
        q7407202 = 7407202,
        q7407203 = 7407203,
        q7407204 = 7407204,
        q7407205 = 7407205,
        q7407235 = 7407235,
        q7407236 = 7407236,
        q7407237 = 7407237,
        q7407241 = 7407241,
        q7407206 = 7407206,
        q7407224 = 7407224,
        q7407225 = 7407225,
        q7407226 = 7407226,
        q7407239 = 7407239,
        q7407227 = 7407227,
        q7407228 = 7407228,
        q7407229 = 7407229,
        q7407230 = 7407230,
        q7407231 = 7407231,
        q7407238 = 7407238,
        q7407207 = 7407207,
        q7407232 = 7407232,
        q7407208 = 7407208,
        q7407209 = 7407209,
        q7407212 = 7407212,
        q7407213 = 7407213,
        q7407214 = 7407214,
        q7407215 = 7407215,
        q7407233 = 7407233,
        q7407216 = 7407216,
        q7407217 = 7407217,
        q7407218 = 7407218,
        q7407219 = 7407219,
        q7407220 = 7407220,
        q7407221 = 7407221,
        q7407222 = 7407222,
        q7407223 = 7407223,
        q7407210 = 7407210,
        q7407211 = 7407211,
        q7407234 = 7407234,
        q7407240 = 7407240
    },
    Npcs = {
        Npc20995Data = {
            id = 20995,
            alias = "Npc20995",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        PaimonData = {
            id = 1005,
            alias = "Paimon",
            script = "Actor/Quest/Q352/Paimon",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc20984Data = {
            id = 20984,
            alias = "Npc20984",
            script = "Actor/Npc/NpcFSMBehaviour",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc21031Data = {
            id = 21031,
            alias = "Npc21031",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc5303Data = {
            id = 5303,
            alias = "Npc5303",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc21048Data = {
            id = 21048,
            alias = "Npc21048",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc20997Data = {
            id = 20997,
            alias = "Npc20997",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc20998Data = {
            id = 20998,
            alias = "Npc20998",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        }
    },
    Points = {
        TPos_Q74072Trigger_7407204FINISH = {pos = {x = 200.131, y = -21.491, z = 200.048}, rot = {x = 0.0, y = 0.0, z = 0.0}},
        TPos_Q74072Trigger_7407224FINISH = {pos = {x = 3753.392, y = 267.79, z = 4983.121}, rot = {x = 0.0, y = 0.0, z = 0.0}},
        TPos_Q74072Trigger_7407207FINISH = {pos = {x = 3030.471, y = 451.777, z = 3577.574}, rot = {x = 0.0, y = 284.057, z = 0.0}},
        TPos_Q74072Trigger_7407215FINISH = {pos = {x = 200.131, y = -21.491, z = 200.048}, rot = {x = 0.0, y = 0.0, z = 0.0}},
        TPos_Q74072Trigger_7407233FINISH = {pos = {x = 200.131, y = -21.491, z = 200.048}, rot = {x = 0.0, y = 0.0, z = 0.0}}
    }
}

local datas = {TextmapId_Backtoclub = {""}}

local narratorWithIdD1 = {
    narratorId = 740729902,
    pauseLen = 10,
    resumeLen = 5,
    tag = "StoryInMainPage",
    startCheckPause = false
}

local durationList = {}
local n = 3
durationList[1] = 5
durationList[2] = n
narratorWithIdD1.durationList = durationList
datas.NarratorWithIdD1 = narratorWithIdD1

local narratorWithIdD2 = {
    narratorId = 740729903,
    pauseLen = 10,
    resumeLen = 5,
    tag = "StoryInMainPage",
    startCheckPause = false
}

local tbl = {}
local v = 5
local n2 = 3
tbl[1] = 3
tbl[2] = v
tbl[3] = n2
narratorWithIdD2.durationList = tbl
datas.NarratorWithIdD2 = narratorWithIdD2

local narratorWithIdD3 = {
    narratorId = 740729904,
    pauseLen = 10,
    resumeLen = 5,
    tag = "StoryInMainPage",
    startCheckPause = false
}

local durationList2 = {}
local n3 = 3
durationList2[1] = 3
durationList2[2] = n3
narratorWithIdD3.durationList = durationList2
datas.NarratorWithIdD3 = narratorWithIdD3

datas.NarratorWithIdJACOB = {
    narratorId = 740729905,
    pauseLen = 10,
    resumeLen = 5,
    tag = "StoryInMainPage",
    startCheckPause = false,
    durationList = {5}
}

local narratorWithIdRETURN = {
    narratorId = 740729914,
    pauseLen = 10,
    resumeLen = 5,
    tag = "StoryInMainPage",
    startCheckPause = false
}

local durationList3 = {}
local n4 = 3
durationList3[1] = 3
durationList3[2] = n4
narratorWithIdRETURN.durationList = durationList3
datas.NarratorWithIdRETURN = narratorWithIdRETURN

local narratorWithIdQSaf42 = {
    narratorId = 740729916,
    pauseLen = 10,
    resumeLen = 5,
    tag = "StoryInMainPage",
    startCheckPause = false
}

local durationList4 = {}
local n5 = 3
local n6 = 5
durationList4[1] = 3
durationList4[2] = n5
durationList4[3] = n6
narratorWithIdQSaf42.durationList = durationList4
datas.NarratorWithIdQSaf42 = narratorWithIdQSaf42

datas.NarratorWithIdQSbf42 = {
    narratorId = 740729919,
    pauseLen = 10,
    resumeLen = 5,
    tag = "StoryInMainPage",
    startCheckPause = false,
    durationList = {4}
}

datas.DialogsId_Backtoclub = {740729920}
Q74072ClientConfig.Datas = datas
return Q74072ClientConfig
