local Q73330ClientConfig = {
    MainID = 73330,
    ActorAlias = "73330",
    SubIDs = {
        q7333001 = 7333001,
        q7333002 = 7333002,
        q7333009 = 7333009,
        q7333010 = 7333010,
        q7333011 = 7333011,
        q7333012 = 7333012,
        q7333013 = 7333013,
        q7333004 = 7333004,
        q7333006 = 7333006,
        q7333007 = 7333007,
        q7333008 = 7333008,
        q7333005 = 7333005,
        q7333003 = 7333003
    },
    Npcs = {
        Npc20966Data = {
            id = 20966,
            alias = "Npc20966",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        }
    },
    Points = {
        TPos_Q7333004Trigger = {pos = {x = 666.6039, y = 319.6892, z = 6316.25}, rot = {x = 0, y = 0, z = 0}}
    }
}

local datas = {}
local narratorWithId01 = {narratorId = 733300101, pauseLen = 10, resumeLen = 5, tag = "Story", startCheckPause = false}
local durationList = {}
local n = 4
durationList[1] = 5
durationList[2] = n
narratorWithId01.durationList = durationList
datas.NarratorWithId01 = narratorWithId01
local narratorWithId02 = {narratorId = 733300201, pauseLen = 10, resumeLen = 5, tag = "Story", startCheckPause = false}
local tbl = {}
local v = 4
tbl[1] = 5
tbl[2] = v
narratorWithId02.durationList = tbl
datas.NarratorWithId02 = narratorWithId02

datas.NarratorWithId05 = {
    narratorId = 733300501,
    pauseLen = 10,
    resumeLen = 5,
    tag = "Story",
    startCheckPause = false,
    durationList = {3}
}

datas.NarratorWithId06 = {
    narratorId = 733300601,
    pauseLen = 10,
    resumeLen = 5,
    tag = "Story",
    startCheckPause = false,
    durationList = {4}
}

local narratorWithId04 = {narratorId = 733300401, pauseLen = 10, resumeLen = 5, tag = "Story", startCheckPause = false}
local durationList2 = {}
local n2 = 4
durationList2[1] = 4
durationList2[2] = n2
narratorWithId04.durationList = durationList2
datas.NarratorWithId04 = narratorWithId04
local narratorWithId08 = {narratorId = 733300801, pauseLen = 10, resumeLen = 5, tag = "Story", startCheckPause = false}
local durationList3 = {}
local n3 = 4
local n4 = 4
durationList3[1] = 4
durationList3[2] = n3
durationList3[3] = n4
narratorWithId08.durationList = durationList3
datas.NarratorWithId08 = narratorWithId08
local narratorWithId11 = {narratorId = 733301101, pauseLen = 10, resumeLen = 5, tag = "Story", startCheckPause = false}
local durationList4 = {}
local n5 = 4
local n6 = 3
local n7 = 4
durationList4[1] = 3
durationList4[2] = n5
durationList4[3] = n6
durationList4[4] = n7
narratorWithId11.durationList = durationList4
datas.NarratorWithId11 = narratorWithId11
local narratorWithId12 = {narratorId = 733301201, pauseLen = 10, resumeLen = 5, tag = "Story", startCheckPause = false}
local durationList5 = {}
local n8 = 3
local n9 = 4
durationList5[1] = 3
durationList5[2] = n8
durationList5[3] = n9
narratorWithId12.durationList = durationList5
datas.NarratorWithId12 = narratorWithId12
local narratorWithId13 = {narratorId = 733301301, pauseLen = 10, resumeLen = 5, tag = "Story", startCheckPause = false}
local durationList6 = {}
local n10 = 3
durationList6[1] = 3
durationList6[2] = n10
narratorWithId13.durationList = durationList6
datas.NarratorWithId13 = narratorWithId13

datas.NarratorWithId03 = {
    narratorId = 733300103,
    pauseLen = 10,
    resumeLen = 5,
    tag = "Story",
    startCheckPause = false,
    durationList = {3}
}

Q73330ClientConfig.Datas = datas
return Q73330ClientConfig
