local Q74206ClientConfig = {
    MainID = 74206,
    ActorAlias = "74206",
    IgnoreDoReturnNpcForDaily = true,
    SubIDs = {
        q7420601 = 7420601,
        q7420611 = 7420611,
        q7420603 = 7420603,
        q7420613 = 7420613,
        q7420610 = 7420610,
        q7420612 = 7420612,
        q7420604 = 7420604,
        q7420609 = 7420609
    },
    Npcs = {
        PaimonData = {
            id = 1005,
            alias = "Paimon",
            script = "Actor/Quest/Q352/Paimon",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc21354Data = {
            id = 21354,
            alias = "Npc21354",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        }
    },
    Points = {
        TPos_Q7420602Trigger = {pos = {x = 1308.771, y = 201.477, z = 3861.076}, rot = {x = 0.0, y = 0.0, z = 0.0}},
        TPos_Q7420611Trigger = {pos = {x = 1277.257, y = 149.226, z = 3929.801}, rot = {x = 0.0, y = 0.0, z = 0.0}},
        TPos_Q7420601Trigger = {pos = {x = 1395.425, y = 135.397, z = 4006.052}, rot = {x = 0.0, y = 0.0, z = 0.0}}
    }
}

local datas = {
    TextmapId = {"QUEST_Message_Q7420605 "},
    TextmapId_01 = {"QUEST_Message_Q7420607 "},
    TextmapId_02 = {"QUEST_Message_Q7420609 "},
    Narrator_742069901 = {
        narratorId = 742069901,
        pauseLen = 10,
        resumeLen = 5,
        tag = "StoryInMainPage",
        startCheckPause = false,
        durationList = {3}
    }
}

local narrator_742069911 = {
    narratorId = 742069911,
    pauseLen = 10,
    resumeLen = 5,
    tag = "StoryInMainPage",
    startCheckPause = false
}

local durationList = {}
local n = 3
durationList[1] = 3
durationList[2] = n
narrator_742069911.durationList = durationList
datas.Narrator_742069911 = narrator_742069911

datas.Narrator_742069921 = {
    narratorId = 742069921,
    pauseLen = 10,
    resumeLen = 5,
    tag = "StoryInMainPage",
    startCheckPause = false,
    durationList = {3}
}

Q74206ClientConfig.Datas = datas
return Q74206ClientConfig
