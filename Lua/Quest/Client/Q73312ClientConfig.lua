local Q73312ClientConfig = {
    MainID = 73312,
    ActorAlias = "73312",
    SubIDs = {
        q7331201 = 7331201,
        q7331202 = 7331202,
        q7331203 = 7331203,
        q7331208 = 7331208,
        q7331204 = 7331204,
        q7331205 = 7331205,
        q7331206 = 7331206,
        q7331210 = 7331210,
        q7331211 = 7331211,
        q7331213 = 7331213,
        q7331207 = 7331207,
        q7331209 = 7331209
    },
    Npcs = {
        Npc20987Data = {
            id = 20987,
            alias = "Npc20987",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc20958Data = {
            id = 20958,
            alias = "Npc20958",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        }
    },
    Points = {
        TPos_Q7331202Trigger = {pos = {x = 622.1959, y = 332.1452, z = 6548.981}, rot = {x = 0, y = 0, z = 0}}
    }
}

local datas = {}
local narrator_7331201 = {narratorId = 7331201, pauseLen = 10, resumeLen = 5, tag = "Story", startCheckPause = false}
local durationList = {}
local n = 3
local v = 3
durationList[1] = 3
durationList[2] = n
durationList[3] = v
narrator_7331201.durationList = durationList
datas.Narrator_7331201 = narrator_7331201

datas.Narrator_7331202 = {
    narratorId = 7331202,
    pauseLen = 10,
    resumeLen = 5,
    tag = "Story",
    startCheckPause = false,
    durationList = {3}
}

Q73312ClientConfig.Datas = datas
return Q73312ClientConfig
