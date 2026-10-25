local Q74202ClientConfig = {
    MainID = 74202,
    ActorAlias = "74202",
    IgnoreDoReturnNpcForDaily = true,
    SubIDs = {
        q7420201 = 7420201,
        q7420203 = 7420203,
        q7420208 = 7420208,
        q7420206 = 7420206,
        q7420207 = 7420207,
        q7420209 = 7420209,
        q7420205 = 7420205
    },
    Npcs = {
        PaimonData = {
            id = 1005,
            alias = "Paimon",
            script = "Actor/Quest/Q352/Paimon",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        }
    },
    Points = {
        TPos_Q7420201Trigger = {pos = {x = 1673.802, y = 185.254, z = 3954.15}, rot = {x = 0.0, y = 0.0, z = 0.0}},
        TPos_Q7420202Trigger = {pos = {x = 1594.888, y = 180.04, z = 3924.951}, rot = {x = 0.0, y = 0.0, z = 0.0}}
    }
}

local datas = {
    TextmapId = {"QUEST_Message_Q7420205 "},
    Narrator_742029901 = {
        narratorId = 742029901,
        pauseLen = 10,
        resumeLen = 5,
        tag = "StoryInMainPage",
        startCheckPause = false,
        durationList = {3}
    }
}

local narrator_742029911 = {
    narratorId = 742029911,
    pauseLen = 10,
    resumeLen = 5,
    tag = "StoryInMainPage",
    startCheckPause = false
}

local durationList = {}
local n = 3
durationList[1] = 3
durationList[2] = n
narrator_742029911.durationList = durationList
datas.Narrator_742029911 = narrator_742029911

datas.Narrator_742029921 = {
    narratorId = 742029921,
    pauseLen = 10,
    resumeLen = 5,
    tag = "StoryInMainPage",
    startCheckPause = false,
    durationList = {3}
}

Q74202ClientConfig.Datas = datas
return Q74202ClientConfig
