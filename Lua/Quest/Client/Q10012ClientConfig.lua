local Q10012ClientConfig = {
    MainID = 10012,
    ActorAlias = "10012",
    SubIDs = {q1001201 = 1001201, q1001202 = 1001202, q1001203 = 1001203, q1001204 = 1001204, q1001205 = 1001205},
    Npcs = {
        Npc16498 = {
            id = 16498,
            alias = "Npc16498",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Diluc = {
            id = 1009,
            alias = "Diluc",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc1326 = {
            id = 1326,
            alias = "Npc1326",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc1310 = {
            id = 1310,
            alias = "Npc1310",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        }
    }
}

local datas = {}
local instanceIDList = {}
local str = "20002"
instanceIDList[1] = "20001"
instanceIDList[2] = str
datas.InstanceIDList = instanceIDList
datas.NarratorWithId_1001201 = {narratorId = 1001201, tag = "StoryInMainPage", startCheckPause = true, resumeReminder = -1}

datas.TransmitData_1001203 = {
    textMapId = {"QUEST_Black_Clear"},
    textShowTime = 0,
    showBlackScreen = true,
    useWhiteScreen = false,
    disableTPAudio = false,
    loadCtxCloseDelay = 0,
    isKeepVehicle = false,
    interruptInteract = false
}

datas.TransmitData_1001204 = {
    textMapId = {"QUEST_Black_Clear"},
    textShowTime = 0,
    showBlackScreen = true,
    useWhiteScreen = false,
    disableTPAudio = true,
    loadCtxCloseDelay = 0,
    isKeepVehicle = false,
    interruptInteract = false
}

datas.NarratorWithId_1001203 = {narratorId = 1001202, tag = "StoryInMainPage", startCheckPause = true, resumeReminder = -1}
Q10012ClientConfig.Datas = datas
return Q10012ClientConfig
