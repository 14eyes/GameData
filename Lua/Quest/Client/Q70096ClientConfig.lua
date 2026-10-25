local Q70096ClientConfig = {
    MainID = 70096,
    ActorAlias = "70096",
    SubIDs = {
        q7009601 = 7009601,
        q7009602 = 7009602,
        q7009603 = 7009603,
        q7009609 = 7009609,
        q7009604 = 7009604,
        q7009607 = 7009607,
        q7009608 = 7009608,
        q7009605 = 7009605,
        q7009606 = 7009606
    },
    Npcs = {
        Npc1326 = {
            id = 1326,
            alias = "Npc1326",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc7080 = {
            id = 7080,
            alias = "Npc7080",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc7605 = {
            id = 7605,
            alias = "Npc7605",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc1312 = {
            id = 1312,
            alias = "Npc1312",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc1313 = {
            id = 1313,
            alias = "Npc1313",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc1320 = {
            id = 1320,
            alias = "Npc1320",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc1322 = {
            id = 1322,
            alias = "Npc1322",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc1326_1 = {
            id = 1326,
            alias = "Npc1326",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        }
    },
    Points = {
        _Q7009609TriggerPoint_ = {pos = {x = 2706.623, y = 249.598, z = -332.511}, rot = {x = 0.0, y = 237.61, z = 0.0}},
        _Q7009606TriggerPoint_ = {pos = {x = 2561.517, y = 225.946, z = 99.931}, rot = {x = 0.0, y = 246.101, z = 0.0}}
    }
}

local datas = {}
local instanceIDList_1 = {}
local str = "40007"
local v = "40008"
local str2 = "40012"
instanceIDList_1[1] = "40006"
instanceIDList_1[2] = str
instanceIDList_1[3] = v
instanceIDList_1[4] = str2
datas.InstanceIDList_1 = instanceIDList_1
local instanceIDList = {}
local str3 = "100005"
local str4 = "100006"
local str5 = "100011"
local str6 = "100012"
local str7 = "100013"
instanceIDList[1] = "100004"
instanceIDList[2] = str3
instanceIDList[3] = str4
instanceIDList[4] = str5
instanceIDList[5] = str6
instanceIDList[6] = str7
datas.InstanceIDList = instanceIDList

datas.Dungeon20369 = {
    textMapId = {"QUEST_Black_Clear"},
    useQuestLoadingPage = true,
    useWhiteScreen = false,
    loadCtxCloseDelay = 0,
    isUseQuestRelatedPoint = false
}

datas.NarratorWithId_700960901 = {narratorId = 700960901, tag = "StoryInMainPage", startCheckPause = true, resumeReminder = -1}

datas.Q7009605Transmit = {
    textMapId = {"QUEST_Black_Clear"},
    useQuestLoadingPage = true,
    useWhiteScreen = false,
    loadCtxCloseDelay = 0,
    isUseQuestRelatedPoint = false
}

datas.QuestOrphanNpcPlaceList_1 = {30070736}
Q70096ClientConfig.Datas = datas
return Q70096ClientConfig
