local Q73091ClientConfig = {
    MainID = 73091,
    ActorAlias = "73091",
    SubIDs = {q7309101 = 7309101, q7309103 = 7309103, q7309102 = 7309102}
}

local datas = {}
local narratorWithId = {narratorId = 7309101, pauseLen = 10, resumeLen = 5, tag = "Story", startCheckPause = false}
local durationList = {}
local n = 3
durationList[1] = 3
durationList[2] = n
narratorWithId.durationList = durationList
datas.NarratorWithId = narratorWithId
Q73091ClientConfig.Datas = datas
return Q73091ClientConfig
