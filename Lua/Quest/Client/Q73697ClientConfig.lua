local Q73697ClientConfig = {
    MainID = 73697,
    ActorAlias = "73697",
    SubIDs = {
        q7369701 = 7369701,
        q7369702 = 7369702,
        q7369703 = 7369703,
        q7369704 = 7369704,
        q7369705 = 7369705,
        q7369706 = 7369706
    },
    Npcs = {
        Npc13210Data = {
            id = 13210,
            alias = "Npc13210",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        }
    },
    Points = {TPos_Q73697Trigger = sceneData:GetDummyPoint(3, "Q7369701_N10000005")}
}

local datas = {}
local narratorWithId = {narratorId = 7369701, pauseLen = 10, resumeLen = 5, tag = "Story", startCheckPause = false}
local durationList = {}
local n = 3
local v = 3
durationList[1] = 4
durationList[2] = n
durationList[3] = v
narratorWithId.durationList = durationList
datas.NarratorWithId = narratorWithId
Q73697ClientConfig.Datas = datas
return Q73697ClientConfig
