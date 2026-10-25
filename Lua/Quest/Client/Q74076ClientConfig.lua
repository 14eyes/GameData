local Q74076ClientConfig = {
    MainID = 74076,
    ActorAlias = "74076",
    SubIDs = {
        q7407607 = 7407607,
        q7407601 = 7407601,
        q7407602 = 7407602,
        q7407603 = 7407603,
        q7407604 = 7407604,
        q7407605 = 7407605,
        q7407606 = 7407606
    },
    Npcs = {
        Npc20995Data = {
            id = 20995,
            alias = "Npc20995",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        }
    }
}

local datas = {}

local narratorWithIdClose = {
    narratorId = 7407601,
    pauseLen = 10,
    resumeLen = 5,
    tag = "StoryInMainPage",
    startCheckPause = false
}

local durationList = {}
local n = 3
durationList[1] = 3
durationList[2] = n
narratorWithIdClose.durationList = durationList
datas.NarratorWithIdClose = narratorWithIdClose

local narratorWithIdTransport = {
    narratorId = 7407602,
    pauseLen = 10,
    resumeLen = 5,
    tag = "StoryInMainPage",
    startCheckPause = false
}

local tbl = {}
local v = 2
tbl[1] = 3
tbl[2] = v
narratorWithIdTransport.durationList = tbl
datas.NarratorWithIdTransport = narratorWithIdTransport
Q74076ClientConfig.Datas = datas
return Q74076ClientConfig
