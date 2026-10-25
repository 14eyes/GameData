local Q74054ClientConfig = {
    MainID = 74054,
    ActorAlias = "74054",
    SubIDs = {
        q7405401 = 7405401,
        q7405402 = 7405402,
        q7405403 = 7405403,
        q7405404 = 7405404,
        q7405405 = 7405405,
        q7405406 = 7405406,
        q7405407 = 7405407
    }
}

local datas = {}

local narratorWithId_740540001 = {
    narratorId = 740540001,
    pauseLen = 10,
    resumeLen = 5,
    tag = "StoryInMainPage",
    startCheckPause = false
}

local durationList = {}
local n = 4
local v = 7
durationList[1] = 8
durationList[2] = n
durationList[3] = v
narratorWithId_740540001.durationList = durationList
datas.NarratorWithId_740540001 = narratorWithId_740540001

local narratorWithId_740540004 = {
    narratorId = 740540004,
    pauseLen = 10,
    resumeLen = 5,
    tag = "StoryInMainPage",
    startCheckPause = false
}

local tbl = {}
local n2 = 4
local n3 = 5
tbl[1] = 8
tbl[2] = n2
tbl[3] = n3
narratorWithId_740540004.durationList = tbl
datas.NarratorWithId_740540004 = narratorWithId_740540004

datas.NarratorWithId_740540009 = {
    narratorId = 740540009,
    pauseLen = 10,
    resumeLen = 5,
    tag = "StoryInMainPage",
    startCheckPause = false,
    durationList = {8}
}

Q74054ClientConfig.Datas = datas
return Q74054ClientConfig
