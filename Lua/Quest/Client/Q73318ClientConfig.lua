local Q73318ClientConfig = {
    MainID = 73318,
    ActorAlias = "73318",
    SubIDs = {
        q7331801 = 7331801,
        q7331802 = 7331802,
        q7331803 = 7331803,
        q7331808 = 7331808,
        q7331804 = 7331804,
        q7331805 = 7331805,
        q7331806 = 7331806,
        q7331810 = 7331810,
        q7331811 = 7331811,
        q7331813 = 7331813,
        q7331807 = 7331807,
        q7331809 = 7331809
    },
    Npcs = {
        Npc20987Data = {
            id = 20987,
            alias = "Npc20987",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc20953Data = {
            id = 20953,
            alias = "Npc20953",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        }
    },
    Points = {
        TPos_Q7331802Trigger = {pos = {x = 278.909, y = 281.9053, z = 6349.088}, rot = {x = 0, y = 0, z = 0}}
    }
}

local datas = {}
local narrator_7331801 = {narratorId = 7331801, pauseLen = 10, resumeLen = 5, tag = "Story", startCheckPause = false}
local durationList = {}
local n = 3
local v = 3
durationList[1] = 3
durationList[2] = n
durationList[3] = v
narrator_7331801.durationList = durationList
datas.Narrator_7331801 = narrator_7331801

datas.Narrator_7331802 = {
    narratorId = 7331802,
    pauseLen = 10,
    resumeLen = 5,
    tag = "Story",
    startCheckPause = false,
    durationList = {3}
}

Q73318ClientConfig.Datas = datas
return Q73318ClientConfig
