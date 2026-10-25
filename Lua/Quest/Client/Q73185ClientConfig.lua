local Q73185ClientConfig = {
    MainID = 73185,
    ActorAlias = "73185",
    SubIDs = {
        q7318511 = 7318511,
        q7318501 = 7318501,
        q7318502 = 7318502,
        q7318503 = 7318503,
        q7318504 = 7318504,
        q7318505 = 7318505,
        q7318506 = 7318506,
        q7318507 = 7318507,
        q7318508 = 7318508,
        q7318509 = 7318509,
        q7318510 = 7318510
    },
    Npcs = {
        Npc20838Data = {
            id = 20838,
            alias = "Npc20838",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc20839Data = {
            id = 20839,
            alias = "Npc20839",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc20884Data = {
            id = 20884,
            alias = "Npc20884",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        }
    }
}

local datas = {}

local narratorWithId = {
    narratorId = 7318501,
    pauseLen = 10,
    resumeLen = 5,
    tag = "StoryInMainPage",
    startCheckPause = false
}

local durationList = {}
local n = 3
durationList[1] = 3
durationList[2] = n
narratorWithId.durationList = durationList
datas.NarratorWithId = narratorWithId
local narratorWithId2 = {narratorId = 7318502, pauseLen = 10, resumeLen = 5, tag = "Story", startCheckPause = false}
local tbl = {}
local v = 3
local n2 = 3
local n3 = 3
tbl[1] = 3
tbl[2] = v
tbl[3] = n2
tbl[4] = n3
narratorWithId2.durationList = tbl
datas.NarratorWithId2 = narratorWithId2
local narratorWithId3 = {narratorId = 7318503, pauseLen = 10, resumeLen = 5, tag = "Story", startCheckPause = false}
local durationList2 = {}
local n4 = 3
local n5 = 3
durationList2[1] = 3
durationList2[2] = n4
durationList2[3] = n5
narratorWithId3.durationList = durationList2
datas.NarratorWithId3 = narratorWithId3
local narratorWithId4 = {narratorId = 7318504, pauseLen = 10, resumeLen = 5, tag = "Story", startCheckPause = false}
local durationList3 = {}
local n6 = 3
local n7 = 3
durationList3[1] = 3
durationList3[2] = n6
durationList3[3] = n7
narratorWithId4.durationList = durationList3
datas.NarratorWithId4 = narratorWithId4
Q73185ClientConfig.Datas = datas
return Q73185ClientConfig
