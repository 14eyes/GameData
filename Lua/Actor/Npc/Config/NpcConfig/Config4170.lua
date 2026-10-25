require("Actor/ActorCommon")
local NpcConfigCommon = require("Actor/Npc/Config/NpcConfigCommon")

local generalPattern = NpcConfigCommon.GeneralPattern
local dailyCondition = NpcConfigCommon.DailyCondition
local questState = NpcConfigCommon.QuestState
local actionPointType = NpcConfigCommon.ActionPointType
local compareOperation = NpcConfigCommon.CompareOperation
local focusToPlayerType = NpcConfigCommon.FocusToPlayerType
local reactEnableType = NpcConfigCommon.ReactEnableType
local reactEventType = NpcConfigCommon.ReactEventType
local actorMoveType = NpcConfigCommon.ActorMoveType
local Config4170 = {}

local data = {
    NpcId = "4170",
    Alias = "Npc4170",
    DailyScheduleData = {
        refreshDailyActionImmediately = true,
        {
            bornConfigId = 614170000,
            condition = {sceneId = 0, priority = 0},
            actionPoints = {
                {
                    dummypoint = {pos = {x = -397.32, y = 234.3834, z = 2798.83}, rot = {x = 0, y = -18.545, z = 0}},
                    freestyle = 1190,
                    lookAtType = focusToPlayerType.Ignore,
                    reactOnCollide = reactEnableType.Default,
                    reactOnBodyLang = reactEnableType.Default,
                    action = generalPattern.Stand
                }
            }
        },
        {
            bornConfigId = 614170001,
            condition = {sceneId = 0, priority = 0},
            actionPoints = {
                {
                    dummypoint = {pos = {x = -2833.267, y = 213.4089, z = 9059.056}, rot = {x = 0, y = 257.9715, z = 0}},
                    freestyle = 1230,
                    lookAtType = focusToPlayerType.Default,
                    reactOnCollide = reactEnableType.Default,
                    reactOnBodyLang = reactEnableType.Default,
                    action = generalPattern.Stand
                }
            }
        },
        {
            bornConfigId = 100018787,
            condition = {sceneId = 0, priority = 0},
            actionPoints = {
                {
                    dummypoint = {pos = {x = -1926.516, y = 202.5448, z = 2666.369}, rot = {x = 0, y = 315.5025, z = 0}},
                    freestyle = 4402,
                    lookAtType = focusToPlayerType.Ignore,
                    reactOnCollide = reactEnableType.Ignore,
                    reactOnBodyLang = reactEnableType.Ignore,
                    action = generalPattern.Stand
                }
            }
        }
    },
    TitleDataNew = {
        titleDatas = {
            {
                titleStr = "NPC_TITLE_4170",
                priority = 0,
                conditions = {{{_type_ = LuaVirtualType.NpcActionDayNightCondition, daily = dailyCondition.AllDay}}}
            }
        }
    }
}

local nahidaNarratorData = {}

local tbl = {
    validQuestIds = {0},
    priority = 10,
    dialogDataList = {{dialogId = 1018417000, duration = 0, intervalMin = 20, intervalMax = 30}}
}

local v = {
    validQuestIds = {0},
    priority = 201,
    dialogDataList = {{dialogId = 1018417001, duration = 0, intervalMin = 20, intervalMax = 30}}
}

local conditions = {}
local tbl2 = {}
local tbl3 = {_type_ = LuaVirtualType.NpcActionCommonCondition, condType = 43}
local paramList = {}
local n = 2043002
local n2 = 1
paramList[1] = 2043
paramList[2] = n
paramList[3] = n2
tbl3.paramList = paramList
local tbl4 = {_type_ = LuaVirtualType.NpcActionCommonCondition, condType = 1}
local paramList2 = {}
local n3 = 3
paramList2[1] = 7370503
paramList2[2] = n3
tbl4.paramList = paramList2
local tbl5 = {_type_ = LuaVirtualType.NpcActionCommonCondition, condType = 43}
local paramList3 = {}
local n4 = 5296001
local n5 = 0
paramList3[1] = 5296
paramList3[2] = n4
paramList3[3] = n5
tbl5.paramList = paramList3
tbl2[1] = tbl3
tbl2[2] = tbl4
tbl2[3] = tbl5
conditions[1] = tbl2
v.conditions = conditions
local tbl6 = {validQuestIds = {0}, priority = 202, disable = true, dialogDataList = {}}
local conditions2 = {}
local tbl7 = {}
local tbl8 = {_type_ = LuaVirtualType.NpcActionCommonCondition, condType = 43}
local paramList4 = {}
local n6 = 5296001
local n7 = 1
paramList4[1] = 5296
paramList4[2] = n6
paramList4[3] = n7
tbl8.paramList = paramList4
local tbl9 = {_type_ = LuaVirtualType.NpcActionCommonCondition, condType = 44}
local paramList5 = {}
local n8 = 1
paramList5[1] = 7650801
paramList5[2] = n8
tbl9.paramList = paramList5
tbl7[1] = tbl8
tbl7[2] = tbl9
conditions2[1] = tbl7
tbl6.conditions = conditions2
nahidaNarratorData[1] = tbl
nahidaNarratorData[2] = v
nahidaNarratorData[3] = tbl6
data.NahidaNarratorData = nahidaNarratorData
Config4170.Data = data
return Config4170
