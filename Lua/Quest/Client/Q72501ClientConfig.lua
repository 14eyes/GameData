local Q72501ClientConfig = {
    MainID = 72501,
    ActorAlias = "72501",
    SubIDs = {q7250101 = 7250101, q7250102 = 7250102},
    Npcs = {
        Npc30160Data = {
            id = 30160,
            alias = "Npc30160",
            script = "Actor/Npc/NpcFSMBehaviour",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        }
    }
}

local datas = {}
local narrator_7250101 = {narratorId = 7250101, pauseLen = 10, resumeLen = 5, tag = "Story", startCheckPause = false}
local durationList = {}
local n = 1
durationList[1] = 1
durationList[2] = n
narrator_7250101.durationList = durationList
datas.Narrator_7250101 = narrator_7250101
Q72501ClientConfig.Datas = datas
return Q72501ClientConfig
