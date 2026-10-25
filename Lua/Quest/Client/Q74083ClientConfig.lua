local Q74083ClientConfig = {
    MainID = 74083,
    ActorAlias = "74083",
    SubIDs = {
        q7408301 = 7408301,
        q7408311 = 7408311,
        q7408316 = 7408316,
        q7408314 = 7408314,
        q7408308 = 7408308,
        q7408315 = 7408315,
        q7408317 = 7408317,
        q7408309 = 7408309,
        q7408310 = 7408310,
        q7408313 = 7408313,
        q7408305 = 7408305,
        q7408312 = 7408312,
        q7408306 = 7408306,
        q7408307 = 7408307
    },
    Npcs = {
        Npc21113Data = {
            id = 21113,
            alias = "Npc21113",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc5263Data = {
            id = 5263,
            alias = "Npc5263",
            script = "Actor/Npc/NpcFSMBehaviour",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        }
    },
    Points = {
        TPos_Q7408301EnterTriggerin = {pos = {x = 3802.592, y = 473.009, z = 3182.142}, rot = {x = 0.0, y = 0.0, z = 0.0}},
        TPos_Q7408311EnterTriggerin = {pos = {x = 3802.592, y = 473.009, z = 3182.142}, rot = {x = 0.0, y = 0.0, z = 0.0}},
        TPos_Q7408302EnterTriggerin = {pos = {x = 3802.592, y = 473.009, z = 3182.142}, rot = {x = 0.0, y = 0.0, z = 0.0}},
        TPos_Q7408305EnterTriggerin = {pos = {x = 3808.664, y = 415.21, z = 3176.544}, rot = {x = 0.0, y = 0.0, z = 0.0}},
        TPos_Q7408306EnterTriggerin = {pos = {x = 3808.65, y = 414.843, z = 3176.603}, rot = {x = 0.0, y = 0.0, z = 0.0}},
        TPos_Q7408313EnterTriggerin = {pos = {x = 3808.664, y = 415.21, z = 3176.544}, rot = {x = 0.0, y = 0.0, z = 0.0}},
        TPos_Q74083Trigger = {pos = {x = 3802.592, y = 473.009, z = 3182.142}, rot = {x = 0.0, y = 0.0, z = 0.0}}
    }
}

local datas = {}

local narratorWithId01 = {
    narratorId = 7408301,
    pauseLen = 10,
    resumeLen = 5,
    tag = "StoryInMainPage",
    startCheckPause = false
}

local durationList = {}
local n = 3
durationList[1] = 4
durationList[2] = n
narratorWithId01.durationList = durationList
datas.NarratorWithId01 = narratorWithId01

datas.NarratorWithId02 = {
    narratorId = 7408302,
    pauseLen = 10,
    resumeLen = 5,
    tag = "StoryInMainPage",
    startCheckPause = false,
    durationList = {3}
}

local narratorWithId03 = {
    narratorId = 7408303,
    pauseLen = 10,
    resumeLen = 5,
    tag = "StoryInMainPage",
    startCheckPause = false
}

local tbl = {}
local v = 3
tbl[1] = 3
tbl[2] = v
narratorWithId03.durationList = tbl
datas.NarratorWithId03 = narratorWithId03

datas.NarratorWithId08 = {
    narratorId = 7408304,
    pauseLen = 10,
    resumeLen = 5,
    tag = "StoryInMainPage",
    startCheckPause = false,
    durationList = {3}
}

datas.NarratorWithId06 = {
    narratorId = 7408306,
    pauseLen = 10,
    resumeLen = 5,
    tag = "StoryInMainPage",
    startCheckPause = false,
    durationList = {4}
}

datas.NarratorWithId = {
    narratorId = 7408305,
    pauseLen = 10,
    resumeLen = 5,
    tag = "StoryInMainPage",
    startCheckPause = false,
    durationList = {4}
}

local narratorWithId10 = {
    narratorId = 7408307,
    pauseLen = 10,
    resumeLen = 5,
    tag = "StoryInMainPage",
    startCheckPause = false
}

local durationList2 = {}
local n2 = 6
durationList2[1] = 8
durationList2[2] = n2
narratorWithId10.durationList = durationList2
datas.NarratorWithId10 = narratorWithId10

local narratorWithId11 = {
    narratorId = 7408308,
    pauseLen = 10,
    resumeLen = 5,
    tag = "StoryInMainPage",
    startCheckPause = false
}

local durationList3 = {}
local n3 = 5
durationList3[1] = 8
durationList3[2] = n3
narratorWithId11.durationList = durationList3
datas.NarratorWithId11 = narratorWithId11
Q74083ClientConfig.Datas = datas
return Q74083ClientConfig
