local Q71163ClientConfig = {
    MainID = 71163,
    ActorAlias = "71163",
    SubIDs = {q7116301 = 7116301, q7116302 = 7116302, q7116304 = 7116304, q7116303 = 7116303},
    Npcs = {
        Npc1323 = {
            id = 1323,
            alias = "Npc1323",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc1323_1 = {
            id = 1323,
            alias = "Npc1323",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        }
    },
    Points = {
        _Q7116303TriggerPoint_ = {pos = {x = 1935.08, y = 277.28, z = 1401.888}, rot = {x = 0.0, y = 45.553, z = 0.0}}
    }
}

local datas = {}
local instanceIDList = {}
local str = "40002"
instanceIDList[1] = "40001"
instanceIDList[2] = str
datas.InstanceIDList = instanceIDList
datas.NarratorWithId7116301 = {narratorId = 7116301, tag = "StoryInMainPage", startCheckPause = true, resumeReminder = -1}

datas.TransmitData01 = {
    textMapId = {"QUEST_Black_Clear"},
    prefabPath = "ART/UI/Menus/Dialog/LanV6PlotLoadingDialog",
    loadCtxCloseDelay = 3,
    disableTPAudio = false,
    isKeepVehicle = false,
    interruptInteract = false
}

datas.TransmitData02 = {
    textMapId = {"QUEST_Black_Clear"},
    prefabPath = "ART/UI/Menus/Dialog/LanV6PlotLoadingDialog",
    loadCtxCloseDelay = 0,
    disableTPAudio = false,
    isKeepVehicle = false,
    interruptInteract = false
}

Q71163ClientConfig.Datas = datas
return Q71163ClientConfig
