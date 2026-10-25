local Q73062ClientConfig = {
    MainID = 73062,
    ActorAlias = "73062",
    SubIDs = {
        q7306201 = 7306201,
        q7306202 = 7306202,
        q7306203 = 7306203,
        q7306208 = 7306208,
        q7306209 = 7306209,
        q7306210 = 7306210,
        q7306211 = 7306211,
        q7306212 = 7306212,
        q7306213 = 7306213,
        q7306214 = 7306214,
        q7306205 = 7306205,
        q7306215 = 7306215,
        q7306216 = 7306216,
        q7306217 = 7306217,
        q7306206 = 7306206,
        q7306219 = 7306219,
        q7306220 = 7306220,
        q7306221 = 7306221,
        q7306223 = 7306223,
        q7306224 = 7306224,
        q7306225 = 7306225,
        q7306226 = 7306226,
        q7306204 = 7306204,
        q7306227 = 7306227,
        q7306228 = 7306228,
        q7306229 = 7306229,
        q7306207 = 7306207,
        q7306222 = 7306222,
        q7306218 = 7306218
    },
    Npcs = {
        Npc4259Data = {
            id = 4259,
            alias = "Npc4259",
            script = "Actor/Npc/NpcFSMBehaviour",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc4185Data = {
            id = 4185,
            alias = "Npc4185",
            script = "Actor/Npc/NpcFSMBehaviour",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        }
    }
}

local datas = {
    follow_1 = {sceneData:GetDummyPoint(3, "WQL2_FOLLOW1").pos, sceneData:GetDummyPoint(3, "WQL2_AMBUSH1").pos},
    follow_2 = {sceneData:GetDummyPoint(3, "WQL2_LNLHOME").pos},
    NarratorTable7306203 = {
        {dialogID = 730629901, audioEvtName = "", duration = 7},
        {dialogID = 730629902, audioEvtName = "", duration = 5}
    },
    NarratorTable730620901 = {{dialogID = 730629903, audioEvtName = "", duration = 5}},
    NarratorTable730620902 = {{dialogID = 730629904, audioEvtName = "", duration = 5}},
    NarratorTable7306211 = {
        {dialogID = 730629905, audioEvtName = "", duration = 5},
        {dialogID = 730629906, audioEvtName = "", duration = 5}
    },
    NarratorTable7306213 = {{dialogID = 730629907, audioEvtName = "", duration = 5}},
    NarratorTable7306219 = {
        {dialogID = 730629908, audioEvtName = "", duration = 4},
        {dialogID = 730629909, audioEvtName = "", duration = 4}
    },
    NarratorTable7306220 = {
        {dialogID = 730629910, audioEvtName = "", duration = 4},
        {dialogID = 730629911, audioEvtName = "", duration = 4},
        {dialogID = 730629912, audioEvtName = "", duration = 5},
        {dialogID = 730629913, audioEvtName = "", duration = 5}
    },
    NarratorTable7306222 = {
        {dialogID = 730629914, audioEvtName = "", duration = 3},
        {dialogID = 730629915, audioEvtName = "", duration = 3},
        {dialogID = 730629916, audioEvtName = "", duration = 4},
        {dialogID = 730629917, audioEvtName = "", duration = 5}
    },
    NarratorTable7306228 = {
        {dialogID = 730629918, audioEvtName = "", duration = 5},
        {dialogID = 730629919, audioEvtName = "", duration = 5}
    }
}

local narrator_730629914 = {narratorId = 730629914, pauseLen = 10, resumeLen = 5, tag = "Story", startCheckPause = false}
local durationList = {}
local n = 3
local v = 4
local n2 = 5
durationList[1] = 3
durationList[2] = n
durationList[3] = v
durationList[4] = n2
narrator_730629914.durationList = durationList
datas.Narrator_730629914 = narrator_730629914
local narrator_730629908 = {narratorId = 730629908, pauseLen = 10, resumeLen = 5, tag = "Story", startCheckPause = false}
local tbl = {}
local n3 = 3
tbl[1] = 3
tbl[2] = n3
narrator_730629908.durationList = tbl
datas.Narrator_730629908 = narrator_730629908
Q73062ClientConfig.Datas = datas
return Q73062ClientConfig
