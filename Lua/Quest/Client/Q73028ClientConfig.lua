local Q73028ClientConfig = {
    MainID = 73028,
    ActorAlias = "73028",
    SubIDs = {
        q7302801 = 7302801,
        q7302804 = 7302804,
        q7302802 = 7302802,
        q7302805 = 7302805,
        q7302803 = 7302803,
        q7302806 = 7302806
    },
    Npcs = {
        Npc20645Data = {
            id = 20645,
            alias = "Npc20645",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        }
    }
}

local datas = {}
local narratorWithId = {narratorId = 730289903, pauseLen = 10, resumeLen = 5, tag = "Story", startCheckPause = false}
local durationList = {}
local n = 4
durationList[1] = 3
durationList[2] = n
narratorWithId.durationList = durationList
datas.NarratorWithId = narratorWithId
local narratorWithId2 = {narratorId = 730289901, pauseLen = 10, resumeLen = 5, tag = "Story", startCheckPause = false}
local tbl = {}
local v = 5
tbl[1] = 4
tbl[2] = v
narratorWithId2.durationList = tbl
datas.NarratorWithId2 = narratorWithId2
Q73028ClientConfig.Datas = datas
return Q73028ClientConfig
