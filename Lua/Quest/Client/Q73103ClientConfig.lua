local Q73103ClientConfig = {
    MainID = 73103,
    ActorAlias = "73103",
    SubIDs = {
        q7310351 = 7310351,
        q7310301 = 7310301,
        q7310352 = 7310352,
        q7310302 = 7310302,
        q7310303 = 7310303,
        q7310304 = 7310304,
        q7310354 = 7310354,
        q7310355 = 7310355,
        q7310359 = 7310359,
        q7310347 = 7310347,
        q7310340 = 7310340,
        q7310305 = 7310305,
        q7310306 = 7310306,
        q7310339 = 7310339,
        q7310307 = 7310307,
        q7310308 = 7310308,
        q7310309 = 7310309,
        q7310310 = 7310310,
        q7310311 = 7310311,
        q7310312 = 7310312,
        q7310353 = 7310353,
        q7310313 = 7310313,
        q7310314 = 7310314,
        q7310315 = 7310315,
        q7310316 = 7310316,
        q7310317 = 7310317,
        q7310318 = 7310318,
        q7310361 = 7310361,
        q7310350 = 7310350,
        q7310362 = 7310362,
        q7310363 = 7310363,
        q7310319 = 7310319,
        q7310342 = 7310342,
        q7310343 = 7310343,
        q7310360 = 7310360,
        q7310320 = 7310320,
        q7310344 = 7310344,
        q7310356 = 7310356,
        q7310358 = 7310358,
        q7310357 = 7310357,
        q7310321 = 7310321,
        q7310322 = 7310322,
        q7310341 = 7310341,
        q7310323 = 7310323,
        q7310324 = 7310324,
        q7310325 = 7310325,
        q7310326 = 7310326,
        q7310327 = 7310327,
        q7310328 = 7310328,
        q7310329 = 7310329,
        q7310330 = 7310330,
        q7310331 = 7310331,
        q7310332 = 7310332,
        q7310333 = 7310333,
        q7310334 = 7310334,
        q7310335 = 7310335,
        q7310336 = 7310336,
        q7310346 = 7310346,
        q7310349 = 7310349,
        q7310337 = 7310337,
        q7310348 = 7310348,
        q7310338 = 7310338,
        q7310345 = 7310345,
        q7310364 = 7310364
    },
    Npcs = {
        Npc4296Data = {
            id = 4296,
            alias = "Npc4296",
            script = "Actor/Npc/NpcFSMBehaviour",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc20845Data = {
            id = 20845,
            alias = "Npc20845",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc20846Data = {
            id = 20846,
            alias = "Npc20846",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc4293Data = {
            id = 4293,
            alias = "Npc4293",
            script = "Actor/Npc/NpcFSMBehaviour",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc20856Data = {
            id = 20856,
            alias = "Npc20856",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc20988Data = {
            id = 20988,
            alias = "Npc20988",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc20989Data = {
            id = 20989,
            alias = "Npc20989",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        }
    }
}

local datas = {}
local n_7310350 = {narratorId = 7310301, pauseLen = 10, resumeLen = 5, tag = "Story", startCheckPause = false}
local durationList = {}
local n = 3
local v = 3
local n2 = 3
durationList[1] = 3
durationList[2] = n
durationList[3] = v
durationList[4] = n2
n_7310350.durationList = durationList
datas.N_7310350 = n_7310350

datas.N_7310343_Enter = {
    narratorId = 7310343,
    pauseLen = 10,
    resumeLen = 5,
    tag = "Story",
    startCheckPause = false,
    durationList = {3}
}

local narrator_05 = {narratorId = 7310318, pauseLen = 10, resumeLen = 5, tag = "Story", startCheckPause = false}
local tbl = {}
local n3 = 3
tbl[1] = 2
tbl[2] = n3
narrator_05.durationList = tbl
datas.Narrator_05 = narrator_05

datas.N_7310343 = {
    narratorId = 7310344,
    pauseLen = 10,
    resumeLen = 5,
    tag = "Story",
    startCheckPause = false,
    durationList = {3}
}

local narrator_08 = {narratorId = 7310320, pauseLen = 10, resumeLen = 5, tag = "Story", startCheckPause = false}
local durationList2 = {}
local n4 = 3
local n5 = 3
durationList2[1] = 3
durationList2[2] = n4
durationList2[3] = n5
narrator_08.durationList = durationList2
datas.Narrator_08 = narrator_08

datas.N_7310344 = {
    narratorId = 7310302,
    pauseLen = 10,
    resumeLen = 5,
    tag = "Story",
    startCheckPause = false,
    durationList = {3}
}

datas.N_7310344F = {
    narratorId = 7310303,
    pauseLen = 10,
    resumeLen = 5,
    tag = "Story",
    startCheckPause = false,
    durationList = {3}
}

local n_7310320 = {narratorId = 7310325, pauseLen = 10, resumeLen = 5, tag = "Story", startCheckPause = false}
local durationList3 = {}
local n6 = 5
local n7 = 6
local n8 = 3
local n9 = 3
local n10 = 2
local n11 = 3
durationList3[1] = 4
durationList3[2] = n6
durationList3[3] = n7
durationList3[4] = n8
durationList3[5] = n9
durationList3[6] = n10
durationList3[7] = n11
n_7310320.durationList = durationList3
datas.N_7310320 = n_7310320
local n_7310350R2 = {narratorId = 7310322, pauseLen = 10, resumeLen = 5, tag = "Story", startCheckPause = false}
local durationList4 = {}
local n12 = 4
local n13 = 4
local n14 = 3
local n15 = 3
local n16 = 5
local n17 = 3
local n18 = 3
local n19 = 2
local n20 = 3
durationList4[1] = 3
durationList4[2] = n12
durationList4[3] = n13
durationList4[4] = n14
durationList4[5] = n15
durationList4[6] = n16
durationList4[7] = n17
durationList4[8] = n18
durationList4[9] = n19
durationList4[10] = n20
n_7310350R2.durationList = durationList4
datas.N_7310350R2 = n_7310350R2
local n_7310321 = {narratorId = 7310328, pauseLen = 10, resumeLen = 5, tag = "Story", startCheckPause = false}
local durationList5 = {}
local n21 = 3
local n22 = 4
local n23 = 2
local n24 = 3
local n25 = 3
local n26 = 4
local n27 = 2
durationList5[1] = 3
durationList5[2] = n21
durationList5[3] = n22
durationList5[4] = n23
durationList5[5] = n24
durationList5[6] = n25
durationList5[7] = n26
durationList5[8] = n27
n_7310321.durationList = durationList5
datas.N_7310321 = n_7310321
local narrator_7310304_start = {narratorId = 7310314, pauseLen = 10, resumeLen = 5, tag = "Story", startCheckPause = false}
local durationList6 = {}
local n28 = 2
local n29 = 3
durationList6[1] = 3
durationList6[2] = n28
durationList6[3] = n29
narrator_7310304_start.durationList = durationList6
datas.Narrator_7310304_start = narrator_7310304_start
datas.N7310352_Trans = {"Quest_Black_Q7310352"}
local n7310331 = {narratorId = 7310331, pauseLen = 10, resumeLen = 5, tag = "Story", startCheckPause = false}
local durationList7 = {}
local n30 = 3
durationList7[1] = 3
durationList7[2] = n30
n7310331.durationList = durationList7
datas.N7310331 = n7310331

datas.N7310356 = {
    narratorId = 7310356,
    pauseLen = 10,
    resumeLen = 5,
    tag = "Story",
    startCheckPause = false,
    durationList = {3}
}

datas.N7310358 = {
    narratorId = 7310358,
    pauseLen = 10,
    resumeLen = 5,
    tag = "Story",
    startCheckPause = false,
    durationList = {4}
}

datas.N7310357 = {
    narratorId = 7310357,
    pauseLen = 10,
    resumeLen = 5,
    tag = "Story",
    startCheckPause = false,
    durationList = {4}
}

datas.N7310330_Trans = {731039966}
datas.N7310312_Trans = {""}
datas.N7310337_Trans = {""}
local n_7310348 = {narratorId = 7310348, pauseLen = 10, resumeLen = 5, tag = "Story", startCheckPause = false}
local durationList8 = {}
local n31 = 4
local n32 = 4
local n33 = 3
local n34 = 3
durationList8[1] = 4
durationList8[2] = n31
durationList8[3] = n32
durationList8[4] = n33
durationList8[5] = n34
n_7310348.durationList = durationList8
datas.N_7310348 = n_7310348
datas.N7310304_Trans = {""}

datas.RMD_7310326 = {
    narratorId = 7310372,
    pauseLen = 10,
    resumeLen = 5,
    tag = "Story",
    startCheckPause = false,
    durationList = {4}
}

Q73103ClientConfig.Datas = datas
return Q73103ClientConfig
