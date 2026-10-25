local Q40250ClientConfig = {
    MainID = 40250,
    ActorAlias = "40250",
    SubIDs = {
        q4025001 = 4025001,
        q4025008 = 4025008,
        q4025002 = 4025002,
        q4025010 = 4025010,
        q4025003 = 4025003,
        q4025004 = 4025004,
        q4025005 = 4025005,
        q4025009 = 4025009,
        q4025006 = 4025006,
        q4025007 = 4025007
    },
    Npcs = {
        Npc10045 = {
            id = 10045,
            alias = "Npc10045",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc1021 = {
            id = 1021,
            alias = "Npc1021",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc1041 = {
            id = 1041,
            alias = "Npc1041",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc1084 = {
            id = 1084,
            alias = "Npc1084",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc1093 = {
            id = 1093,
            alias = "Npc1093",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc17131 = {
            id = 17131,
            alias = "Npc17131",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc2114 = {
            id = 2114,
            alias = "Npc2114",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc2115 = {
            id = 2115,
            alias = "Npc2115",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        }
    }
}

local datas = {}
local instanceIDList = {}
local str = "50004"
instanceIDList[1] = "50003"
instanceIDList[2] = str
datas.InstanceIDList = instanceIDList
datas.NarratorWithId_4025001 = {narratorId = 4025001, tag = "StoryInMainPage", startCheckPause = true, resumeReminder = -1}

datas.__EmbedClientConfig_11 = {
    textMapId = {"QUEST_Black_Clear"},
    useQuestLoadingPage = true,
    useWhiteScreen = false,
    loadCtxCloseDelay = 2,
    isUseQuestRelatedPoint = false
}

datas.TransmitData_Black = {
    textMapId = {"QUEST_Black_Clear"},
    textShowTime = 0,
    showBlackScreen = true,
    useWhiteScreen = false,
    disableTPAudio = true,
    loadCtxCloseDelay = 0,
    isKeepVehicle = false,
    interruptInteract = false
}

Q40250ClientConfig.Datas = datas
return Q40250ClientConfig
