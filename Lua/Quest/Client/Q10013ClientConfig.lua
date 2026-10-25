local Q10013ClientConfig = {
    MainID = 10013,
    ActorAlias = "10013",
    SubIDs = {
        q1001301 = 1001301,
        q1001302 = 1001302,
        q1001303 = 1001303,
        q1001304 = 1001304,
        q1001305 = 1001305,
        q1001306 = 1001306,
        q1001307 = 1001307,
        q1001308 = 1001308,
        q1001309 = 1001309,
        q1001310 = 1001310,
        q1001311 = 1001311,
        q1001312 = 1001312,
        q1001313 = 1001313
    },
    Npcs = {
        Diluc = {
            id = 1009,
            alias = "Diluc",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc16719 = {
            id = 16719,
            alias = "Npc16719",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc16720 = {
            id = 16720,
            alias = "Npc16720",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc16721 = {
            id = 16721,
            alias = "Npc16721",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc1326 = {
            id = 1326,
            alias = "Npc1326",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        }
    },
    Points = {
        _Q1001303TriggerPoint_ = {pos = {x = 2893.198, y = 203.5229, z = -270.6628}, rot = {x = 0, y = 0, z = 0}},
        _Q1001305TriggerPoint_ = {pos = {x = 353.1455, y = 151.7283, z = 531.8571}, rot = {x = 0, y = 0, z = 0}},
        _Q1001307TriggerPoint_ = {pos = {x = 443.7641, y = 146.2065, z = 644.1631}, rot = {x = 0, y = 0, z = 0}},
        _Q1001313TriggerPoint_ = {pos = {x = 704.0318, y = 141.7, z = 841.5837}, rot = {x = 0, y = 0, z = 0}}
    }
}

local datas = {}
local instanceIDList_1 = {}
local str = "210003"
instanceIDList_1[1] = "210002"
instanceIDList_1[2] = str
datas.InstanceIDList_1 = instanceIDList_1

datas.TransmitData_1001305 = {
    textMapId = {"QUEST_Black_Clear"},
    textShowTime = 0,
    showBlackScreen = true,
    useWhiteScreen = false,
    disableTPAudio = true,
    loadCtxCloseDelay = 0,
    isKeepVehicle = false,
    interruptInteract = false
}

datas.PlayerEnterDungeonData = {
    textMapId = {"QUEST_Black_Clear"},
    useQuestLoadingPage = true,
    useWhiteScreen = false,
    loadCtxCloseDelay = 0,
    isUseQuestRelatedPoint = false
}

datas.NarratorWithId_1001307 = {narratorId = 1001301, tag = "StoryInMainPage", startCheckPause = true, resumeReminder = -1}

datas.TransmitData_1001313 = {
    dialogId = {100131217},
    textShowTime = 0,
    showBlackScreen = true,
    useWhiteScreen = false,
    disableTPAudio = true,
    loadCtxCloseDelay = 0,
    isKeepVehicle = false,
    interruptInteract = false
}

Q10013ClientConfig.Datas = datas
return Q10013ClientConfig
