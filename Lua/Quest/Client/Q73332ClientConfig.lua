local Q73332ClientConfig = {
    MainID = 73332,
    ActorAlias = "73332",
    SubIDs = {
        q7333201 = 7333201,
        q7333202 = 7333202,
        q7333203 = 7333203,
        q7333208 = 7333208,
        q7333204 = 7333204,
        q7333205 = 7333205,
        q7333206 = 7333206,
        q7333207 = 7333207,
        q7333209 = 7333209
    },
    Npcs = {
        Npc20987Data = {
            id = 20987,
            alias = "Npc20987",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc20954Data = {
            id = 20954,
            alias = "Npc20954",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        }
    },
    Points = {
        TPos_Q7333202Trigger = {pos = {x = 583.39, y = 299.9456, z = 6369.052}, rot = {x = 0, y = 0, z = 0}}
    }
}

local datas = {}
local narrator_7333201 = {narratorId = 7333201, pauseLen = 10, resumeLen = 5, tag = "Story", startCheckPause = false}
local durationList = {}
local n = 3
local v = 3
durationList[1] = 3
durationList[2] = n
durationList[3] = v
narrator_7333201.durationList = durationList
datas.Narrator_7333201 = narrator_7333201

datas.Narrator_7333202 = {
    narratorId = 7333202,
    pauseLen = 10,
    resumeLen = 5,
    tag = "Story",
    startCheckPause = false,
    durationList = {3}
}

Q73332ClientConfig.Datas = datas
return Q73332ClientConfig
