local Q6012ClientConfig = {
    MainID = 6012,
    ActorAlias = "6012",
    SubIDs = {
        q601201 = 601201,
        q601209 = 601209,
        q601202 = 601202,
        q601204 = 601204,
        q601210 = 601210,
        q601206 = 601206,
        q601207 = 601207,
        q601212 = 601212,
        q601208 = 601208,
        q601211 = 601211,
        q601205 = 601205,
        q601203 = 601203
    },
    Npcs = {
        Npc15712 = {
            id = 15712,
            alias = "Npc15712",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc1314 = {
            id = 1314,
            alias = "Npc1314",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc7129 = {
            id = 7129,
            alias = "Npc7129",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc7130 = {
            id = 7130,
            alias = "Npc7130",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc7131 = {
            id = 7131,
            alias = "Npc7131",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc7132 = {
            id = 7132,
            alias = "Npc7132",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc1315 = {
            id = 1315,
            alias = "Npc1315",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc1317 = {
            id = 1317,
            alias = "Npc1317",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc1310 = {
            id = 1310,
            alias = "Npc1310",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc1314_1 = {
            id = 1314,
            alias = "Npc1314",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc1316 = {
            id = 1316,
            alias = "Npc1316",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        }
    },
    Points = {
        _Q601211TriggerPoint_ = {pos = {x = -18.752, y = -3.249, z = 2.551}, rot = {x = 0.0, y = 120.237, z = 0.0}},
        _Q601205TriggerPoint_ = {pos = {x = 1871.827, y = 200.161, z = 10844.78}, rot = {x = 0.0, y = 273.881, z = 0.0}}
    }
}

local datas = {
    TransmitDataBlackScreen = {
        textMapId = {"QUEST_Black_Clear"},
        textShowTime = 2,
        showBlackScreen = true,
        useWhiteScreen = false,
        disableTPAudio = true,
        loadCtxCloseDelay = 0,
        isKeepVehicle = false
    }
}

local stringList = {}
local str = "10"
stringList[1] = "10"
stringList[2] = str
datas.StringList = stringList

datas.PlayerEnterDungeonSpecial01 = {
    textMapId = {"QUEST_Black_Clear"},
    useQuestLoadingPage = true,
    prefabPath = "ART/UI/Menus/Dialog/VarkaDialog_Loading",
    loadCtxTag = "VarkaDialog_p1",
    loadCtxCloseDelay = 0,
    isUseQuestRelatedPoint = false
}

Q6012ClientConfig.Datas = datas
return Q6012ClientConfig
