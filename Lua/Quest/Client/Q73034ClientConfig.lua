local Q73034ClientConfig = {
    MainID = 73034,
    ActorAlias = "73034",
    SubIDs = {
        q7303401 = 7303401,
        q7303402 = 7303402,
        q7303403 = 7303403,
        q7303404 = 7303404,
        q7303407 = 7303407,
        q7303405 = 7303405,
        q7303406 = 7303406
    },
    Npcs = {
        Npc20817Data = {
            id = 20817,
            alias = "Npc20817",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc20818Data = {
            id = 20818,
            alias = "Npc20818",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        }
    }
}

local datas = {}
local narrator_7303401 = {narratorId = 7303401, pauseLen = 10, resumeLen = 5, tag = "Story", startCheckPause = false}
local durationList = {}
local n = 3
local v = 3
durationList[1] = 3
durationList[2] = n
durationList[3] = v
narrator_7303401.durationList = durationList
datas.Narrator_7303401 = narrator_7303401
local narrator_7303402 = {narratorId = 7303402, pauseLen = 10, resumeLen = 5, tag = "Story", startCheckPause = false}
local tbl = {}
local n2 = 3
local n3 = 3
tbl[1] = 3
tbl[2] = n2
tbl[3] = n3
narrator_7303402.durationList = tbl
datas.Narrator_7303402 = narrator_7303402
local narrator_7303403 = {narratorId = 7303403, pauseLen = 10, resumeLen = 5, tag = "Story", startCheckPause = false}
local durationList2 = {}
local n4 = 2
durationList2[1] = 2
durationList2[2] = n4
narrator_7303403.durationList = durationList2
datas.Narrator_7303403 = narrator_7303403
datas.BlackScreenText01 = "Quest_Black_Q73034"
Q73034ClientConfig.Datas = datas
return Q73034ClientConfig
