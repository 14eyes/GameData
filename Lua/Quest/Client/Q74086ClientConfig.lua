local Q74086ClientConfig = {
    MainID = 74086,
    ActorAlias = "74086",
    SubIDs = {q7408601 = 7408601, q7408602 = 7408602, q7408603 = 7408603, q7408604 = 7408604, q7408605 = 7408605},
    Npcs = {
        Npc21084Data = {
            id = 21084,
            alias = "Npc21084",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc5259Data = {
            id = 5259,
            alias = "Npc5259",
            script = "Actor/Npc/NpcFSMBehaviour",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        }
    },
    Points = {
        TPos_Q7408601Trigger = {pos = {x = 4622.106, y = 447.407, z = 4198.017}, rot = {x = 0.0, y = 0.0, z = 0.0}}
    }
}

local datas = {}
local narrator_1 = {narratorId = 1, pauseLen = 10, resumeLen = 5, tag = "StoryInMainPage", startCheckPause = false}
local durationList = {}
local n = 3
local v = 3
local n2 = 3
local n3 = 3
local n4 = 3
durationList[1] = 3
durationList[2] = n
durationList[3] = v
durationList[4] = n2
durationList[5] = n3
durationList[6] = n4
narrator_1.durationList = durationList
datas.Narrator_1 = narrator_1
Q74086ClientConfig.Datas = datas
return Q74086ClientConfig
