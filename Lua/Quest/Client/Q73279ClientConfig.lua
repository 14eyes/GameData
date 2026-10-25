local Q73279ClientConfig = {
    MainID = 73279,
    ActorAlias = "73279",
    SubIDs = {
        q7327910 = 7327910,
        q7327909 = 7327909,
        q7327901 = 7327901,
        q7327902 = 7327902,
        q7327903 = 7327903,
        q7327904 = 7327904,
        q7327905 = 7327905,
        q7327906 = 7327906,
        q7327907 = 7327907,
        q7327908 = 7327908
    },
    Npcs = {
        Npc20842Data = {
            id = 20842,
            alias = "Npc20842",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        PaimonData = {
            id = 1005,
            alias = "Paimon",
            script = "Actor/Quest/Q352/Paimon",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc20937Data = {
            id = 20937,
            alias = "Npc20937",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc20938Data = {
            id = 20938,
            alias = "Npc20938",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc4292Data = {
            id = 4292,
            alias = "Npc4292",
            script = "Actor/Npc/NpcFSMBehaviour",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        }
    }
}

local datas = {}
local narratorWithId7327902 = {narratorId = 7327901, pauseLen = 10, resumeLen = 5, tag = "Story", startCheckPause = false}
local durationList = {}
local n = 5
local v = 2.5
durationList[1] = 2.5
durationList[2] = n
durationList[3] = v
narratorWithId7327902.durationList = durationList
datas.NarratorWithId7327902 = narratorWithId7327902
local narratorWithId7327905 = {narratorId = 7327902, pauseLen = 10, resumeLen = 5, tag = "Story", startCheckPause = false}
local tbl = {}
local n2 = 4
tbl[1] = 3
tbl[2] = n2
narratorWithId7327905.durationList = tbl
datas.NarratorWithId7327905 = narratorWithId7327905

local narratorWithId7327907 = {
    narratorId = 7327903,
    pauseLen = 10,
    resumeLen = 5,
    tag = "StoryInMainPage",
    startCheckPause = false
}

local durationList2 = {}
local n3 = 2
local n4 = 3
local n5 = 5
local n6 = 5
local n7 = 2
durationList2[1] = 4
durationList2[2] = n3
durationList2[3] = n4
durationList2[4] = n5
durationList2[5] = n6
durationList2[6] = n7
narratorWithId7327907.durationList = durationList2
datas.NarratorWithId7327907 = narratorWithId7327907
Q73279ClientConfig.Datas = datas
return Q73279ClientConfig
