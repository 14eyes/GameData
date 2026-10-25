local Q73026ClientConfig = {
    MainID = 73026,
    ActorAlias = "73026",
    SubIDs = {
        q7302604 = 7302604,
        q7302605 = 7302605,
        q7302606 = 7302606,
        q7302603 = 7302603,
        q7302607 = 7302607,
        q7302616 = 7302616,
        q7302615 = 7302615,
        q7302608 = 7302608,
        q7302609 = 7302609,
        q7302614 = 7302614,
        q7302610 = 7302610,
        q7302611 = 7302611,
        q7302612 = 7302612,
        q7302613 = 7302613,
        q7302602 = 7302602,
        q7302601 = 7302601
    },
    Npcs = {
        Npc20645Data = {
            id = 20645,
            alias = "Npc20645",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc20601Data = {
            id = 20601,
            alias = "Npc20601",
            script = "Actor/Npc/NpcEnkanomiya",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        }
    }
}

local datas = {
    NarratorTable1 = {
        {dialogID = 730269902, audioEvtName = "", duration = 3},
        {dialogID = 730269903, audioEvtName = "", duration = 3}
    }
}

local narratorWithId = {narratorId = 730269904, pauseLen = 10, resumeLen = 5, tag = "Story", startCheckPause = false}
local durationList = {}
local n = 4
local v = 4
durationList[1] = 4
durationList[2] = n
durationList[3] = v
narratorWithId.durationList = durationList
datas.NarratorWithId = narratorWithId
Q73026ClientConfig.Datas = datas
return Q73026ClientConfig
