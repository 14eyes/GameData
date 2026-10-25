local Q71115ClientConfig = {
    MainID = 71115,
    ActorAlias = "71115",
    IgnoreDoReturnNpcForDaily = true,
    SubIDs = {
        q7111501 = 7111501,
        q7111503 = 7111503,
        q7111502 = 7111502,
        q7111504 = 7111504,
        q7111518 = 7111518,
        q7111505 = 7111505,
        q7111506 = 7111506,
        q7111507 = 7111507,
        q7111508 = 7111508,
        q7111509 = 7111509,
        q7111510 = 7111510,
        q7111517 = 7111517,
        q7111511 = 7111511,
        q7111512 = 7111512,
        q7111513 = 7111513,
        q7111514 = 7111514,
        q7111515 = 7111515,
        q7111516 = 7111516
    },
    Npcs = {
        Npc21344Data = {
            id = 21344,
            alias = "Npc21344",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        }
    },
    Points = {
        TPos_Q7111502Trigger = {pos = {x = 1574.057, y = 176.315, z = 1794.904}, rot = {x = 0.0, y = 317.3, z = 0.0}},
        TPos_Q7111511Trigger = {pos = {x = 1566.918, y = 176.367, z = 1793.507}, rot = {x = 0.0, y = 290.556, z = 0.0}},
        TPos_Q7111514Trigger = {pos = {x = 1585.781, y = 220.6, z = 1521.181}, rot = {x = 0.0, y = 273.719, z = 0.0}},
        TPos_Q7111503Trigger = {pos = {x = 1566.45, y = 176.323, z = 1793.46}, rot = {x = 0.0, y = 0.0, z = 0.0}},
        TPos_Q7111512Trigger = {pos = {x = 1564.785, y = 176.775, z = 1791.793}, rot = {x = 0.0, y = 0.0, z = 0.0}}
    }
}

local datas = {}

local narrator_711159904 = {
    narratorId = 711159904,
    pauseLen = 10,
    resumeLen = 5,
    tag = "StoryInMainPage",
    startCheckPause = false
}

local durationList = {}
local n = 3
local v = 3
durationList[1] = 3
durationList[2] = n
durationList[3] = v
narrator_711159904.durationList = durationList
datas.Narrator_711159904 = narrator_711159904

local narrator_711159910 = {
    narratorId = 711159910,
    pauseLen = 10,
    resumeLen = 5,
    tag = "StoryInMainPage",
    startCheckPause = false
}

local tbl = {}
local n2 = 3
tbl[1] = 3
tbl[2] = n2
narrator_711159910.durationList = tbl
datas.Narrator_711159910 = narrator_711159910
local narrator_7111514 = {narratorId = 7111514, tag = "StoryInMainPage", startCheckPause = true, resumeReminder = -1}
local durationList2 = {}
local n3 = 3
durationList2[1] = 3
durationList2[2] = n3
narrator_7111514.durationList = durationList2
datas.Narrator_7111514 = narrator_7111514
Q71115ClientConfig.Datas = datas
return Q71115ClientConfig
