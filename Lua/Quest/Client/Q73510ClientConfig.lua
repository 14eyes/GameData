local Q73510ClientConfig = {
    MainID = 73510,
    ActorAlias = "73510",
    SubIDs = {q7351001 = 7351001},
    Npcs = {
        Npc30226Data = {
            id = 30226,
            alias = "Npc30226",
            script = "Actor/Npc/NpcFSMBehaviour",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        }
    }
}

local datas = {}
local narrator_7351001 = {narratorId = 7351001, pauseLen = 10, resumeLen = 5, tag = "Story", startCheckPause = false}
local durationList = {}
local n = 3
durationList[1] = 3
durationList[2] = n
narrator_7351001.durationList = durationList
datas.Narrator_7351001 = narrator_7351001
Q73510ClientConfig.Datas = datas
return Q73510ClientConfig
