local Q77160ClientConfig = {
    MainID = 77160,
    ActorAlias = "77160",
    SubIDs = {
        q7716024 = 7716024,
        q7716023 = 7716023,
        q7716025 = 7716025,
        q7716026 = 7716026,
        q7716017 = 7716017,
        q7716018 = 7716018,
        q7716001 = 7716001,
        q7716002 = 7716002,
        q7716003 = 7716003,
        q7716004 = 7716004,
        q7716029 = 7716029,
        q7716030 = 7716030,
        q7716028 = 7716028,
        q7716027 = 7716027,
        q7716005 = 7716005,
        q7716031 = 7716031,
        q7716032 = 7716032,
        q7716006 = 7716006,
        q7716007 = 7716007,
        q7716008 = 7716008,
        q7716021 = 7716021,
        q7716009 = 7716009,
        q7716010 = 7716010,
        q7716019 = 7716019,
        q7716020 = 7716020,
        q7716011 = 7716011,
        q7716012 = 7716012,
        q7716013 = 7716013,
        q7716022 = 7716022,
        q7716014 = 7716014,
        q7716015 = 7716015,
        q7716016 = 7716016
    },
    Npcs = {
        Npc22287 = {
            id = 22287,
            alias = "Npc22287",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc22280 = {
            id = 22280,
            alias = "Npc22280",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc22279 = {
            id = 22279,
            alias = "Npc22279",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc22292 = {
            id = 22292,
            alias = "Npc22292",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        }
    },
    Points = {
        _Q7716003TriggerPoint_ = {pos = {x = 10429.88, y = 691.7602, z = 5565.774}, rot = {x = 0, y = 0, z = 0}},
        _Q7716004TriggerPoint_ = {pos = {x = 10436.46, y = 689.0703, z = 5560.766}, rot = {x = 0, y = 0, z = 0}},
        _Q7716027TriggerPoint_ = {
            pos = {x = 333.6721, y = -855.537, z = 980.0462},
            rot = {x = -5.336085E-8, y = 24.74554, z = 3.339354}
        },
        _Q7716005TriggerPoint_ = {pos = {x = 10405.52, y = 790.5689, z = 5515.006}, rot = {x = 0, y = 346.8664, z = 0}},
        _Q7716011TriggerPoint_ = {pos = {x = 10761.6, y = -605.418, z = 5584.598}, rot = {x = 0.0, y = 348.873, z = 0.0}}
    }
}

local datas = {}
local narratorWithId_7716018 = {narratorId = 7716018, tag = "StoryInMainPage", startCheckPause = true, resumeReminder = -1}
local durationList = {}
local n = 3
local v = 5
local n2 = 3
durationList[1] = 5
durationList[2] = n
durationList[3] = v
durationList[4] = n2
narratorWithId_7716018.durationList = durationList
datas.NarratorWithId_7716018 = narratorWithId_7716018

datas.PlayerEnterDungeonData = {
    textMapId = {"QUEST_Black_Clear"},
    useQuestLoadingPage = true,
    useWhiteScreen = false,
    loadCtxCloseDelay = 0,
    isUseQuestRelatedPoint = false
}

datas.TransmitData_2 = {
    textMapId = {"QUEST_Black_Clear"},
    textShowTime = 0.5,
    showBlackScreen = true,
    useWhiteScreen = false,
    disableTPAudio = true,
    loadCtxCloseDelay = 0,
    isKeepVehicle = false,
    interruptInteract = false
}

datas.ClientConfigVar = {
    textMapId = {"QUEST_Black_Clear"},
    textShowTime = 0,
    showBlackScreen = true,
    useWhiteScreen = false,
    disableTPAudio = true,
    loadCtxCloseDelay = 0,
    isKeepVehicle = false,
    interruptInteract = false
}

local narratorWithId_7716019 = {narratorId = 7716019, tag = "StoryInMainPage", startCheckPause = true, resumeReminder = -1}
local tbl = {}
local n3 = 4
local n4 = 5.5
tbl[1] = 3.5
tbl[2] = n3
tbl[3] = n4
narratorWithId_7716019.durationList = tbl
datas.NarratorWithId_7716019 = narratorWithId_7716019
Q77160ClientConfig.Datas = datas
return Q77160ClientConfig
