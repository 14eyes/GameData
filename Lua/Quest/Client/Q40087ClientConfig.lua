local Q40087ClientConfig = {
    MainID = 40087,
    ActorAlias = "40087",
    SubIDs = {q4008702 = 4008702, q4008703 = 4008703, q4008701 = 4008701}
}

local datas = {}

local narratorWithId01 = {
    narratorId = 4008701,
    pauseLen = 10,
    resumeLen = 5,
    tag = "StoryInMainPage",
    startCheckPause = false
}

local durationList = {}
local n = 5
durationList[1] = 5
durationList[2] = n
narratorWithId01.durationList = durationList
datas.NarratorWithId01 = narratorWithId01

local narratorWithId02 = {
    narratorId = 4008702,
    pauseLen = 10,
    resumeLen = 5,
    tag = "StoryInMainPage",
    startCheckPause = false
}

local tbl = {}
local v = 5
tbl[1] = 5
tbl[2] = v
narratorWithId02.durationList = tbl
datas.NarratorWithId02 = narratorWithId02
Q40087ClientConfig.Datas = datas
return Q40087ClientConfig
