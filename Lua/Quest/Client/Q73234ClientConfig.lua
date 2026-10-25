local Q73234ClientConfig = {
    MainID = 73234,
    ActorAlias = "73234",
    SubIDs = {q7323401 = 7323401, q7323403 = 7323403, q7323404 = 7323404, q7323402 = 7323402}
}

local datas = {
    NarratorWithId02 = {
        narratorId = 7323402,
        pauseLen = 10,
        resumeLen = 5,
        tag = "Story",
        startCheckPause = false,
        durationList = {3}
    },
    NarratorWithId = {
        narratorId = 7323403,
        pauseLen = 10,
        resumeLen = 5,
        tag = "Story",
        startCheckPause = false,
        durationList = {3}
    }
}

local narratorWithId00 = {narratorId = 7323401, pauseLen = 10, resumeLen = 5, tag = "Story", startCheckPause = false}
local durationList = {}
local n = 2.5
local v = 2.5
durationList[1] = 2
durationList[2] = n
durationList[3] = v
narratorWithId00.durationList = durationList
datas.NarratorWithId00 = narratorWithId00
Q73234ClientConfig.Datas = datas
return Q73234ClientConfig
