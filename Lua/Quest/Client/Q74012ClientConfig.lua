local Q74012ClientConfig = {
    MainID = 74012,
    ActorAlias = "74012",
    SubIDs = {
        q7401201 = 7401201,
        q7401202 = 7401202,
        q7401203 = 7401203,
        q7401204 = 7401204,
        q7401205 = 7401205,
        q7401206 = 7401206,
        q7401207 = 7401207,
        q7401208 = 7401208,
        q7401209 = 7401209
    }
}

local datas = {}

local narratorWithId_740120201 = {
    narratorId = 740120201,
    pauseLen = 10,
    resumeLen = 5,
    tag = "StoryInMainPage",
    startCheckPause = false
}

local durationList = {}
local n = 10
durationList[1] = 8
durationList[2] = n
narratorWithId_740120201.durationList = durationList
datas.NarratorWithId_740120201 = narratorWithId_740120201

datas.NarratorWithId_740120209 = {
    narratorId = 740120209,
    pauseLen = 10,
    resumeLen = 5,
    tag = "StoryInMainPage",
    startCheckPause = false,
    durationList = {9}
}

local narratorWithId_740120702 = {
    narratorId = 740120702,
    pauseLen = 10,
    resumeLen = 5,
    tag = "StoryInMainPage",
    startCheckPause = false
}

local tbl = {}
local v = 6
tbl[1] = 3
tbl[2] = v
narratorWithId_740120702.durationList = tbl
datas.NarratorWithId_740120702 = narratorWithId_740120702
Q74012ClientConfig.Datas = datas
return Q74012ClientConfig
