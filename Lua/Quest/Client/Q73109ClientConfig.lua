local Q73109ClientConfig = {
    MainID = 73109,
    ActorAlias = "73109",
    SubIDs = {q7310901 = 7310901, q7310902 = 7310902, q7310903 = 7310903, q7310904 = 7310904, q7310905 = 7310905},
    Npcs = {
        Npc20819Data = {
            id = 20819,
            alias = "Npc20819",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc4160Data = {
            id = 4160,
            alias = "Npc4160",
            script = "Actor/Npc/NpcFSMBehaviour",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        }
    }
}

local datas = {}
local narrator_7310901 = {narratorId = 7310901, pauseLen = 10, resumeLen = 5, tag = "Story", startCheckPause = false}
local durationList = {}
local n = 3
local v = 3
durationList[1] = 3
durationList[2] = n
durationList[3] = v
narrator_7310901.durationList = durationList
datas.Narrator_7310901 = narrator_7310901

datas.Narrator_7310902 = {
    narratorId = 7310902,
    pauseLen = 10,
    resumeLen = 5,
    tag = "Story",
    startCheckPause = false,
    durationList = {3}
}

Q73109ClientConfig.Datas = datas
return Q73109ClientConfig
